using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace schoolManagement
{
    public partial class Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            updateGrid();

        }

        public void updateGrid()
        {
            SqlConnection con = new SqlConnection(@"Data Source=WINCTRL-4RO405U\MSSQLSERVER2012;Initial Catalog=SchoolManagementSystem;Integrated Security=True");
            DataTable dt = new DataTable();
            con.Open();
            SqlDataAdapter adapt = new SqlDataAdapter("select * from teacherform2", con);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        //GridView1
        protected void btnsubmited_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=WINCTRL-4RO405U\MSSQLSERVER2012;Initial Catalog=SchoolManagementSystem;Integrated Security=True");
            {
                con.Open();
                var id = Guid.NewGuid().ToString();
                SqlCommand cmd = new SqlCommand("insert into teacherform2 values (@id,@name,@address,@contact,@class,@division)", con);
                cmd.Parameters.AddWithValue("id", id);
                cmd.Parameters.AddWithValue("name", txtname.Text);
                cmd.Parameters.AddWithValue("address", txtaddress.Text);
                cmd.Parameters.AddWithValue("contact",txtcontact.Text);
                cmd.Parameters.AddWithValue("class", Convert.ToInt32(txtclass.Text));
                cmd.Parameters.AddWithValue("division", txtdiv.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('succsessfully created')</script>");
                txtname.Text = "";
                txtaddress.Text = "";
                txtcontact.Text = "";
                txtclass.Text = "";
                txtdiv.Text = "";
                updateGrid();
            }
        }
    }
}