using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjektPISASP
{
    public partial class UserView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["New"] != null )
            {
                wLabel.Text = "Witaj, " + Session["New"];   
                if(Convert.ToString(Session["Role"]) == "ADMIN")
                {
                    AdminPanelButton.Enabled = true;
                } else
                {
                    AdminPanelButton.Enabled = false;
                }
            }else
            { 
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Session["New"] != null)
            {
                Session["New"] = null;
                Session["Role"] = null;
                wLabel.Text = " ";
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/wrzucone/") + filename);
                    Response.Write("Wrzucono plik na serwer!");
                }
                catch (Exception ex)
                {
                    Response.Write("Nie udalo sie wrzucic pliku: " + ex.Message);
                }
            }
            
        }

        protected void AdminPanelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Preview.aspx");
        }
    }
}