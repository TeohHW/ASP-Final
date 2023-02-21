using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Donations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WEI;Initial Catalog=EducationNorth;Integrated Security=true");
       // SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=EducationNorth;user=user; password=Password_2013"); 
        SqlDataAdapter sda = new SqlDataAdapter("Select transactionID,donationAmt,email,paymentOption,city from Donation", con);
        con.Open();
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
}