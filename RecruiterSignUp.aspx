<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecruiterSignUp.aspx.cs" Inherits="JobRecommend.RecruiterSignUp" %>


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
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
 <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="RecruiterLogin.aspx" style="font-size: medium"> Recruiter Login </a>
                </li> &nbsp &nbsp
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
                    <div class="card-header">RECRUITER REGISTRATION</div>
                    <div class="card-body">
                        <form id="form1" runat="server">
                           
                             <div class="form-group row">
                                <label for="full Name" class="col-md-4 col-form-label text-md-right">Full Name<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                 </label>
                                &nbsp;<div class="col-md-6">
                                    <asp:TextBox ID="txtFullName" runat="server" class="form-control" required autofocus ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Characters only" ForeColor="Red" ControlToValidate="txtFullName" ValidationExpression="[a-zA-Z\s]{10,30}$"></asp:RegularExpressionValidator>
                                </div>

                            </div>
                             <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                 </label>
                                &nbsp;<div class="col-md-6">
                                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" required autofocus ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Email Address" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Password<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </label>
                                &nbsp;<div class="col-md-6">
                                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" required TextMode="Password" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Minimum 8 characters,1 Alphabet,1 Num,1 Special Character" ControlToValidate="txtPassword" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,15}$"></asp:RegularExpressionValidator>                                    
                                </div>
                            </div>
                               <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">Confirm Password<asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                   </label><div class="col-md-6">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" class="form-control" required TextMode="Password"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Minimum 8 characters,1 Alphabet,1 Num,1 Special Character" ControlToValidate="txtPassword" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,15}$"></asp:RegularExpressionValidator> 
                                    <asp:CompareValidator id="comparePasswords" runat="server" ControlToCompare="txtPassword"          ControlToValidate="txtConfirmPassword"            ErrorMessage="Your passwords do not match up!"         ForeColor="Red"  />
                                </div>
                            </div>
                               <div class="form-group row">
                                <label for="Mobile No" class="col-md-4 col-form-label text-md-right">Mobile No<asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                   </label>
                                &nbsp;<div class="col-md-6">
                                    <asp:TextBox ID="txtMobileNo" runat="server" class="form-control" required autofocus ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a valid Number" ControlToValidate="txtMobileNo" ValidationExpression="[0-9]{10,10}$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>

                               </div>
                            <div class="form-group row">
                                <label for="City" class="col-md-4 col-form-label text-md-right">City<asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </label>
                                &nbsp;<div class="col-md-6">
                                    <asp:TextBox ID="txtCity" runat="server" class="form-control" required autofocus ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Valid City Name" ControlToValidate="txtCity" ValidationExpression="[a-zA-Z][a-zA-Z\\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="State" class="col-md-4 col-form-label text-md-right">State<asp:Label ID="Label7" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                </label>
                                &nbsp;<div class="col-md-6">
                                    <asp:TextBox ID="txtState" runat="server" class="form-control" required autofocus ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Enter Valid State Name" ControlToValidate="txtState" ValidationExpression="[a-zA-Z][a-zA-Z\\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                                </div>

                            

                            <div class="col-md-6 offset-md-4">

                                <asp:Button ID="btnLogin" runat="server" class="btn btn-primary" Text="Register" OnClick="btnLogin_Click" />
                        
                              
                            </div>
                            </form>
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