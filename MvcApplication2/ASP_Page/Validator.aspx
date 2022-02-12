<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="MvcApplication2.ASP_Page.Validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <table style="width: 100%; height: 99px;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="選擇人員"  ></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    人員</td>
                <td>
                    <asp:DropDownList ID="ddlcandiate" runat="server" >
                        <asp:ListItem>Person1</asp:ListItem>
                        <asp:ListItem>Person2</asp:ListItem>
                        <asp:ListItem>Person3</asp:ListItem>
                        <asp:ListItem>Person4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvcandidate"
                        runat="server"
                        ControlToValidate ="ddlcandiate"
                        ErrorMessage="請選擇另一位"
                        InitialValue="請選擇另一位"
                        >
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    性別</td>
                <td>
                   <asp:RadioButtonList ID="rblhouse" runat="server"  RepeatLayout="Flow">

                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                       <asp:ListItem>Other</asp:ListItem>
                   </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvhouse" runat="server" ControlToValidate="rblhouse" ErrorMessage="選擇性別"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    年齡</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                   <asp:RangeValidator ID ="rvclass" runat="server" ControlToValidate="TextBox2" ErrorMessage="請填寫年齡 (16 - 70)" MaximumValue="70" MinimumValue="16" Type="Integer"> </asp:RangeValidator>
                </td>
            </tr>
              <tr>
                <td>
                    Email</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="250px"></asp:TextBox>
                  </td>
                <td>
                   <asp:RegularExpressionValidator ID="remail" runat="server" 
               ControlToValidate="txtemail" ErrorMessage="請輸入電子郵件地址" 

               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                       </asp:RegularExpressionValidator>

                  </td>
            </tr>
            
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click"
                        style="text-align : center ;  width: 140px"
                        Text ="確認提交" />


                </td>
            </tr>
            
        </table>


        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" ShowMessageBox="true" HeaderText="錯誤資訊提示:" />

    </form>
</body>
</html>
