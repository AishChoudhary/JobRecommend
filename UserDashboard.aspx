<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="JobRecommend.UserDashboard" %>

<!DOCTYPE html>
<link rel="stylesheet" href="mystyle.css"> 
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Job Recommonder</title>
</head>
<body> 
   
    <form id="form2" runat="server">
        <div>
            Welcome <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
        </div>
    </form>


</body>
</html>
