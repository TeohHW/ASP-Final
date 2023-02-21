using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EventsAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnUpdate.Enabled = true;
        btnOK.Visible = false;
        btnOK.Enabled = false;
        int x=0;
        SqlConnection conn4 = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        // SqlConnection conn4 = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");
        SqlCommand cmd1 = new SqlCommand("SELECT count(*) FROM Events", conn4);
        conn4.Open();
        x=Convert.ToInt16(cmd1.ExecuteScalar());
        conn4.Close();
        if (x == 0)
        {
            Label19.Visible = true;
        }
        else
        {
            if (!Page.IsPostBack)
            {


                SqlCommand cmd2 = new SqlCommand("SELECT * FROM Events", conn4);
                conn4.Open();
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList2.DataSource = dr2;
                DropDownList2.DataTextField = "eventName";
                DropDownList2.DataValueField = "eventID";
                DropDownList2.DataBind();
                dr2.Close();
                conn4.Close();


                SqlConnection conn = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
                //SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");
                SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM Events", conn);
                conn.Open();
                DataSet dsa = new DataSet();
                cmd.Fill(dsa, "Events");
                Label12.Text = dsa.Tables["Events"].Rows[0]["eventID"].ToString();
                Label13.Text = dsa.Tables["Events"].Rows[0]["eventName"].ToString();
                Label14.Text = dsa.Tables["Events"].Rows[0]["eventDate"].ToString();
                Label15.Text = dsa.Tables["Events"].Rows[0]["location"].ToString();
                txtDetails.Text = dsa.Tables["Events"].Rows[0]["details"].ToString();
                Label17.Text = dsa.Tables["Events"].Rows[0]["organizerID"].ToString();
                Label18.Text = dsa.Tables["Events"].Rows[0]["status"].ToString();
                conn.Close();

            }
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");
        SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM Events where eventID='" + DropDownList2.SelectedValue + "'", conn);
        conn.Open();
        DataSet dsa = new DataSet();
        cmd.Fill(dsa, "Events");
        Label12.Text = dsa.Tables["Events"].Rows[0]["eventID"].ToString();
        Label13.Text = dsa.Tables["Events"].Rows[0]["eventName"].ToString();
        Label14.Text = dsa.Tables["Events"].Rows[0]["eventDate"].ToString();
        Label15.Text = dsa.Tables["Events"].Rows[0]["location"].ToString();
        txtDetails.Text = dsa.Tables["Events"].Rows[0]["details"].ToString();
        Label17.Text = dsa.Tables["Events"].Rows[0]["organizerID"].ToString();
        Label18.Text = dsa.Tables["Events"].Rows[0]["status"].ToString();
        conn.Close();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string status;
        status = "Accepted";
        SqlConnection conOrg = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conOrg = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand organize = new SqlCommand("Update Events set status= '" + status + "' where eventID = '" + DropDownList2.SelectedValue + "'", conOrg);
        SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM Events where eventID='" + DropDownList2.SelectedValue + "'", conOrg);
        DataSet dsa = new DataSet();
        try
        {
            conOrg.Open();
            organize.ExecuteNonQuery();
            cmd.Fill(dsa, "Events");
            Label12.Text = dsa.Tables["Events"].Rows[0]["eventID"].ToString();
            Label13.Text = dsa.Tables["Events"].Rows[0]["eventName"].ToString();
            Label14.Text = dsa.Tables["Events"].Rows[0]["eventDate"].ToString();
            Label15.Text = dsa.Tables["Events"].Rows[0]["location"].ToString();
            txtDetails.Text = dsa.Tables["Events"].Rows[0]["details"].ToString();
            Label17.Text = dsa.Tables["Events"].Rows[0]["organizerID"].ToString();
            Label18.Text = dsa.Tables["Events"].Rows[0]["status"].ToString();
        }
        catch (Exception ex)
        {
            conOrg.Close();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        btnUpdate.Enabled = false;
        txtDate.Enabled = true;
        txtDetails2.Enabled = true;
        txtLocation.Enabled = true;
        txtName.Enabled = true;
        btnOK.Visible = true;
        btnOK.Enabled = true;
        SqlConnection conn = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");
        SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM Events where eventID='" + DropDownList2.SelectedValue + "'", conn);
        conn.Open();
        DataSet dsa = new DataSet();
        cmd.Fill(dsa, "Events");
        txtName.Text = dsa.Tables["Events"].Rows[0]["eventName"].ToString();
        txtDate.Text = dsa.Tables["Events"].Rows[0]["eventDate"].ToString();
        txtLocation.Text = dsa.Tables["Events"].Rows[0]["location"].ToString();
        txtDetails2.Text = dsa.Tables["Events"].Rows[0]["details"].ToString();
        conn.Close();

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection conDel = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conDel = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand delete = new SqlCommand("Delete from Events Where eventID='" + DropDownList2.SelectedValue + "'", conDel);

        try
        {
            conDel.Open();
            delete.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            conDel.Close();
        }
        Response.Redirect("EventsAdmin.aspx");
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        btnUpdate.Enabled = true;
        SqlConnection conUp = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection conUp = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand organize = new SqlCommand("update Events set eventName ='" + txtName.Text.Trim() + "', eventDate='" + txtDate.Text.Trim() + "', location='" + txtLocation.Text.Trim() +
                "', details = '" + txtDetails2.Text.Trim() + "' where eventID ='" + DropDownList2.SelectedValue + "'", conUp);
        try
        {
            conUp.Open();
            organize.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            conUp.Close();
        }
        txtName.Text = String.Empty;
        txtDetails2.Text = String.Empty;
        txtLocation.Text = String.Empty;
        txtDate.Text = String.Empty;
        Response.Redirect("EventsAdmin.aspx");
    }
}
