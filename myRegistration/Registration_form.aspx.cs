using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace myRegistration
{
    public partial class Registration_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Label1.Text = "Your registration has been processed";

                SqlConnection conn = new
                SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertuser = "insert into myUsers (username,email,age,country,password) values (@username,@email,@age,@country,@password)";
                SqlCommand comm = new SqlCommand(insertuser, conn);
                comm.Parameters.AddWithValue("@username", TextBox1.Text);
                comm.Parameters.AddWithValue("@email", TextBox2.Text);
                comm.Parameters.AddWithValue("@age",TextBox3.Text);
                comm.Parameters.AddWithValue("@country", DropDownList1.Text);
                comm.Parameters.AddWithValue("@password", TextBox4.Text);
                comm.ExecuteNonQuery();
                Response.Write("Registration is successful");
                conn.Close();
            }
        }

    }
}