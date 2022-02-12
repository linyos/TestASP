using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MvcApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }


     
        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Text = "Welcome: " + Server.HtmlEncode(TextBox1.Text) + ". <br> 現在URL是  " + Server.UrlEncode(Request.Url.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // open other asp page
            // Response.Redirect("YourPage.aspx"); or a Server.Transfer("YourPage.aspx")

            Response.Redirect("ServerControl.aspx");
           
        }
    }
}