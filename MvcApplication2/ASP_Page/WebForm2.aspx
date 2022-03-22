<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MvcApplication2.ASP_Page.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetStudents" TypeName="Student" OnSelecting="ObjectDataSource1_Selecting"></asp:ObjectDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1">
            </asp:GridView>

              <br />
              <br />
              <br />

        </div>
        <p>
            &nbsp;</p>
        <div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
