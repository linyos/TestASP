using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace MvcApplication2.ASP_Page
{
    public partial class UpdateFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder("Empty  File");
            string fn = System.IO.Path.GetFileName(Fileupload.PostedFile.FileName);
            string saveLoc = Server.MapPath("upload") + "\\" + fn;


            lblmessage.Text = saveLoc;

            if ((Fileupload.PostedFile != null) && (Fileupload.PostedFile.ContentLength > 0))
            {
                try
                {
                    sb.AppendFormat(" 正在上傳檔案: {0}", Fileupload.FileName);
                    //saving the file
                    //FileUpload1.SaveAs("F:\\worksp\\asp.net\\FileUploading\\" + FileUpload1.FileNam
                   
                    Fileupload.PostedFile.SaveAs(saveLoc);
                    sb.AppendFormat("<br/> 儲存為: {0}", Fileupload.PostedFile.FileName);
                    sb.AppendFormat("<br/> 檔案型別: {0}", Fileupload.PostedFile.ContentType);
                    sb.AppendFormat("<br/> 檔案長度: {0}", Fileupload.PostedFile.ContentLength);
                    sb.AppendFormat("<br/> 檔案名稱: {0}", Fileupload.PostedFile.FileName);

                }
                catch (Exception ex)
                {
                    sb.Append("<br/> 錯誤 <br/>");
                    sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                    throw;
                }
            }
            lblmessage.Text = sb.ToString();
        }
    }
}