<%-- 
    Document   : login
    Created on : 08/02/2018, 01:22:52 PM
    Author     : emoreno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FUENTE: https://bootsnipp.com/snippets/bpKOW</title>
        
        <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
        
        <script src="resources/js/jquery-3.2.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>

        <style>


            @import url("https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
            body{
                overflow-x: hidden;
                margin: 0;
                padding: 0;
            }
            video { 
                position: absolute;
                top: 0%;
                left: 0%;
                bottom: 0%;
                min-width: 100vw;
                max-height: 685px;
                margin: 0 !important;
                padding: 0 !important;
                width: 100vw;
                height: 685px;
                z-index: -100;
                transform: translateX(0%) translateY(0%);
                background: url('#') no-repeat;
                background-size: cover;
                transition: 1s opacity;
                overflow: hidden;
            }
            .logo{
                position: absolute;
                width: 200px;
                margin: -12px 0px 0px -12px;
                padding: 0px
            }
            .headText{
                font-family: Agenda-Light, Agenda Light, Agenda, Arial Narrow, sans-serif;
                font-weight:100; 
                margin: 15% auto 0 5%;
                color: white;
            }
            .headText h1:before{
                font-family: FontAwesome;
                content: "\f18c";
                color: green;
                margin: 5px;
            }
            .headText h1:after{
                font-family: FontAwesome;
                content: "\f18c";
                color: green;
                margin: 5px;
            }

            #polina { 
                font-family: Agenda-Light, Agenda Light, Agenda, Arial Narrow, sans-serif;
                font-weight:100; 
                background: rgba(0,0,0,0.7);
                color: white;
                padding: 2%;
                width: 31%;
                margin: 3% 5% 5% auto;
                float: right;
            }
            .btn-facebook{
                background-color: #3b5998;
                color: #fff;
            }
            .btn-facebook:hover{
                background-color: #fff;
                color: #3b5998;
            }
            .btn-google{
                background-color: #c23321;
                color: #fff;
            }
            .btn-google:hover{
                background-color: #fff;
                color: #c23321;
            }

            @media screen and (max-width: 500px) { 
                #polina{
                    width:90%;
                    margin-top: -50% !important;
                } 
                video{
                    display: none;
                }
            }
            @media screen and (max-device-width: 800px) {
                #bgvid { display: none; }
            }


        </style>



    </head>
    <body>
        <div class="container-fluid">
            <div class="container-fluid video">
                <video poster="#" id="bgvid" playsinline autoplay muted loop>
                    <!-- -->
                    <source src="https://drive.google.com/uc?export=download&id=0B-ldJJbw0AnkTmZCT0E1S0pwZFk" type="video/mp4">
                </video>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="logo text-center">
                        <a href="index.html"><h1>Company</h1></a>
                    </div>
                    <div class="headText text-center col-sm-6">
                        <h1>Selling Online Was Never So Easy</h1>
                    </div>
                    <div id="polina" class="col-sm-6">
                        <h4 class="text-center">Register as a New Seller</h4>
                        <div class="social text-center">
                            <div class="row">
                                <div class="col-sm-6">
                                    <a class="btn btn-block btn-social btn-facebook" onclick="_gaq.push(['_trackEvent', 'btn-social', 'click', 'btn-facebook']);">
                                        <span class="fa fa-facebook"></span> Sign Up
                                    </a>
                                </div>
                                <div class="col-sm-6">
                                    <a class="btn btn-block btn-social btn-google" onclick="_gaq.push(['_trackEvent', 'btn-social', 'click', 'btn-google']);">
                                        <span class="fa fa-google"></span> Sign up
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <h5>OR</h5>
                        </div>
                        <form class="form-horizontal">
                            <div class="form-group has-success has-feedback">
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" id="inputSuccess" placeholder="Full Name" required>
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                </div>
                            </div>
                            <div class="form-group has-success has-feedback">
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" id="inputSuccess" placeholder="Email" required>
                                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                                </div>
                            </div>
                            <div class="form-group has-success has-feedback">
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" id="inputSuccess" placeholder="Mobile Number" required>
                                    <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                                </div>
                            </div>
                            <div class="form-group has-success has-feedback">
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" id="inputSuccess" placeholder="Password" required>
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                </div>
                            </div>
                            <div class="text-center">
                                <p class="text-center">By signing up, you agree to our <a href="#">T&C</a> and <a href="#">privacy policy</a></p>
                                <button type="button" class="btn sellBtn btn-success">START SELLING</button>
                            </div>
                        </form>
                        <br>
                        <div class="text-right">
                            <p>Already Registered?<a href="#"> Login Here </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
