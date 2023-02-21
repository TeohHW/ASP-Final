<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            color: #006600;
        }
        .style10
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style10">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="style10">
            <br />
            <span class="style9" __designer:mapid="141">
<strong __designer:mapid="142" 
    
                style="font-size: xx-large; color: #008000; font-style: normal; text-transform: none; font-weight: bold; text-align: center;">
Thank you for using our site ! We hope to see you again !</strong></span></div>
    </p>
    <p style="text-align: center">
        <asp:Image ID="Image3" runat="server" Height="258px" 
            ImageUrl="~/Images/Thank you.gif" Width="492px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

