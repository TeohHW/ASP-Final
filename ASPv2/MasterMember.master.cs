using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterMember : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Lvl = (int)Session["Lvl"];
        string name = (string)Session["name"];
        string user = (string)Session["username"];


        if ((int)Session["Lvl"] == 2)
        {
            LinkButton3.Visible = false;
            LinkButton3.Enabled = false;
            LinkButton2.Visible = false;
            LinkButton2.Enabled = false;
            Menu1.Items.Remove(Menu1.Items[6]);
            MenuItem mnuText = new MenuItem();
            mnuText.NavigateUrl = "";
            mnuText.Text = "";
            Menu1.Items.Add(mnuText);
            MenuItem mnuText2 = new MenuItem();
            mnuText2.NavigateUrl = "";
            mnuText2.Text = "";
            Menu1.Items.Add(mnuText2);
        }

        else if ((int)Session["Lvl"] == 0)
        {
            LinkButton4.Visible = false;
            LinkButton4.Enabled = false;
        }

    }
    protected void btnContact_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }
    protected void btnAboutUs_Click(object sender, EventArgs e)
    {
        Response.Redirect("AboutUs.aspx");
    }
    protected void btnPartners_Click(object sender, EventArgs e)
    {
        Response.Redirect("Partners.aspx");
    }
    protected void btnDonate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Donate.aspx");
    }
    protected void btnFAQ_Click(object sender, EventArgs e)
    {
        Response.Redirect("FAQ.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
       if ((int)Session["Lvl"] == 2)
        { Response.Redirect("HomeGuest.aspx"); }

        else if ((int)Session["Lvl"] == 1)
        { Response.Redirect("HomeAdmin.aspx"); }

        else if ((int)Session["Lvl"] == 0)
        { Response.Redirect("HomeMember.aspx"); }

    }
    protected void btnEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("Events.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("ThankYou.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AccountDetails.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("ThankYou.aspx");
    }
}
