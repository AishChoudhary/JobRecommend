<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="JobRecommend.UserDashboard" %>

<!DOCTYPE html>
<link rel="stylesheet" href="mystyle.css"> 
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Job Recommonder</title>
</head>
<body> 
   
    <form id="form2" runat="server">    
        <div style="font-size: xx-large">
            Welcome <asp:Label ID=lblEmail runat="server" Text="username" Font-Bold="True" Font-Size="XX-Large" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" BorderColor="#999966" Font-Bold="True" Font-Size="X-Large" Width="137px"  />
        </div> 
    </form>


</body>
</html>
