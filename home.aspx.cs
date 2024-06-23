using System;
using System.Data;
using System.Data.SqlClient;

namespace schoolManagement
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Data Source=WINCTRL-4RO405U\MSSQLSERVER2012;Initial Catalog=SchoolManagementSystem;Integrated Security=True
    SqlConnection con =new SqlConnection(@"Data Source=WINCTRL-4RO405U\MSSQLSERVER2012;Initial Catalog=SchoolManagementSystem;Integrated Security=True");
            string query="select * from userlog where username ='"+txtuser.Text+"' and password ='"+txtpass.Text+"'and usertype ='"+ DropDownList1.SelectedItem.ToString()+"'";
            SqlDataAdapter sda = new SqlDataAdapter(query,con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count >0)
            {
                Response.Write("<script>alert('you are logined as "+dt.Rows[0][2]+"')</script>");
                    if(DropDownList1.SelectedIndex == 0)
                    {
                        Server.Transfer("admin.aspx");
                    }
                    else{Server.Transfer("student.aspx");
                    
                    }
        
              }
                       
            else
            {
                Response.Write("error in your input");
                    
             }
         }
        public void Button1_Click1(object sender, EventArgs e)
        {
            
        }
    }     
}
   