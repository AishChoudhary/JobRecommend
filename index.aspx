<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JobRecommend.index" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="mystyle.css">
    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <title>JobRecommender</title>
</head>
<body>
    
<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container" style="font-family: 'Arial Black'; font-size: x-large; color: #33CCFF;">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="navbar-toggler-icon" style="padding: 30px; background-position: center center; background-image: url('Background/d22eed19-8b41-41ca-b6b8-35522608a8b6_200x200.png'); background-repeat: no-repeat;"></span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        </button>
        
         &nbsp; Welcome To India's Job Site!&nbsp;&nbsp;&nbsp;&nbsp;<div class="collapse navbar-collapse" id="navbarSupportedContent"> 


        <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="RecruiterLogin.aspx" style="font-size: medium">Recruiter Login</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%--</li>&nbsp &nbsp;--%>
                <li class="nav-item">
                    <a class="nav-link" href="UserLogin.aspx" style="font-size: medium">User Login</a> </li>
                <li class="nav-item">
                    &nbsp;</li>
            </ul>

        </div>
    </div>
</nav>
  <div class="col-md-8">
                <div class="card">
                    <div class="card-header">RECRUITER LOGIN</div>
                    <div class="card-body">
 <form id="form1" runat="server">
                        <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                <div class="col-md-6">
                                    <input name="txtEmail" type="email" id="txtEmail" class="form-control" required="" autofocus="">

                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
                                <div class="col-md-6">
                                    <input name="txtPassword" type="password" id="txtPassword" class="form-control" required="">
                                </div>
                            </div>
                            <div class="form-group row">
                                
                            <div class="col-md-6 offset-md-4">

                               <a href="RecruiterLogin.aspx" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Primary lin</a>

                                <button type="button" class="btn btn-primary btn-lg">Large button</button>
                                <a href="RecruiterSignUp.aspx" class="btn btn-link">
                                  Sign Up
                                </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="RecForgotPassword.aspx" class="btn btn-link">
                                  Forgot Password?
                                </a>
                            </div>
                            </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>

