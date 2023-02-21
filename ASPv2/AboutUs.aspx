<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 783px;
        }
        .style3
        {
            width: 783px;
            height: 23px;
        }
        .style5
        {
            width: 783px;
            height: 31px;
        }
        .style7
    {
        width: 783px;
        height: 24px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style7" style="background-image: none">
                </td>
            </tr>
            <tr>
                <td class="style5" style="background-image: none; text-align: center;">
                    <asp:Label ID="lblOne" runat="server" Font-Bold="True" Font-Size="60px" 
                        Text="Our Mission Statement" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="background-image: none; text-align: center;">
                    <br />
                    <asp:Label ID="lblMission" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="White" Font-Italic="True"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" style="background-image: none; text-align: center;">
                    <asp:Label ID="lblOne2" runat="server" Font-Bold="True" Font-Size="60px" 
                        Text="Goals" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" style="background-image: none; text-align: center;">
                    <br />
                    <asp:Label ID="lblGoals" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="White" Font-Italic="True"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" style="background-image: none; text-align: center;">
                    <asp:Label ID="lblOne0" runat="server" Font-Bold="True" Font-Size="60px" 
                        Text="Our Achievements" ForeColor="Yellow" Font-Underline="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="background-image: none; text-align: center;">
                    <asp:Image ID="Image3" runat="server" Height="320px" 
                        ImageUrl="~/Images/champion.gif" Width="411px" />
                    &#39;<br />
                    <asp:Label ID="lblAchievements" runat="server" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="White" Font-Italic="True"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" style="background-image: none; text-align: center;">
                    <asp:Label ID="lblOne1" runat="server" Font-Bold="True" Font-Size="60px" 
                        Text="Our Story" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="background-image: none; text-align: center;">
                    <asp:Label ID="lblStory" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="White" Font-Italic="True"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3" style="background-image: none">
                </td>
            </tr>
        </table>
    <br />
</p>
</asp:Content>

