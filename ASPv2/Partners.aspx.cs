using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Partners : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
    {
        SetImageUrl();
    }
    }
        private void SetImageUrl()
{
    // Create an instance of Random class
    Random _rand = new Random();
    // Generate a random number between 1 and 8
    int i = _rand.Next(1, 8);
    // Set ImageUrl using the generated random number
    Image1.ImageUrl = "~/SlideShow/" + i.ToString() + ".jpg";
}
    
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }
}
