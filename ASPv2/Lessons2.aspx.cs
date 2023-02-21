using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Lessons2 : System.Web.UI.Page
{
    string y = "CID";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn4 = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        SqlCommand cmd2 = new SqlCommand("SELECT * FROM Schools", conn4);
        conn4.Open();
        SqlDataReader dr2 = cmd2.ExecuteReader();
        DropDownList1.DataSource = dr2;
        DropDownList1.DataTextField = "schoolName";
        DropDownList1.DataValueField = "schoolID";
        DropDownList1.DataBind();
        dr2.Close();
        conn4.Close();

        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter daa = new SqlDataAdapter("Select * from Schools", con);
        daa.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

        SqlConnection con2 = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con2.Open();
        DataSet ds2 = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("Select * from Courses ORDER by schoolID", con2);
        da.Fill(ds2);
        GridView2.DataSource = ds2;
        GridView2.DataBind();
        con2.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string username = (string)Session["username"];
        string x = "CID";
        int a = 0;
        //SqlConnection conOrg = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand o2 = new SqlCommand("Select count(*) from Courses", conOrg);
        conOrg.Open();
        a = Convert.ToInt16(o2.ExecuteScalar());
        a++;
        x = x + a.ToString();
        conOrg.Close();

        SqlCommand organize = new SqlCommand("insert into Schools(schoolID,schoolName,schoolLocation,website) values('" + x + "','" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + DropDownList1.SelectedValue + "')", conOrg);
        conOrg.Open();
        organize.ExecuteNonQuery();
        conOrg.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string orgID = "SID";
        int a = 0;
        //SqlConnection conOrg = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand o2 = new SqlCommand("Select count(*) from Courses", conOrg);
        SqlCommand o = new SqlCommand("Select schoolID from Courses", conOrg);
        conOrg.Open();
        SqlDataReader dr = o.ExecuteReader();
        while (dr.Read())
        { orgID = dr["schoolID"].ToString(); }
        dr.Close();
        conOrg.Close();
        conOrg.Open();
        a = Convert.ToInt16(o2.ExecuteScalar());
        a++;
        y = y + a.ToString();
        
        conOrg.Close();

        SqlCommand organize = new SqlCommand("insert into Courses(courseID,courseName,courseDetail,schoolID) values('" + y + "','" + TextBox4.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + DropDownList1.SelectedValue+"')", conOrg);
        conOrg.Open();
        organize.ExecuteNonQuery();
        conOrg.Close();
    }
}
