using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HomeMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //lblName.Text= (string)Session["name"];
        string user = (string)Session["username"];
        
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        SqlCommand cmd2 = new SqlCommand("Select name from Users where username='"+user+ "'", con);
        con.Open();
        SqlDataReader dr;
        dr = cmd2.ExecuteReader();
        while (dr.Read())
        { lblName.Text = dr["name"].ToString(); }
        dr.Close();
        con.Close();
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("Select schoolName,schoolLocation,website from Schools", con);
        cmd.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }
    protected void imgBtnEng_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("English.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Math.aspx");
    }
    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Science.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("Select schoolName,schoolLocation,website from Schools where schoolLocation LIKE '%"+txtAd.Text+"%'", con);
        cmd.Fill(ds);
        GridView1.DataSource = ds;  
        GridView1.DataBind();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter cmd = new SqlDataAdapter("Select schoolName,schoolLocation,website from Schools", con);
        cmd.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    }
