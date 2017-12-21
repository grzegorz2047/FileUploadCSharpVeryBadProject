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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["New"] != null)
            {
                if(Convert.ToString(Session["role"]) == "ADMIN")
                {
                    Response.Redirect("Preview.aspx");
                }else
                {
                    Response.Redirect("UserView.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterString"].ConnectionString);
            sqlConnection.Open();
            string query = "SELECT COUNT(*) FROM Users WHERE username='" + LoginInput.Text + "'";
            SqlCommand command = new SqlCommand(query, sqlConnection);
            int count = Convert.ToInt32(command.ExecuteScalar().ToString());
            sqlConnection.Close();
            if (count == 1)
            {
                sqlConnection.Open();
                string getPassQUery = "SELECT password FROM Users WHERE username='" + LoginInput.Text + "'";
                SqlCommand passCommand = new SqlCommand(getPassQUery, sqlConnection);
                string password = passCommand.ExecuteScalar().ToString();
                //Response.Write("Pobrane hasla " + PasswordInput.Text + " oraz " + password);
                sqlConnection.Close();
                if (PasswordInput.Text.Trim() == password.Trim())
                {
                    Session["New"] = LoginInput.Text;

                    sqlConnection.Open();
                    string roleQuery = "SELECT role FROM Users WHERE username='" + LoginInput.Text + "'";
                    SqlCommand roleommand = new SqlCommand(roleQuery, sqlConnection);
                    string role = roleommand.ExecuteScalar().ToString();
                    role = role.Trim();
                    Session["Role"] = role;
                    if (role != "ADMIN")
                    {
                        Response.Redirect("UserView.aspx");
                    } else
                    {
                        Response.Redirect("Preview.aspx");
                    }
                }
                else
                {
                    Response.Write("Hasło jest niepoprawne!");
                }


            }
            sqlConnection.Close();
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}