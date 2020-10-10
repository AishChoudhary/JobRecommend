﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="JobRecommend.UserProfile" %>

<!DOCTYPE html>
<html lang="en"><head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>JobRecom</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

<style type="text/css">/* Chart.js */
@keyframes chartjs-render-animation{from{opacity:.99}to{opacity:1}}.chartjs-render-monitor{animation:chartjs-render-animation 1ms}.chartjs-size-monitor,.chartjs-size-monitor-expand,.chartjs-size-monitor-shrink{position:absolute;direction:ltr;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1}.chartjs-size-monitor-expand>div{position:absolute;width:1000000px;height:1000000px;left:0;top:0}.chartjs-size-monitor-shrink>div{position:absolute;width:200%;height:200%;left:0;top:0}</style></head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Careers.com<sup>TM</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Recommended Jobs</span></a>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Saved Jobs</span></a>
      </li>

<li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Applied Jobs</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="Test.aspx">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Test New Skills</span></a>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Forgot Password</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="Logout.aspx">
          <i class="fa fa-power-off" aria-hidden="true"></i>
          <span>Logout</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw" style="height: 16px"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            

            <div class="topbar-divider d-none d-sm-block">

            </div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><asp:Label ID="lblUname" runat="server" Text="Label"></asp:Label></span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="Logout.aspx" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">User Profile</h1>
            
          </div>

          <!-- Content Row -->
          

          <!-- Content Row -->

          <div class="row">

               <div class="container-fluid">
                <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">User Profile Settings</h6>
            </div>
<form class="user" runat="server">
            <div class="card-body">
              <div class="table-responsive">
              
<div class="form-group row">
                                <label for="address" class="col-md-4 col-form-label text-md-right">Address</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtAddress" runat="server" class="form-control form-control-user " required="" autofocus=""></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Address" ControlToValidate="txtAddress" ForeColor="Red" ValidationExpression="^[0-9a-zA-Z #,-]+$"></asp:RegularExpressionValidator>
                                </div>

                            </div>

<div class="form-group row">
      <label for="10th_marks" class="col-md-4 col-form-label text-md-right">10th Marks (%)</label>
                                <div class="col-md-6">
           <asp:TextBox ID="txtMarks" runat="server" class="form-control form-control-user" required="" autofocus=""></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Marks in %" ControlToValidate="txtMarks" ForeColor="Red" ValidationExpression="^(100([\.][0]{1,})?$|[0-9]{1,2}([\.][0-9]{1,})?)$"></asp:RegularExpressionValidator>
 </div>
                            </div><div class="form-group row">
                                <label for="12th_marks" class="col-md-4 col-form-label text-md-right">12th/Diploma Marks(%)</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtMarks1" runat="server" Class="form-control form-control-user" required="" autofocus=""></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter Marks in %" ControlToValidate="txtMarks1" ForeColor="Red" ValidationExpression="^(100([\.][0]{1,})?$|[0-9]{1,2}([\.][0-9]{1,})?)$"></asp:RegularExpressionValidator>
                                </div>
                            </div>
<div class="form-group row">
                                <label for="current_qualification" class="col-md-4 col-form-label text-md-right">Current Qualification</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtCurrentQualification" runat="server" class="form-control form-control-user"  required="" autofocus=""></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please Enter Qualification" ControlToValidate="txtCurrentQualification" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{2,30}$"></asp:RegularExpressionValidator>
                                </div>
                            </div><div class="form-group row">
                                <label for="highest_qualification" class="col-md-4 col-form-label text-md-right">Highest Qualification</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtHighestQualification" runat="server" class="form-control form-control-user"  required="" autofocus=""></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please Enter Qualification" ControlToValidate="txtHighestQualification" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{2,30}$"></asp:RegularExpressionValidator> </div>
                            </div>
<div class="form-group row">
                                <label for="work_location" class="col-md-4 col-form-label text-md-right">Desired Work Location</label>
                                <div class="col-md-6">
                                   <asp:TextBox ID="txtLocation" runat="server" class="form-control form-control-user"  required="" autofocus=""></asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Please Enter Desired Work Location" ControlToValidate="txtLocation" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{2,30}$"></asp:RegularExpressionValidator>  </div>
                                </div>
<div class="form-group row">
                                <label for="certifications" class="col-md-4 col-form-label text-md-right">&nbsp;Certifications</label>
                                <div class="col-md-6">
                                  <asp:TextBox ID="txtCertifications" runat="server" class="form-control form-control-user" autofocus=""></asp:TextBox>
                                </div>
                                </div><div class="form-group row">
                                <label for="interests" class="col-md-4 col-form-label text-md-right">Skills/Hobbies/Interests</label>
                                <div class="col-md-6">
                                   <asp:TextBox ID="txtInterests" runat="server" class="form-control form-control-user" required="" autofocus=""></asp:TextBox>
                                </div>
                                </div>
                  <div class="form-group row">
                                <label for="work" class="col-md-4 col-form-label text-md-right">Fresher/Experienced?</label>
                                <div class="col-md-6">
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-secondary dropdown-toggle" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem>Fresher</asp:ListItem>
                                        <asp:ListItem>Experienced</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                </div>
                                <div class="form-group row">
                                <label for="company_name" class="col-md-4 col-form-label text-md-right">Company Name</label>
                                <div class="col-md-6">
                                   <asp:TextBox ID="txtCompName" runat="server" class="form-control form-control-user" required="" autofocus="" AutoPostBack="True"></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Please Give Company Name" ControlToValidate="txtCompName" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{2,80}$"></asp:RegularExpressionValidator> </div>
                                </div>
                                <div class="form-group row">
                                <label for="work_duration" class="col-md-4 col-form-label text-md-right">Work Duration</label>
                                <div class="col-md-6">
                                   <asp:TextBox ID="txtWorkDur" runat="server" class="form-control form-control-user" required="" autofocus=""></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Please Give Work Duration" ControlToValidate="txtWorkDur" ForeColor="Red" ValidationExpression="^.*[0-9] (year|years|Years|Year|Months|Month|month|months)[s]?.*$"></asp:RegularExpressionValidator> </div>
                                </div>
                                 <div class="form-group row">
                                <label for="Job title" class="col-md-4 col-form-label text-md-right">Job Title</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtJobTitle" runat="server" class="form-control form-control-user " required="" autofocus="" AutoPostBack="True"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Please Enter Job title" ControlToValidate="txtJobTitle" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{3,20}$"></asp:RegularExpressionValidator>
                                </div>
                                     
                                 </div>
                  <div class="form-group row">
                                <label for="salary" class="col-md-4 col-form-label text-md-right">Salary</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtSal" runat="server" class="form-control form-control-user " required="" autofocus="" AutoPostBack="True"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Please Enter Salary" ControlToValidate="txtSal" ForeColor="Red" ValidationExpression="^\d{1,6}(?:\.\d{1,10})?$"></asp:RegularExpressionValidator>
                                </div></div>

                  <div class="col-md-6 offset-md-4">
                    <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />       
                            </div>
 
              </div>
            </div>
         </form>


         
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Update Profile</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  
                </div>
              </div>
            </div>

           
        
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Careers.com 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top" style="display: inline;">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="Logout.aspx">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>




</body></html>