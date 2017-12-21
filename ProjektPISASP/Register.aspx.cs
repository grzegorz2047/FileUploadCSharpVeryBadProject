using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ProjektPISASP
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterString"].ConnectionString);
                sqlConnection.Open();
                string query = "SELECT COUNT(*) FROM Users WHERE username='" + usernameId.Text + "'";
                SqlCommand command = new SqlCommand(query, sqlConnection);
                int count = Convert.ToInt32(command.ExecuteScalar().ToString());
                if(count != 1)
                {

                }else
                {
                    Response.Write("Ta nazwa użytkownika już istnieje");
                }
                sqlConnection.Close();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegisterString"].ConnectionString);
                sqlConnection.Open();
                string query = "INSERT INTO USERS (username, email, password, role) values(@username, @email, @password, @role)";
                SqlCommand command = new SqlCommand(query, sqlConnection);
                command.Parameters.AddWithValue("@username", usernameId.Text);
                command.Parameters.AddWithValue("@email", emailId.Text);
                command.Parameters.AddWithValue("@password", passId.Text);
                command.Parameters.AddWithValue("@role", "USER");
                command.ExecuteNonQuery();
                Response.Redirect("Preview.aspx");
                Response.Write("Pomyslnie zarejestrowano!");
            }
            catch (Exception ex)
            {
                Response.Write("Blad: " + ex.ToString());
            }
        }
    }
}