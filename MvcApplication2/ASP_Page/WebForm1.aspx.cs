using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;
using NXOpen;

namespace MvcApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
      
            //string content = GetJsonContent("https://www.ktec.gov.tw/ktec_api.php?type=json");
            //Data data = JsonConvert.DeserializeObject<Data>(content);
            //message.InnerHtml += "<CAPTION> <h1>高雄市政府相關求才資訊發佈</h1></CAPTION>  ";
            //message.InnerHtml += "<table><TR><TH>類型</TH><TH>主題</TH><TH>發表日期</TH></TR>";

            //int i = 0;
            //foreach (var item in data.entries)
            //{
            //    if (item.title.Length > 35)
            //    {
            //        item.title = item.title.Substring(0, 35);
            //        item.title += "...<詳情請點>";
            //        message.InnerHtml += "<tr>" + "<td>" + item.category
            //            + "</td>" + "<td> <a href=\"detail.aspx?i=" + i + "\">" + item.title
            //            + "</a></td>" +"<td>" + item.publication_date  + "</td></tr>" ;
            //        i++;
            //    }
            //    else
            //    {
            //        message.InnerHtml += "<tr>" + "<td>" + item.category + "</td>"
            //            + "<td><a href=\"detail.aspx?i=" + i + "\">" + item.title
            //            + "</a></td>" + "<td>" + item.publication_date + "</td></tr>";
            //        i++;

            //    }
            //}
            //message.InnerHtml += "</table>";
        }

       
        private static string GetJsonContent(string Url)
        {

            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
            string targetURI = Url;
            var request = System.Net.WebRequest.Create(targetURI);
            request.ContentType = "application/json; charset=utf-8";
            
            var response = request.GetResponse();
            string text;
            using (var sr = new StreamReader(response.GetResponseStream()))
            {
                text = sr.ReadToEnd();
            }
            return text;
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Validator.aspx");
        }

        protected void Buttom4_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateFile.aspx");
        }

        protected void Unnamed2_SelectionChanged(object sender, EventArgs e)
        {
            //lblday.Text = Calendar1.TodaysDate.ToShortDateString();
            lblday.Text = Calendar1.SelectedDate.ToShortDateString();

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("PanelPAge.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}