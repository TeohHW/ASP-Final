using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DeleteSchools : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
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

            SqlConnection conn5 = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
            SqlCommand cmd3 = new SqlCommand("SELECT * FROM Courses", conn5);
            conn5.Open();
            SqlDataReader dr3 = cmd3.ExecuteReader();
            DropDownList2.DataSource = dr3;
            DropDownList2.DataTextField = "courseDetail";
            DropDownList2.DataValueField = "courseID";
            DropDownList2.DataBind();
            dr3.Close();
            conn5.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conDel = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conDel = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand delete2 = new SqlCommand("Delete from Courses Where courseID='" + DropDownList2.SelectedValue + "'", conDel);

        try
        {
            conDel.Open();
            delete2.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            conDel.Close();
        }
        Response.Redirect("DeleteSchools.aspx");
    }
 
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter daa = new SqlDataAdapter("Select * from Schools where schoolID='"+DropDownList1.SelectedValue+"'", con);
        daa.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter daa = new SqlDataAdapter("Select * from Schools ", con);
        daa.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con2 = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");          
        con2.Open();
        DataSet ds2 = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("Select * from Courses where courseID='"+DropDownList2.SelectedValue+"' order by schoolID" , con2);
        da.Fill(ds2);
        GridView2.DataSource = ds2;
        GridView2.DataBind();
        con2.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

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

    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        SqlConnection conDel = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conDel = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand delete = new SqlCommand("Delete from Schools Where schoolID='" + DropDownList1.SelectedValue + "'", conDel);

        try
        {
            conDel.Open();
            delete.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            conDel.Close();
        }
        Response.Redirect("DeleteSchools.aspx");
    }
}