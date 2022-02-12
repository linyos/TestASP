using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MvcApplication2
{
    public partial class ServerControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtmessage.Text = "Page_Loading";
        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            txtmessage.Text = " ";
            lblmessage.Text = "最近選擇: " + TreeView1.SelectedNode.Text;
            TreeNodeCollection childnodes = TreeView1.SelectedNode.ChildNodes;

            if (childnodes != null)
            {
                txtmessage.Text = " ";
                foreach (TreeNode t in childnodes)
                {
                    txtmessage.Text += ", " +t.Value;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text=="" && TextBox2.Text ==""  && TextBox3.Text=="")
            {
                displayrow.InnerHtml = "請輸入正確";
            }
            else
            {
                string str = "";
                str += TextBox1.Text + "<br/>";
                str += TextBox2.Text + "<br/>";
                str += TextBox3.Text + "<br/>";

                displayrow.InnerHtml = str;
            }
          
            //Label1.Text = str;
        }
       

        
    }
}