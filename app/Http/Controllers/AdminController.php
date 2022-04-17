<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Auth;
use Session;
use App\User;
use App\Medicine;
use App\Category;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;
use Image;
use DB;
use Excel;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Validator;
use Carbon;
use Illuminate\Support\Str;
use App\Mail\ForgotPassword;

class AdminController extends Controller
{
	/*login page function*/
	public function loginPage(){
		return view('admin.admin_login');
	}
    /*login  function*/
    public function login(Request $request){
    	if ($request->isMethod('post')) {
    		$data = $request->input();
    		if(Auth::attempt(['email'=>$data['email'], 'password' =>$data['password'],'status'=>'Active'])){
    			return redirect('admin/dashboard');
    		} else{
    			return redirect('/admin')->with('flash_message_error','Invalid Username Or Password or Inactive Users!!!!');
    		}
    	}
    	return view('admin.admin_login');
    }
    /*forgot password */
    public function forgot_password(Request $request){
        if ($request->isMethod('post')){
                $validator = Validator::make($request->all(), [
                    'email' => 'required',
                ]);
                if ($validator->fails()) {
                    return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
                }
                $url = URL::to('/');
                $length = strpos($url, '/', 8);
                $domainName = substr($url, 0, $length);
                $data = $request->all();
                $users = User::all()->toArray();
//            dd(Str::random(120));
//                 return $users;
                foreach($users as $user ){
                    if ($user['email'] === $data['email']) {
                        $input_array = [
                            'email' => $data['email'],
                            'token' => Str::random(120),
                            'created_at' => Carbon\Carbon::now()->addHours(6)
                        ];
                        $insert = DB::table('password_resets')
                            ->insert($input_array);
                        if($insert){
                            // return 'hi';
                            Mail::to( $data['email'])->send(new ForgotPassword($url."/reset-password/".$input_array['token']));
//                            return ($url."/reset-password/".$input_array['token']);
                            $status = '<div class="alert alert-success"> Send email.</div>';

                            return redirect()->back()->with('status', $status)->withInput();
                        }

                        $status = '<div class="alert alert-danger">Faield to send email.</div>';

                        return redirect()->back()->with('status', $status)->withInput();
                    }
                }
                $status = '<div class="alert alert-danger">Your email is incorrect.</div>';
                return redirect()->back()->with('status', $status)->withInput();
        }
        return view('admin.forgot_password');
    }

    # reset method
    public  function redi(Request $request){
        if ($request->isMethod('post')){
            $data = $request->all();
            $validator = Validator::make($data,[
                'newpassword' => 'required|min:6',
                'confirmpassword' => 'required|same:newpassword|min:6',
            ]);
//            return $data;

            $url = $request->post('token');
            $len = strpos($url, 'reset-password/');
            $token = substr($url, ($len + 15));
            $validToken =  DB::table("password_resets")->select('email')->where('token', $token)
                ->pluck('email');
            if(!empty($validToken)){
                $result = User::where('email', $validToken)
                    ->update(['password' => Hash::make($data['confirmpassword'])]);

                if( $result ){
                    DB::table("password_resets")
                        ->updateOrInsert(
                            ['email' => $validToken],
                            ['token' => ""]
                        );
                    return redirect('/');
                }else{
                    return redirect()->back()->withInput();
                }
            }
            return redirect()->back();
        }
    }

    public function reset_password(){

        return view('admin.reset_password');
    }




    /*admin dashboard*/
    public function dashboard(){
        $user_name = Auth::user()->name;

        $all_medicines = DB::table('medicines')->where('status', 'Active')->get();
        $counted_medicine = count($all_medicines);

        $all_staffs = DB::table('users')->where('user_type_id',2)->where('status','Active')->get();
        $counted_staff = count($all_staffs);

        //get all sales today
        $records = DB::table('orders')
                       ->select(DB::raw('*'))
                       ->where(['status'=>'Active'])
                       ->whereRaw('Date(created_at) = CURDATE()')
                       ->get();
        if (sizeof($records) > 0){
            $total = 0 ;
            $discount = 0;
            foreach ($records as $record){
                $total += $record->total;
                $discount += $record->discount;
            }

            $total_sales = $total - $discount;
        }else{
            $total_sales = 0;
        }
        //get all returns today
        $records = DB::table('returns')
                       ->select(DB::raw('*'))
                       ->where(['status'=>'Active'])
                       ->whereRaw('Date(created_at) = CURDATE()')
                       ->get();
        if (sizeof($records) > 0){
            $total = 0 ;
            $discount = 0;
            foreach ($records as $record){
                $total += $record->total;
                $discount += $record->return_charge;
            }

            $total_returns = $total - $discount;
        }else{
            $total_returns = 0;
        }


        //get todays expense
        $expenses = DB::table('expenses')
                        ->select(DB::raw('expense'))
                        ->where(['status'=>'Active'])
                        ->whereRaw('Date(created_at) = CURDATE()')
                        ->get();
        if (sizeof($expenses) > 0){
            $total_expense = 0;
            foreach ($expenses as $expense){
                $total_expense +=$expense->expense;
            }
        }else{
            $total_expense = 0;
        }

        //get stock alert data
        $alert_data = DB::table('medicines')
                        ->select(DB::raw('*'))
                        ->where(['status'=>'Active'])
                        ->whereRaw('stock_alert > quantity')
                        ->get();
        if (sizeof($alert_data) > 0){
            $out_of_stock = count($alert_data);
        }else{
            $out_of_stock = 0;
        }


    	return view('admin.dashboard')->with(compact('counted_medicine','user_name','counted_staff','total_sales','total_expense','out_of_stock','total_returns'));
    }

    /*admin dashboard*/
    public function settings(){
        return view('admin.settings');
    }

    /*user profile*/
    public function user_profile(){
        $id = Auth::user()->id;
        $user_details = User::where(['id'=>$id])->first();
        return view('admin.profile')->with(compact('user_details'));
    }

    /*update user profile*/
    public function updateProfile(Request $request){
        if($request->isMethod('post')){
            $validatedData = $request->validate([
                'name' => 'required',
                'email' => 'required|email',
                'current_password' => 'required',
                'new_password' => 'required|alpha_dash|min:6'
            ]);
            $data = $request->all();

            $user_details = User::where(['id'=>Auth::user()->id])->first();
            $id = $user_details->id;
            $user_name = $data['name'];
            $user_email = $data['email'];
            $user_address = $data['address'];
            $user_phone = $data['phone'];

            if($request->hasFile('image')){
                //check image path
                $image_tmp = Input::file('image');
                if($image_tmp->isValid()){
                    $extension = $image_tmp->getClientOriginalExtension();
                    $filename  = rand(111,99999).'.'.$extension;

                    $large_image_path = 'images/backend_images/users/large/'.$filename;
                    $small_image_path = 'images/backend_images/users/small/'.$filename;

                    // Resize images
                    Image::make($image_tmp)->save($large_image_path);
                    Image::make($image_tmp)->resize(128,128)->save($small_image_path);
                }
            } else if(!empty($data['current_image'])){
                    $filename = $data['current_image'];
            } else {
                    $filename = '';
            }

            $current_password = $data['current_password'];
            $new_password = $data['new_password'];
            if(Hash::check($current_password,$user_details->password)){
                $password = bcrypt($data['new_password']);
                User::where('id',$id)->update(['name'=>$user_name,'email'=>$user_email,'address'=>$user_address,'phone'=>$user_phone,'image'=>$filename,'password'=>$password]);
                return redirect()->back()->with('flash_message_success','Profile updated successfully');
            }else{
                return redirect('admin/user_profile')->with('flash_message_error','Invalid current password');
            }
        }
    }


    /*logout function*/
    public function logout(){
    	Session::flush();
    	return redirect('/admin')->with('flash_message_success','Logged out successfully !!!!');
    }

    /**
     * method for sales report
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function sales_report(Request $request){
        if ($request->isMethod('post')){
            $selected_date = $request->input('datepicker');
            $arr = explode("-", $selected_date);

            $date_start = $arr[0];
            $date_end = $arr[1];

            $start = date("Y-m-d", strtotime($date_start));
            $end = date("Y-m-d", strtotime($date_end));

            $sales_report = DB::table('orders')
                            ->select('*')
                            ->whereBetween('created_at', [$start." 00:00:00", $end." 23:59:59"])
                            ->get();

                            // return $sales_report;
        return view('admin.reports.sales_report')->with(compact('sales_report'));
        }
        return view('admin.reports.sales_report');

    }
    /**
     * method for return report
     *
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function returns_report(Request $request){
        if ($request->isMethod('post')){
            $selected_date = $request->input('datepicker');
            $arr = explode("-", $selected_date);

            $date_start = $arr[0];
            $date_end = $arr[1];

            $start = date("Y-m-d", strtotime($date_start));
            $end = date("Y-m-d", strtotime($date_end));

            $returns_report = DB::table('returns')
                            ->select('*')
                            ->whereBetween('created_at', [$start." 00:00:00", $end." 23:59:59"])
                            ->get();
        return view('admin.reports.return_report')->with(compact('returns_report'));
        }
        return view('admin.reports.return_report');

    }

    /**
     * method for stock alert
     */
    public function out_of_stock(){
        $alert_data = DB::table('medicines')
                          ->select(DB::raw('*'))
                          ->where(['status'=>'Active'])
                          ->whereRaw('stock_alert > quantity')
                          ->get();
        return view('admin.reports.stock_alert')->with(compact('alert_data'));
    }

    /**
     * method for export sales report
     */
    public function export_sales_report(){
        $sales_report = DB::table('orders')
                            ->select('*')
                            ->get();

        $sales_array[] = array('Invoice ID','Customer Name','Total', 'Discount','Sales Date');

        foreach ($sales_report as $item) {
            $customer_details = unserialize($item->customer_details);

            $sales_array[] = array(
                'Invoice ID' => $item->id,
                'Customer Name' => $customer_details['customer_name'],
                'Total' => $item->total,
                'Discount' => $item->discount,
                'Sales Date' => date('d M Y', strtotime($item->created_at))
            );

        }
        //create excel
        Excel::create('Sales Report', function($excel) use($sales_array) {
            $excel->sheet('Sales Report', function($sheet) use($sales_array) {
                $sheet->fromArray($sales_array);
            });
        })->download('xls');

    }
    /**
     * method for export sales report
     */
    public function export_returns_report(){
        $sales_report = DB::table('returns')
                            ->select('*')
                            ->get();

        $sales_array[] = array('Invoice ID','Customer Name','Total', 'Discount','Sales Date');

        foreach ($sales_report as $item) {
            $customer_details = unserialize($item->customer_details);

            $sales_array[] = array(
                'Invoice ID' => $item->inventory_id,
                'Customer Name' => $customer_details['customer_name'],
                'Total' => $item->total,
                'Return Charge' => $item->return_charge,
                'Sales Date' => date('d M Y', strtotime($item->created_at))
            );

        }
        //create excel
        Excel::create('Returns Report', function($excel) use($sales_array) {
            $excel->sheet('Returns Report', function($sheet) use($sales_array) {
                $sheet->fromArray($sales_array);
            });
        })->download('xls');

    }
}
