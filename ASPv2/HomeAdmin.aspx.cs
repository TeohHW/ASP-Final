using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HomeAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = (string)Session["name"];
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("Select eventName,eventDate,location,details from Events where status='Pending'", con);
        cmd.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();
        con.Close();
    }
}