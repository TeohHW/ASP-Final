using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    int a = 2;
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = 2;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        //SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true"); // making connection  
        SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); // making connection  
        SqlCommand cmd = new SqlCommand("Select accessLevel, name from Users where username='" + txtUsername.Text + "' and password ='" + txtPassword.Text + "'", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        
        if (dt.Rows.Count > 0)
        {
            a = Convert.ToInt16(dt.Rows[0]["accessLevel"]);
            name = dt.Rows[0]["name"].ToString();
            Session["Lvl"] = a;
            Session["name"] = name;
            Session["username"] = txtUsername.Text.Trim();
            if (a == 1)
            {
                Response.Redirect("HomeAdmin.aspx");
            }
            else if (a == 0)
            {
                Response.Redirect("HomeMember.aspx");
            }
        }

        con.Close();
    }
    
    protected void btnGuest_Click(object sender, EventArgs e)
    {
        Session["Lvl"] = 2;
        Response.Redirect("HomeGuest.aspx");
    }
    protected void btnCrAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateAccount.aspx");
    }
}