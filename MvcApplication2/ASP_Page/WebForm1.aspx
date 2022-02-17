<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MvcApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="1.css" rel="stylesheet" />
    <title></title>


</head>
<body>
  

    <form id="form1" runat="server">


          <script src="../JavaScript1.js"></script>

    <div >
         <span id ="message" runat="server"></span>
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

         &nbsp;&nbsp;
        
        <asp:Button ID="Buttom4" runat="server" Text ="Go File Page" OnClick="Buttom4_Click" />
 
        &nbsp;
          <asp:Button ID="Button5" runat="server" Text="Go to Panel Page"  OnClick="Button5_Click"/>
 
        <br />

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

          <br />


        <asp:Calendar ID ="Calendar1"  ShowTitle="true" runat="server"  SelectionMode="DayWeekMonth"  OnSelectionChanged="Unnamed2_SelectionChanged"></asp:Calendar>


            <p> 今天是:  <asp:Label ID="lblday" runat="server" > </asp:Label></p>
            



          <br />
          <br />
          <br />
          <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged"> 

            <asp:View ID="View1" runat="server">
                  <h3>這是第一個檢視</h3>
                  <br />                  
                  <asp:Button CommandArgument="View3" CommandName="SwitchViewByID" ID="btnlast" runat="server" Text  ="<<前一個檢視" />
                  <asp:Button CommandName="NextView" ID="btnnext1" runat="server" Text = "後一個檢視>>" />
               </asp:View> 

               <asp:View ID="View2" runat="server">
                  <h3>這是第二個檢視</h3>

                  <asp:Button CommandName="PrevView" ID="btnprevious2" runat="server" Text = "<<前一個檢視" />
                   <asp:Button CommandName="NextView" ID="btnnext2" runat="server" Text = "下一個檢視>>" />
               </asp:View> 

               <asp:View ID="View3" runat="server">
                  <h3> 這是第三個檢視</h3>
                  <br />
                  <asp:Calendar ID="Calender1" runat="server"></asp:Calendar>
                  <br />                  
                  <asp:Button CommandName="PrevView" ID="btnprevious" runat="server" Text = "<<前一個檢視" />
                   <asp:Button  CommandArgument="0" CommandName="SwitchViewByIndex" ID="btnfirst"   runat="server" Text = "後一個檢視>>" />
               </asp:View> 

            
          </asp:MultiView>
          <br />


        
    </form>



    
    
  
</body>
</html>


