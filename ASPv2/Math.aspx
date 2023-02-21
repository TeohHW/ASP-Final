<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="Math.aspx.cs" Inherits="Math" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: center;
        }
        #I1
        {
            height: 331px;
            width: 567px;
        }
        .style4
        {
            height: 31px;
        }
        .style5
        {
            text-align: left;
        }
        .style6
        {
            width: 597px;
        }
        .style7
        {
            height: 31px;
            width: 597px;
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
                    <td colspan="2">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Learn to count with this song !"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        <iframe ID="I1" allowfullscreen="" frameborder="0" height="315" name="I1" 
                            src="https://www.youtube.com/embed/EbgwPx6mYu4" width="560"></iframe>
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3" colspan="2" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Quiz Time!"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="2" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="White" Text="Answer using numbers ( 0, 1, 2, 3...)"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Image ID="Image2" runat="server" Height="202px" 
                            ImageUrl="~/Images/Count.JPG" Width="338px" />
                    </td>
                    <td style="border-style: solid; border-color: #800000; background-color: #800000">
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                ForeColor="White" Text="How many dots are there?"></asp:Label>
                        </p>
                        <p>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="63px" 
                                Width="325px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td class="style6" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Image ID="Image7" runat="server" Height="168px" 
                            ImageUrl="~/Images/Count2.JPG" Width="317px" />
                    </td>
                    <td style="border-style: solid; border-color: #800000; background-color: #800000">
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                ForeColor="White" Text="How many dots are there?"></asp:Label>
                        </p>
                        <p>
                            <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" Height="65px" 
                                Width="325px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td class="style6" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Image ID="Image8" runat="server" Height="183px" 
                            ImageUrl="~/Images/Count3.JPG" Width="359px" />
                    </td>
                    <td style="border-style: solid; border-color: #800000; background-color: #800000">
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                ForeColor="White" Text="How many dots are there?"></asp:Label>
                        </p>
                        <p>
                            <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" Height="65px" 
                                Width="325px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td class="style6" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Image ID="Image9" runat="server" Height="192px" 
                            ImageUrl="~/Images/Count4.JPG" Width="350px" />
                    </td>
                    <td style="border-style: solid; border-color: #800000; background-color: #800000">
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                ForeColor="White" Text="How many dots are there?"></asp:Label>
                        </p>
                        <p>
                            <asp:TextBox ID="TextBox8" runat="server" Font-Size="Large" Height="65px" 
                                Width="325px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td class="style7" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Image ID="Image10" runat="server" Height="210px" 
                            ImageUrl="~/Images/Count5.JPG" Width="507px" />
                    </td>
                    <td class="style4" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <p>
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                ForeColor="White" Text="How many dots are there?"></asp:Label>
                        </p>
                        <p>
                            <asp:TextBox ID="TextBox9" runat="server" Font-Size="Large" Height="65px" 
                                Width="325px"></asp:TextBox>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td class="style7" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        &nbsp;</td>
                    <td class="style4" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                            Height="76px" onclick="Button1_Click" Text="Submit" Width="208px" />
                    </td>
                </tr>
                <tr>
                    <td class="style7" 
                        
                        style="border-style: solid; border-color: #800000; background-color: #800000; text-align: right;">
                        <asp:Image ID="Image11" runat="server" Height="149px" 
                            ImageUrl="~/Images/Congrats.gif" Width="176px" />
                    </td>
                    <td class="style4" 
                        style="border-style: solid; border-color: #800000; background-color: #800000">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Your score :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblScore" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White"></asp:Label>
                    </td>
                </tr>
            </table>
            <p>
                &nbsp;</p>
            <p>
                <br />
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
<br />
<br />
<br />
<br />
<br />
<br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

