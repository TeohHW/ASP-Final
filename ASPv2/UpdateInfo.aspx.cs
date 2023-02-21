using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string username = (string)Session["username"];
        int y = 0;
        SqlConnection conOrg = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand o = new SqlCommand("Select count(*) from Organizers where username='" + username + "'", conOrg);
        conOrg.Open();
        y = Convert.ToInt16(o.ExecuteScalar());
        conOrg.Close();

        if (y == 1)
            Response.Redirect("OrganizeEvent.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = (string)Session["username"];
        string x = "OID";
        int a = 0;
        SqlConnection conOrg = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand o2 = new SqlCommand("Select count(*) from Organizers", conOrg);
        conOrg.Open();
        a = Convert.ToInt16(o2.ExecuteScalar());
        a++;
        x = x + a.ToString();
        conOrg.Close();

        SqlCommand organize = new SqlCommand("insert into Organizers(organizerID,company,contactNo,username) values('" + x + "','" + TextBox2.Text.Trim() + "','" + TextBox1.Text.Trim() + "','" + username + "')", conOrg);
        conOrg.Open();
        organize.ExecuteNonQuery();
        conOrg.Close();
        Response.Redirect("OrganizeEvent.aspx");
    }
 
}