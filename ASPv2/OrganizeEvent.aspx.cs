using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class OrganizeEvent : System.Web.UI.Page
{
    int x=0;
    string y = "EID";
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = (string)Session["username"];
        string orgID = "OID";
        SqlConnection conOrg = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand o2 = new SqlCommand("Select count(*) from events", conOrg);
        SqlCommand o = new SqlCommand("Select organizerID from Organizers where username='" + username + "'", conOrg);
        conOrg.Open();
        SqlDataReader dr = o.ExecuteReader();
        while (dr.Read())
        { orgID = dr["organizerID"].ToString(); }
        dr.Close();
        conOrg.Close();
        conOrg.Open();
        y = y+o2.ExecuteScalar();
        conOrg.Close();

        SqlCommand organize = new SqlCommand("insert into Events(eventID,eventName,eventDate,location,details,organizerID,status) values('"+y+"','" + txtName.Text.Trim() + "','" + txtDate.Text.Trim() + "','" + txtLocation.Text.Trim() + "','" + txtDetails.Text.Trim() + "','" + orgID + "','Pending')", conOrg);
        conOrg.Open();
        organize.ExecuteNonQuery();
        conOrg.Close();
        txtDate.Text = String.Empty;
        txtLocation.Text = String.Empty;
        txtName.Text = String.Empty;
        txtDate.Text = String.Empty;
        txtName.Text = String.Empty;
        txtDetails.Text = String.Empty;
    }
}