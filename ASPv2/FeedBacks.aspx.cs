using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FeedBacks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
       // SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Feedback", con);
        con.Open();
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("Select * from Feedback where category LIKE '%" + TextBox1.Text + "%'", con);
        cmd.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        TextBox1.Text = String.Empty;
    }
}