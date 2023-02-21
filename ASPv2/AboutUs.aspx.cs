using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMission.Text = "Our mission is to ensure that children everywhere, boys and girls alike will be able to get a chance to complete a full course of primary schooling.";
            lblGoals.Text = " To achieve universal education for everyone and to give our future theirs";
            lblAchievements.Text = "We have managed to gathered partners that have the same mission as us and are planning to work towards our goal of achieving universal education. We have funded 1000 or so events and given opportunity for universal primary education to millions";
            lblStory.Text = "Northind Education started as a small idea between two indecisive duo who wanted to dream big. After shelving the idea over a couple thousand times, met with the opportunity and the motivation the organization was realized. Now everyday since 1987, Northwind Education has been dedicated in making it's goal come true. Getting closer to achieving our goal, every year we are motivated to do more.";
        }
    }