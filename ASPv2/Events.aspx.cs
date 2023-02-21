using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("Select eventName,eventDate,location,details from Events where status='Accepted'", con);
        cmd.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("select eventName,eventDate,location,details from Events where status='Accepted' AND eventName LIKE '%" + txtEvent.Text + "%'", con);
        cmd.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("Select eventName,eventDate,location,details from Events where status='Accepted'", con);
        cmd.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();
        con.Close();
    }
}