<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerControl.aspx.cs" Inherits="MvcApplication2.ServerControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" Width="119px" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text="Corporation" Value="Corporation">
                    <asp:TreeNode Text="technique_department" Value="technique_department">
                        <asp:TreeNode Text="Java" Value="Java"></asp:TreeNode>
                        <asp:TreeNode Text="PHP" Value="PHP"></asp:TreeNode>
                        <asp:TreeNode Text="MySQL" Value="MySQL"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Market_department" Value="Market">
                        <asp:TreeNode Text="Lin" Value="Lin"></asp:TreeNode>
                        <asp:TreeNode Text="uo" Value="uo"></asp:TreeNode>
                        <asp:TreeNode Text="change" Value="change"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
        <br />

        <asp:Label ID="lblmessage" runat="server" Text="text" Font-Size ="Large" ForeColor="#ff66ff"></asp:Label>
        <br />
        <asp:Label ID ="txtmessage" runat="server" Text=" txt"  Font-Size ="Large" ></asp:Label>
     </div>
</body>


    
<body>
    <div>


        <asp:Label ID="Label3" runat="server" Text="Label"> 名字: </asp:Label>  &nbsp;  <asp:TextBox ID="TextBox1" runat="server" > </asp:TextBox>
       
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"> 地址: </asp:Label>  &nbsp;  <asp:TextBox ID="TextBox2" runat="server" > </asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label">城市: </asp:Label>  &nbsp;   <asp:TextBox ID="TextBox3" runat="server" > </asp:TextBox>
        
        <br />
        <br />
        <asp:Button  ID = "Button1" runat="server"  Text="提交"  BackColor="#3333ff"  ForeColor="White" OnClick="Button1_Click"  />
        
        <br />
        <br />
       
        <tr>
                <td class="style1"></td>
                  <td ID="displayrow" runat ="server" class="style2">
            </td>
        </tr>


    </div>


</body>
    </form>
</html>
