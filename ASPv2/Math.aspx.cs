using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Math : System.Web.UI.Page
{
    int x = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image11.Visible = false;  
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "2" || TextBox1.Text == "two")
            x++;
        else
            x = x;
        if (TextBox6.Text == "4" || TextBox1.Text == "four")
            x++;
        else
            x = x;
        if (TextBox7.Text == "17" || TextBox7.Text == "seventeen")
            x++;
        else
            x = x;
        if (TextBox8.Text == "6" || TextBox8.Text == "six")
            x++;
        else
            x = x;
        if (TextBox9.Text == "8" || TextBox9.Text == "eight")
            x++;
        else
            x = x;

        lblScore.Text = x.ToString();
        TextBox1.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox7.Text = String.Empty;
        TextBox8.Text = String.Empty;
        TextBox9.Text = String.Empty;
        Image11.Visible = true;

    }
}