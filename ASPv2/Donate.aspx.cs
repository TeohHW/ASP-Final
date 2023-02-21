using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class Donate : System.Web.UI.Page
{
    int donation;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        txtCustomD.Enabled = false;
        txtCustomD.Visible = false;
        Label11.Visible = false;
        txtCardNo.MaxLength = 19;
        txtExp.MaxLength = 4;
        txtCode.MaxLength = 3;


    }
    protected void  RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 4)
        {
            Label3.Visible = true;
            txtCustomD.Enabled = true;
            txtCustomD.Visible = true;
        }
}
    protected void  Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 4)
        { donation = Convert.ToInt16(txtCustomD.Text); }
        else
        {
            donation = Convert.ToInt16(RadioButtonList1.SelectedValue);
        }

        SqlConnection conD = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true"); // making connection  
       // SqlConnection conD = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlCommand donate = new SqlCommand("insert into Donation(donationAmt, email, paymentOption, city, cardNumber, expirationDate, securityCode) values('"+donation+"',@email,@paymentOption,@city,@cardNo,@ExpD,@security)", conD);

        donate.Parameters.AddWithValue("@email", txtEmail.Text);
        donate.Parameters.AddWithValue("@paymentOption", DropDownList1.SelectedValue);
        donate.Parameters.AddWithValue("@city", txtCity.Text);
        donate.Parameters.AddWithValue("@CardNo", txtCardNo.Text);
        donate.Parameters.AddWithValue("@ExpD", txtExp.Text);
        donate.Parameters.AddWithValue("@security", txtCode.Text);
        try
        {
            conD.Open();
            donate.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            conD.Close();
        }

        txtCustomD.Text = "";
        txtEmail.Text = "";
        txtCity.Text = "";
        txtCardNo.Text = "";
        txtExp.Text = "";
        txtExp.Text = "";
        txtCode.Text = "";
        Label11.Visible = true;
        Label11.Text = "Thank you for your generous donation !";
    }
}


