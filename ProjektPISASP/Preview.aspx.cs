using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjektPISASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["New"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }
            string loggedUser = Convert.ToString(Session["New"]); 
             
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterString"].ConnectionString);
            sqlConnection.Open();
            string query = "SELECT COUNT(*) FROM Users WHERE username='" + loggedUser + "'";
            SqlCommand command = new SqlCommand(query, sqlConnection);
            int count = Convert.ToInt32(command.ExecuteScalar().ToString());
            sqlConnection.Close();
            if (count == 1)
            {
                string role = Convert.ToString(Session["Role"]);
                //Response.Write("Pobrane hasla " + PasswordInput.Text + " oraz " + password);
                if(role != "ADMIN")
                {
                    //Response.Write("ROle is " + role);
                    Response.Redirect("UserView.aspx");
                }
            }
            sqlConnection.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Session["New"] = null;
                Session["Role"] = null;
                Response.Redirect("Login.aspx");
                return;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {    
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterString"].ConnectionString);
            sqlConnection.Open();
            string query = "DELETE FROM Users WHERE username='" + DeleteBox.Text + "'";
            SqlCommand command = new SqlCommand(query, sqlConnection);
            command.ExecuteNonQuery();
            sqlConnection.Close();
            Response.Redirect("Preview.aspx");
            Response.Write("Usunięcie przebiegło pomyślnie!");
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("UserView.aspx");
        }
    }
}