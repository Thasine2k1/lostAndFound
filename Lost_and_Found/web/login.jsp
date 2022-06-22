<%-- 
    Document   : login
    Created on : Jun 17, 2022, 1:24:59 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/login.css">
        <title>Document</title>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div id="first">
                        <div class="myform form ">
                            <div class="logo mb-3">
                                <div class="col-md-12 text-center">
                                    <h1>Login</h1>
                                </div>
                            </div>
                            <br>
                            <div class="imgLogin col-md-12 text-center">
                                <img src="assets/img/logo2.png" alt="">
                            </div>
                            <br>
                            <form action="LoginGoogleServler" method="post" name="code">
                                <div class="col-md-12 mb-3">
                                    <p class="text-center">
                                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile&redirect_uri=http://localhost:8080/Lost_and_Found/LoginGoogleServlet&response_type=code
                                           &client_id=171987416950-24b6qtrqij1dmk3kke94nqi6ufp5g8in.apps.googleusercontent.com&approval_prompt=force" class="google btn mybtn"><i class="fa fa-google-plus">
                                            </i> Login with @fpt.edu.vn
                                        </a>
                                    </p>
                                </div>
                                <div class="form-group">
                                    <p class="text-center">Please login with FPT mail  <a href="#" id="signup"> @fpt.edu.vn</a></p>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
