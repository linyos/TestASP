<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MvcApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" type ="text/css" href="../1.css">
</head>
<body>
  

    <form id="form1" runat="server">


          <script src="../JavaScript1.js"></script>

    <div >
        
    </div>
        <asp:TextBox ID="TextBox1" runat="server"   BackColor ="Teal"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button class ="myBtn" runat="server" Text="Button" OnClick="Button1_Click"   />


       
    &nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
          <br />
          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go Page"  />

        &nbsp;&nbsp;
          <asp:Button ID="Button3" runat="server" Text="Go Form Page"  OnClick="Button3_Click" />



        <br />

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

          <br />


        <asp:Calendar ShowTitle="true" runat="server"></asp:Calendar>
    </form>
</body>
</html>


