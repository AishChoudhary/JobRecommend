<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="JobRecommend.ForgotPassword" %>

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
                    <a class="nav-link" href="UserLogin.aspx">User Login</a></li>
                <li class="nav-item">
                    &nbsp;</li>
            </ul>

        </div>
    </div>
</nav>

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Change Password?</div>
                    <div class="card-body">
                        <form id="form1" runat="server">
                            <div class="form-group row">
                                <label for="New PAssword" class="col-md-4 col-form-label text-md-right">New Password</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtNewPwd" runat="server" class="form-control" required autofocus TextMode="Password" ></asp:TextBox>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Minimum 8 Characters Required " ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,15}$"></asp:RegularExpressionValidator>

                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="New password" class="col-md-4 col-form-label text-md-right">Confirm Password</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtNewPwd1" runat="server" class="form-control" required TextMode="Password"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNewPwd1" ErrorMessage="Minimum 8 characters Required" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,15}$"></asp:RegularExpressionValidator>
                                <asp:CompareValidator id="comparePasswords" runat="server" ControlToCompare="txtNewPwd"          ControlToValidate="txtNewPwd1" ErrorMessage="Your passwords do not match up!" ForeColor="Red"  />  </div>
                            </div>
                            <div class="form-group row">
                                
                            
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                            
                                <asp:Button ID="Button1" runat="server" Text="Save Password" OnClick="Button1_Click" />
                                
                            
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
