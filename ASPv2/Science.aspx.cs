using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Science : System.Web.UI.Page
{
    int y=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        lblScore.Visible = false;
        Image7.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedValue == "Solid")
            y++;
        else
            y = y;
        if (RadioButtonList3.SelectedValue == "Solid")
            y++;
        else
            y = y;
        if (RadioButtonList4.SelectedValue == "Gas")
            y++;
        else
            y = y;
        if (RadioButtonList5.SelectedValue == "Liquid")
            y++;
        else
            y = y;
        if (RadioButtonList6.SelectedValue == "Solid")
            y++;

        else
            y = y;


        Label4.Visible = true;
        lblScore.Visible = true;
        RadioButtonList2.ClearSelection();
        RadioButtonList3.ClearSelection();
        RadioButtonList4.ClearSelection();
        RadioButtonList5.ClearSelection();
        RadioButtonList6.ClearSelection();
        lblScore.Text = y.ToString()+"/5";
        Image7.Visible = true;
    }
}