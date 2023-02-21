using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AccountDetails : System.Web.UI.Page
{
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label9.Visible = false;
        if (!Page.IsPostBack)
        {
            a = 0;
            string username = (string)Session["username"];
            SqlConnection conOrg = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
            //SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
            SqlDataAdapter o = new SqlDataAdapter("Select * from Users where username='" + username + "'", conOrg);
            conOrg.Open();
            DataSet dsa = new DataSet();
            o.Fill(dsa, "Users");
            TextBox1.Text = (string)Session["name"];
            TextBox2.Text = (string)Session["username"];
            TextBox3.Text = dsa.Tables["Users"].Rows[0]["password"].ToString();
            TextBox4.Text = dsa.Tables["Users"].Rows[0]["password"].ToString();
            TextBox5.Text = dsa.Tables["Users"].Rows[0]["email"].ToString();
            conOrg.Close();

            SqlCommand o2 = new SqlCommand("Select count(*) from Organizers where username='" + username + "'", conOrg);
            SqlDataAdapter oo = new SqlDataAdapter("Select * from Organizers where username='" + username + "'", conOrg);
            conOrg.Open();

            a = Convert.ToInt16(o2.ExecuteScalar());
            conOrg.Close();
            conOrg.Open();

            if (a == 1)
            {
                DataSet dsa2 = new DataSet();
                oo.Fill(dsa2, "Organizers");
                TextBox6.Text = dsa2.Tables["Organizers"].Rows[0]["company"].ToString();
                TextBox7.Text = dsa2.Tables["Organizers"].Rows[0]["contactNo"].ToString();
            }
            else if (a == 0)
            {
                TextBox6.Text = "";
                TextBox7.Text = "";
            }

            conOrg.Close();

        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    { 
        string username = (string)Session["username"];
        int lvl = (int)Session["Lvl"];
        string x = "OID";
        int b = 0;
        a = 0;
        SqlConnection conUpdate = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 

        SqlCommand o2 = new SqlCommand("Select count(*) from Organizers where username='" + username + "'", conUpdate);
        conUpdate.Open();
        a = Convert.ToInt16(o2.ExecuteScalar());
        conUpdate.Close();
        if (TextBox3.Text == TextBox4.Text)
        {
            if (a == 1)
            {
                SqlCommand organize = new SqlCommand("Update Organizers set company='" + TextBox6.Text.Trim() + "', contactNo='" + TextBox7.Text.Trim() + "' where username = '" + username + "'", conUpdate);
                conUpdate.Open();
                organize.ExecuteNonQuery();
                conUpdate.Close();
                SqlCommand organize2 = new SqlCommand("Update Users set name='" + TextBox1.Text.Trim() + "',username='" + TextBox2.Text.Trim() + "',password='" + TextBox3.Text.Trim() + "',email='" + TextBox5.Text.Trim() + "'where username='" + username + "'", conUpdate);
                conUpdate.Open();
                if (TextBox3.Text == TextBox4.Text)
                {
                    organize2.ExecuteNonQuery();
                }
                conUpdate.Close();
                System.Threading.Thread.Sleep(TimeSpan.FromSeconds(5));
                Response.Redirect("HomeMember.aspx");
            }

            else if (a == 0)
            {
                SqlCommand o3 = new SqlCommand("Select count(*) from Organizers", conUpdate);
                conUpdate.Open();
                b = Convert.ToInt16(o3.ExecuteScalar());
                b++;
                x = x + b.ToString();
                conUpdate.Close();
                SqlCommand organize3 = new SqlCommand("insert into Organizers(organizerID,company,contactNo,username) values(@organizerID,@company,@number,@user)", conUpdate);
                organize3.Parameters.AddWithValue("@organizerID", x);
                organize3.Parameters.AddWithValue("@company", TextBox6.Text);
                organize3.Parameters.AddWithValue("@number", TextBox7.Text);
                organize3.Parameters.AddWithValue("@user", TextBox2.Text);
                conUpdate.Open();
                organize3.ExecuteNonQuery();
                conUpdate.Close();
                SqlCommand organize2 = new SqlCommand("Update Users set name='" + TextBox1.Text.Trim() + "',username='" + TextBox2.Text.Trim() + "',password='" + TextBox3.Text.Trim() + "',email='" + TextBox5.Text.Trim() + "'where username='" + username + "'", conUpdate);
                conUpdate.Open();
                if (TextBox3.Text == TextBox4.Text)
                {
                    organize2.ExecuteNonQuery();
                }
                conUpdate.Close();
                System.Threading.Thread.Sleep(TimeSpan.FromSeconds(5));
                Response.Redirect("HomeMember.aspx");
            }
        }
        else
            Label9.Visible = true;
    }
}