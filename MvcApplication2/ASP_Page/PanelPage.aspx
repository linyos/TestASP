<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelPage.aspx.cs" Inherits="MvcApplication2.ASP_Page.PanelPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Panel ID ="panel1" runat="server" BorderColor="#990000" BorderStyle="Solid"  Height="120px" ScrollBars="Both"  style="width:278px"> This is a scrollable panel. ff

                <br />
                <br />

               <asp:Button ID="btnpanel" runat="server" Text="Button" style="width:82px" />

        </asp:Panel>


        
     </div>
    </form>


    
    <form>
        <h3  >Panel Example </h3>
        <div>
            <asp:Panel ID="pnldynamic" runat="server" BorderColor="Black" BorderStyle="Solid" Height="150px" ScrollBars="Auto" style="width:60%" BackColor="#CCCCFF" Font-Names="Courier" HorizontalAlign="Center">
                該面板顯示動態控制生成：
                <br />
                <br />
            </asp:Panel>


            <table style="width :50%">
                <tr>
                       <td class ="style2"> 標籤數量</td>
                        <td class="style1">
                  <asp:DropDownList ID="ddllabels" runat="server">
               <asp:ListItem>0</asp:ListItem>
               <asp:ListItem>1</asp:ListItem>
               <asp:ListItem>2</asp:ListItem>
               <asp:ListItem>3</asp:ListItem>
               <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
                        </td>
                </tr>

                <tr>
                    <td class="style2"></td>
                    <td class="style1"></td>
                </tr>
                <tr>
                      <td class ="style2"> 文字框數量</td>
                      <td class="style1">
                          <asp:DropDownList ID="ddltextbox" runat="server">
                              <asp:ListItem>0</asp:ListItem>
                              <asp:ListItem Value="1"> </asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem Value="4"></asp:ListItem>
                          </asp:DropDownList>
                      </td>
                </tr>
                 <tr>
         <td class="style2"> </td>
         <td class="style1"> </td>
      </tr>
                  <tr>
         <td class="style2">
            <asp:CheckBox ID="chkvisible" runat="server" 
               Text="使用面板視覺化" />
         </td>

         <td class="style1">
            <asp:Button ID="btnrefresh" runat="server" Text="提交更新生成" 
               style="width:129px" />
         </td>
      </tr>
            </table>
        </div>


    </form>
</body>
</html>
