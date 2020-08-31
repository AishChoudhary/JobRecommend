﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecruiterSignUp.aspx.cs" Inherits="JobRecommend.RecruiterSignUp" %>


<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="css/style.css">

    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <title>JobRecommender</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container">
        <a class="navbar-brand" href="#">Welcome</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
 <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="RecruiterLogin.aspx">Recruiter Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="UserLogin.aspx">User Login</a>
                </li>
            </ul>

        </div>
    </div>
</nav>

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">RECRUITER REGISTRATION</div>
                    <div class="card-body">
                        <form action="" method="" runat="server">
                           
                             <div class="form-group row">
                                <label for="full Name" class="col-md-4 col-form-label text-md-right">Full Name</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtFullName" runat="server" class="form-control" required autofocus ></asp:TextBox>

                                </div>

                            </div>
                             <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" required autofocus ></asp:TextBox>

                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" required></asp:TextBox>
                                </div>
                            </div>
                               <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Confirm Password</label><div class="col-md-6">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" class="form-control" required></asp:TextBox>
                                </div>
                            </div>


                            
                               <div class="form-group row">
                                <label for="Mobile No" class="col-md-4 col-form-label text-md-right">Mobile No</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtMobileNo" runat="server" class="form-control" required autofocus ></asp:TextBox>

                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="City" class="col-md-4 col-form-label text-md-right">City</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtCity" runat="server" class="form-control" required autofocus ></asp:TextBox>

                                </div>

                            </div>

                            

                            <div class="col-md-6 offset-md-4">

                                <asp:Button ID="btnLogin" runat="server" class="btn btn-primary" Text="Register" OnClick="btnLogin_Click" />
                        
                              
                            </div>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

</main>







</body>
</html>