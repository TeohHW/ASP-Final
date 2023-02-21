using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FindUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Visible = false;
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
        //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013");    
        SqlCommand insert = new SqlCommand("insert into Feedback(category,feedbackDetails,name,email) values(@category,@feedbackDetails,@name,@email)", con);
        insert.Parameters.AddWithValue("@category", DropDownList1.SelectedValue);
        insert.Parameters.AddWithValue("@feedbackDetails", TextBox1.Text);
        insert.Parameters.AddWithValue("@name", TextBox2.Text);
        insert.Parameters.AddWithValue("@email", TextBox3.Text);

        try
        {
            con.Open();
            insert.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error Sending Feedback";
            con.Close();
        }
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        DropDownList1.SelectedIndex = 0;
        lblMsg.Visible = true;
        lblMsg.Text = "Thank you for your feedback!";
    }
    }
