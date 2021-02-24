<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUserDashboard.aspx.cs" Inherits="JobRecommend.NewUserDashboard" %>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Careers.com</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <form id="form1" runat="server">

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
        <a class="nav-link" href="NewUserDashboard.aspx">
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
        <a class="nav-link" href="jobRecommended.aspx">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Recommended Jobs</span></a>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="SavedJobs.aspx">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Saved Jobs</span></a>
      </li>

<li class="nav-item">
        <a class="nav-link" href="AppliedJobs.aspx">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Applied Jobs</span></a>
      </li>

   <li class="nav-item">
        <a class="nav-link" href="ReceivedInvitation.aspx">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Received Invitations</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="TestOptions.aspx">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>
              Test<span></a>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="ForgotPassword.aspx">
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
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
              </div>
            </li>




            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="left: -2px; top: 0px">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>

                   <% 
                       System.Data.SqlClient.SqlConnection connection1 = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
                       connection1.Open();
                       System.Data.SqlClient.SqlDataAdapter sqlDataAdapter = new System.Data.SqlClient.SqlDataAdapter("select * from notification where uid="+Session["uid"] + " And user_flag=2", connection1);
                       System.Data.DataSet ds1 = new System.Data.DataSet();
                       sqlDataAdapter.Fill(ds1);
                       connection1.Close();

                       System.Data.DataTable dt1 = ds1.Tables[0];

                       if (dt1.Rows.Count <= 0)
                           Response.Write(" <p> You have no recommended jobs please update your profile</p>");
                       else
                           for (int i = 0; i < dt1.Rows.Count; i++)
                           {
                 %>
                <a class="dropdown-item d-flex align-items-center" href="ChangeNotStatus.aspx?id=<%Response.Write(dt1.Rows[i].ItemArray[0].ToString()); %>&notflag=<% Response.Write(dt1.Rows[i].ItemArray[6].ToString());%> ">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500"><% Response.Write(dt1.Rows[i].ItemArray[4].ToString()); %></div>
                    <span class="font-weight-bold"><% Response.Write(dt1.Rows[i].ItemArray[3].ToString()); %></span>
                  </div>
                </a>

                  <%} %>
                
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"> <asp:Label ID="lblUname" runat="server" Text="Label"></asp:Label></span>
                <img class="img-profile rounded-circle" src="https://www.flaticon.com/svg/static/icons/svg/403/403554.svg">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="UserProfile.aspx">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
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
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            
          </div>

          <!-- Content Row -->
          

          <!-- Content Row -->

          <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Jobs Recommended</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                   
                  </div>
                    
                </div>
                <!-- Card Body -->
                <div class="card-body">
                
                  <% 

                      connection1.Open();
                      string sql = "Select SiteScore from userprofile where uid=" + Session["uid"];

                      sqlDataAdapter = new System.Data.SqlClient.SqlDataAdapter(sql, connection1);
                      ds1 = new System.Data.DataSet();
                      sqlDataAdapter.Fill(ds1);
                      connection1.Close();
                      dt1 = ds1.Tables[0];
                      //  System.Diagnostics.Debug.Print("count=" + dt1.Rows.Count);

                      if(dt1.Rows.Count==0)
                      {
                          %>
                    <div class="alert alert-danger" role="alert">
  Please update your profile first
</div>
                    <%

                      }
                        else
                      if (Convert.ToInt32(dt1.Rows[0].ItemArray[0].ToString())== 0 || dt1.Rows[0].ItemArray[0].ToString()=="")
                      {

                          %>

                    <div class="alert alert-danger" role="alert">
  Please attend tests to receive recommended jobs
</div>
                    <%
                      }

                        else
                        { 

                        connection1.Open();
                        sqlDataAdapter = new System.Data.SqlClient.SqlDataAdapter("select (select id from NewRequirement where id =rks.pid)as'pid',(select jobtitle from NewRequirement where id =rks.pid)as'jobtitle',(select JobDescription from NewRequirement where id =rks.pid)as'Jd',(select WorkExperiance from NewRequirement where id =rks.pid)as'WorkExp' from Requirementkeyskill rks where key_skill_id in (select key_skill_id  from KeySkillInfo where uid="+Session["uid"]+") order by  pid desc " , connection1);
                        ds1 = new System.Data.DataSet();
                        sqlDataAdapter.Fill(ds1);
                        connection1.Close();

                        dt1 = ds1.Tables[0];

                        if (dt1.Rows.Count <= 0)
                            Response.Write(" <p> You have no recommended jobs please update your profile and complete your test</p>");
                        else
                            for (int i = 0; i <3; i++)
                            {
                              %>
                             <div class="card-body">
                             <div class="card shadow mb-8" style="width: 40rem; margin-bottom:8px;">

                              <div class="card-body">
                               <h5 class="card-title"><% Response.Write(dt1.Rows[i].ItemArray[1].ToString()); %></h5>
                                <p class="card-text"><% Response.Write(dt1.Rows[i].ItemArray[2].ToString()); %></p>
                                <a href="ApplyJob.aspx?pid=<% Response.Write(dt1.Rows[i].ItemArray[0].ToString()); %>" class="btn btn-primary">Apply</a>
                                  <a href="SaveJob.aspx?pid=<% Response.Write(dt1.Rows[i].ItemArray[0].ToString()); %>" class="btn btn-primary">Save job</a>
                                  <br />
                                 </div>
                              </div>

                </div> <%}} %>
            </div>
            
                </div>
              </div>
            </div>
         </div>

<div class="row">

          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">

              <!-- Project Card Example -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Ranking Based On Skills Tested</h6>
                </div>
                <div class="card-body">
                    
                <% 
                System.Data.SqlClient.SqlConnection connection = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
                connection.Open();
                System.Data.SqlClient.SqlDataAdapter sqlDataAdapter1 = new System.Data.SqlClient.SqlDataAdapter("select (select KeySkill from KeySkills where id=ksi.key_skill_id)as 'Key_skill_Name',marks from KeySkillInfo ksi where uid=" + Session["uid"], connection);
                System.Data.DataSet ds = new System.Data.DataSet();
                sqlDataAdapter1.Fill(ds);
                connection.Close();

                System.Data.DataTable dt = ds.Tables[0]; %>

                       <% for (int i = 0; i < dt.Rows.Count; i++)
                        { %>
                  <h4 class="small font-weight-bold"><% Response.Write(dt.Rows[i].ItemArray[0].ToString()); %> <span class="float-right"><% Response.Write(dt.Rows[i].ItemArray[1].ToString()+"%");%></span></h4>
                  <div class="progress mb-4">
                    <div class="progress-bar" role="progressbar" style="width: <% Response.Write(dt.Rows[i].ItemArray[1].ToString()+"%");%>" aria-valuenow=" <% Response.Write(dt.Rows[i].ItemArray[1].ToString()+"%");%>" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                 <%} %>
                </div>
              </div>

              <!-- Color System -->
              

            </div>

            <div class="col-lg-6 mb-4">

              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Approach to Job Search</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                    <div style="text-align: justify;">
                        <span style="font-size: 10pt; font-family: verdana, geneva, sans-serif;">The search for a job has a lifecycle of its own starting with the desire to make a move to finding the right job that will contribute to an individual’s larger goals in life. The fact is that job hunting is an anxiety ridden and often lengthy process, always riddled with uncertainty. Careers.com acts as an advisory and helps you formulate better career decisions by offering numerous career tips till a job is locked; the offer received and the appointment accepted. But before the champagne is popped, a job search requires a systematic and strategic process of scouting with reasonable time and energy investment.&nbsp;</span></div>
                    <div style="text-align: justify;">
                    </div>
                    
                </div>
              </div>

              <!-- Approach -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Online Job Hunting</h6>
                </div>
                <div class="card-body">
                  <p><span style="font-size: 10pt; font-family: verdana, geneva, sans-serif;">It is recommended to register and build profiles with popular job portals like Careers.com. These help in making a seeker’s updated profile a personalised experience to the recruiter with the right key words for better visibility. Using the multitude of online apps and tools for specific needs or instant notifications also helps. They go a long way in pushing a seeker’s profile amongst the first reviewed in the online abyss of millions.&nbsp;</span></p>
                </div>
              </div>

            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
      </div>
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Careers.com 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    
    <!-- End of Content Wrapper -->

  
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top" style="display: none;">
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




    </form>




</body></html>