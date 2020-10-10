<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecForgotPassword.aspx.cs" Inherits="JobRecommend.RecForgotPassword" %>

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
    <style type="text/css">
        .auto-style1 {
            left: 15px;
            top: -423px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
    <div class="container" style="font-family: 'Arial Black'; font-size: x-large; color: #33CCFF;">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="navbar-toggler-icon" style="padding: 30px; background-position: center center; background-image: url('Background/d22eed19-8b41-41ca-b6b8-35522608a8b6_200x200.png'); background-repeat: no-repeat;"></span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        </button>
        
         &nbsp; Welcome To India's Job Site!&nbsp;&nbsp;&nbsp;&nbsp;     <div  class        ="collapse navbar-collapse" id="navbarSupportedContent"> 
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
 <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="RecruiterLogin.aspx" style="font-size: medium"> Recruiter Login </a>
                </li> &nbsp; &nbsp;
                <li class="nav-item">
                    <a class="nav-link" href="UserLogin.aspx" style="font-size: medium">User Login</a>
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
                    <div class="card-header">Change Password?</div>
                    <div class="card-body">
                        <form id="form1" runat="server">
                            <div class="form-group row">
                                <label for="Email" class="col-md-4 col-form-label text-md-right">Email</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" required autofocus TextMode="Email" AutoPostBack="True" OnTextChanged="txtEmail_TextChanged" ></asp:TextBox>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/check.png"/>
                                    </div> </div>
                                    <div class="form-group row">
                                <label for="OTP" class="col-md-4 col-form-label text-md-right">OTP</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtOtp" runat="server" class="form-control" required autofocus TextMode="Password" AutoPostBack="True" OnTextChanged="txtOtp_TextChanged" ></asp:TextBox>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtOtp" ErrorMessage="Enter Valid OTP" ForeColor="Red" ValidationExpression="[0-9]{4}$"></asp:RegularExpressionValidator>
                                </div> </div>     <div class="form-group row">
                                <label for="New Password" class="col-md-4 col-form-label text-md-right">New Password</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtNewPwd" runat="server" class="form-control" required autofocus TextMode="Password" ></asp:TextBox>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="Minimum 8 Characters Required " ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,15}$"></asp:RegularExpressionValidator>
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
                                
                            
                                <asp:Button ID="btnSavePwd" runat="server" Text="Save Password" OnClick="Button1_Click" />
                                
                            
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
