<!DOCTYPE html>
<html lang="en">

<head>
    <title>Pharmacy management system </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Phoenixcoded">
    <meta name="keywords" content=", Flat ui, Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="Phoenixcoded">
    <!-- Favicon icon -->

    <link rel="icon" href="{{asset('images/backend_images/favicon.ico')}}" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/backend_css/bootstrap.min.css')}}">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/backend_css/themify-icons/themify-icons.css')}}">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/backend_css/ico-fonts/css/icofont.css')}}">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="{{asset('css/backend_css/style.css')}}">
</head>

<body class="menu-static">
    <section class="login p-fixed d-flex text-center bg-primary common-img-bg" >
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <!-- Authentication card start -->
                    <div class="login-card card-block auth-body">
                        <form id="loginForm" class="md-float-material" method="post" action="{{route('redi')}}">
                            @csrf
                            <!-- <div class="text-center">
                                <img src="{{asset('images/backend_images/invoice_logo2.png')}}" alt="logo.png">
                            </div> -->
                            <div class="auth-box">
                                @if(Session::has('flash_message_error'))
                                    <div class="alert alert-danger background-danger">
                                        <button type="button" class="close" data-dismiss="alert">x</button>
                                        <strong>{!! session('flash_message_error')!!}</strong>
                                    </div>
                                @endif
                                @if(session()->has('status'))
                                    {!! session()->get('status') !!}
                                 @endif
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-left txt-primary">Update Password</h3>
                                    </div>
                                </div>
                                <hr/>
                                <div class="input-group">
                                    <input type="password" name="newpassword" class="form-control" placeholder="Password" required autofocus autocomplete="off">
                                    <span class="md-line"></span>
                                </div>
                                <div class="input-group">
                                    <input type="password" name="confirmpassword" class="form-control" placeholder="Confirmed Password" required autofocus>
                                    <span class="md-line"></span>
                                </div>

                                <div class="row m-t-30">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Save</button>
                                    </div>
                                </div>


                            </div>
                        </form>
                        <!-- end of form -->
                    </div>
                    <!-- Authentication card end -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
    <!-- Warning Section Starts -->
    <!-- Required Jquery -->
    <script type="text/javascript" src="{{asset('js/backend_js/jquery/dist/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/backend_js/jquery-ui/jquery-ui.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/backend_js/tether/dist/js/tether.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/backend_js/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="{{asset('js/backend_js/jquery-slimscroll/jquery.slimscroll.js')}}"></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="{{asset('js/backend_js/modernizr/modernizr.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/backend_js/modernizr/feature-detects/css-scrollbars.js')}}"></script>
    <!-- i18next.min.js -->
    <script type="text/javascript" src="{{asset('js/backend_js/i18next/i18next.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/backend_js/i18next-xhr-backend/i18nextXHRBackend.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/backend_js/i18next-browser-languagedetector/i18nextBrowserLanguageDetector.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/backend_js/jquery-i18next/jquery-i18next.min.js')}}"></script>
    <!-- Custom js -->
    <script type="text/javascript" src="{{asset('js/backend_js/script.js')}}"></script>
</body>

</html>
