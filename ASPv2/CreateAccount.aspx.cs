using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CreateAccount : System.Web.UI.Page
{
    int x = 0;
    int y = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "")
        {
            x++;
        }
        else { Label7.Visible = true; Label7.Text = "Please enter a Name"; }
        if (txtEmail.Text != "")
        {
            x++;
        }
        else { Label8.Visible = true; Label8.Text = "Please enter an Email"; }
        if (txtUsername.Text != "" && txtUsername.Text.Length > 3)
        {
            x++;
        }
        else { Label9.Visible = true; Label9.Text = "Please enter a Username of at least 3 characters"; }
        if (txtPassword.Text != "")
        {
            x++;
        }
        else { Label10.Visible = true; Label10.Text = "Please enter a Password"; }
        if (txtCfmPassword.Text == txtPassword.Text)
        {
            x++;
        }
        else { Label6.Visible = true; Label6.Text = "Password does not match"; }

        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true"); // making connection  
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); // making connection 
            SqlCommand cmd = new SqlCommand("Select username from Users", con);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (txtUsername.Text == (string)dr["username"])
                { Label9.Visible = true; Label9.Text = "Username is in use"; y++; break; }
            }
            if (y != 1)
            { x++; }
            dr.Close();
            con.Close();

        if (x == 6)
        {

            con.Open();
            string company = " ";
            string contactNo = " ";

            SqlCommand donate = new SqlCommand("insert into Users(username,password,accessLevel,name,email) values('" + txtUsername.Text.Trim() + "','" + txtPassword.Text.Trim() + "','0','" + txtName.Text.Trim() + "','" + txtEmail.Text.Trim() + "')", con);
            donate.ExecuteNonQuery();
            con.Close();
            System.Threading.Thread.Sleep(TimeSpan.FromSeconds(3));
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}