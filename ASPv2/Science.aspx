<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="Science.aspx.cs" Inherits="Science" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 31px;
            text-align: left;
            width: 584px;
        }
        .style6
        {
            height: 5px;
            text-align: left;
            width: 584px;
        }
        .style7
        {
            height: 5px;
            text-align: left;
            width: 641px;
        }
        .style8
        {
            width: 641px;
        }
        .style9
        {
            height: 31px;
            text-align: left;
            width: 641px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style1">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Watch this video :)"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <iframe ID="I1" allowfullscreen="" frameborder="0" height="315" name="I1" 
                            src="https://www.youtube.com/embed/Pu0uZUKSC-s" width="560"></iframe>
                    </td>
                </tr>
                <tr>
                    <td style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            Font-Underline="True" ForeColor="White" Text="Quiz"></asp:Label>
                    </td>
                    <td class="style8" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Image ID="Image2" runat="server" Height="295px" 
                            ImageUrl="~/Images/Wood.png" Width="339px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Wood"></asp:Label>
                        &nbsp;
                        <br />
                    </td>
                    <td class="style9" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="White" Height="270px" Width="251px">
                            <asp:ListItem>Solid</asp:ListItem>
                            <asp:ListItem>Liquid</asp:ListItem>
                            <asp:ListItem>Gas</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style6" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Image ID="Image3" runat="server" Height="295px" 
                            ImageUrl="~/Images/Sand.png" Width="339px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Sand"></asp:Label>
                        &nbsp;
                        <br />
                    </td>
                    <td class="style7" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="White" Height="265px" Width="230px">
                            <asp:ListItem>Solid</asp:ListItem>
                            <asp:ListItem>Liquid</asp:ListItem>
                            <asp:ListItem>Gas</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style5" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Image ID="Image4" runat="server" Height="295px" 
                            ImageUrl="~/Images/Steam.jpg" Width="339px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Steam"></asp:Label>
                        &nbsp;
                        <br />
                    </td>
                    <td class="style9" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="White" Height="269px" Width="235px">
                            <asp:ListItem>Solid</asp:ListItem>
                            <asp:ListItem>Liquid</asp:ListItem>
                            <asp:ListItem>Gas</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style5" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Image ID="Image5" runat="server" Height="311px" 
                            ImageUrl="~/Images/Water.jpeg" Width="190px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Water"></asp:Label>
                        &nbsp;
                        <br />
                    </td>
                    <td class="style9" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="White" Height="300px" Width="279px">
                            <asp:ListItem>Solid</asp:ListItem>
                            <asp:ListItem>Liquid</asp:ListItem>
                            <asp:ListItem>Gas</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style5" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Image ID="Image6" runat="server" Height="295px" 
                            ImageUrl="~/Images/Ice Cube.jpg" Width="339px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Ice"></asp:Label>
                        &nbsp;
                        <br />
                    </td>
                    <td class="style9" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="White" Height="300px" Width="293px">
                            <asp:ListItem>Solid</asp:ListItem>
                            <asp:ListItem>Liquid</asp:ListItem>
                            <asp:ListItem>Gas</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style5" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        &nbsp;</td>
                    <td class="style9" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        &nbsp;</td>
                    <td class="style9" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                            Height="67px" onclick="Button1_Click" Text="Submit" Width="179px" />
                    </td>
                </tr>
                <tr>
                    <td class="style5" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image7" runat="server" Height="149px" 
                            ImageUrl="~/Images/Congrats.gif" Width="176px" />
                    </td>
                    <td class="style9" 
                        style="border-style: solid; border-color: #298BF3; background-color: #1B7AE4">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="White" Text="Your score:"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblScore" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="White"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

