using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Lvl = (int)Session["Lvl"];
        string name = (string)Session["name"];
        string user = (string)Session["username"];

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
        { Response.Redirect("HomeAdmin.aspx"); }
    }
    protected void btnEvent_Click(object sender, EventArgs e)
    {
        Response.Redirect("Events.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}
