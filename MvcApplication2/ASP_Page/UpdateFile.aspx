<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateFile.aspx.cs" Inherits="MvcApplication2.ASP_Page.UpdateFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3> 檔案上傳</h3>
        <br />
&nbsp;
        <asp:FileUpload ID="Fileupload" runat="server" />
        <br />
        <br />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        <br />
        <br />
        <asp:Label ID="lblmessage" runat="server" Text="lblmessage"></asp:Label>
    
    </div>
    </form>
</body>
</html>
