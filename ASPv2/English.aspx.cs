using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lessons_English : System.Web.UI.Page
{
    int y = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image7.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "Thing")
            y++;
        else
            y = y;
        if (RadioButtonList2.SelectedValue == "Person")
            y++;
        else
            y = y;
        if (RadioButtonList3.SelectedValue == "Place")
            y++;
        else
            y = y;
        if (RadioButtonList4.SelectedValue == "Thing")
            y++;
        else
            y = y;
        if (RadioButtonList5.SelectedValue == "Place")
            y++;

        else
            y = y;

        RadioButtonList1.ClearSelection();
        RadioButtonList2.ClearSelection();
        RadioButtonList3.ClearSelection();
        RadioButtonList4.ClearSelection();
        RadioButtonList5.ClearSelection();
        lblScore.Text = y.ToString();
        Image7.Visible = true;
    }
}