using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schoolManagement
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnStd_Click(object sender, EventArgs e)
        {
            //Server.Transfer("student.aspx");
            Response.Redirect("student.aspx");
        }

        protected void btnTeacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("Teacher.aspx");
        }
    }
}