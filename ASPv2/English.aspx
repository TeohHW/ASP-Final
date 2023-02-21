<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="English.aspx.cs" Inherits="Lessons_English" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {            text-align: center;
        }
        .style6
        {
        }
        .style13
        {
            text-align: center;
        }
        .style14
        {
            width: 351px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    <br />
                    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <br />
            <table class="style1">
                <tr>
                    <td class="style3" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Lets learn nouns !"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        <iframe ID="I1" allowfullscreen="" frameborder="0" height="315" name="I1" 
                            src="https://www.youtube.com/embed/tquecIG-Pws" width="560"></iframe>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13" bgcolor="#FFCCFF" colspan="2">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="Black" Text="Quiz Time !"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6" colspan="2" bgcolor="#FFCCFF">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="Black" Text="Is the noun a place,animal,person or thing ?"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        <asp:Image ID="Image2" runat="server" Height="281px" 
                            ImageUrl="~/English/English1.JPG" Width="271px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="Black" Text="Pen"></asp:Label>
                    </td>
                    <td bgcolor="#FFCCFF">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="Black" Height="223px" Width="189px">
                            <asp:ListItem>Place</asp:ListItem>
                            <asp:ListItem>Animal</asp:ListItem>
                            <asp:ListItem>Person</asp:ListItem>
                            <asp:ListItem>Thing</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        <asp:Image ID="Image3" runat="server" Height="281px" 
                            ImageUrl="~/English/English2.JPG" Width="223px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="Black" Text="Girl"></asp:Label>
                    </td>
                    <td bgcolor="#FFCCFF">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="Black" Height="223px" Width="189px">
                            <asp:ListItem>Place</asp:ListItem>
                            <asp:ListItem>Animal</asp:ListItem>
                            <asp:ListItem>Person</asp:ListItem>
                            <asp:ListItem>Thing</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        <asp:Image ID="Image4" runat="server" Height="250px" 
                            ImageUrl="~/English/English3.JPG" Width="275px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="Black" Text="Shop"></asp:Label>
                    </td>
                    <td bgcolor="#FFCCFF">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="Black" Height="223px" Width="189px">
                            <asp:ListItem>Place</asp:ListItem>
                            <asp:ListItem>Animal</asp:ListItem>
                            <asp:ListItem>Person</asp:ListItem>
                            <asp:ListItem>Thing</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        <asp:Image ID="Image5" runat="server" Height="241px" 
                            ImageUrl="~/English/English4.JPG" Width="259px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="Black" Text="Mat"></asp:Label>
                    </td>
                    <td bgcolor="#FFCCFF">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="Black" Height="223px" Width="189px">
                            <asp:ListItem>Place</asp:ListItem>
                            <asp:ListItem>Animal</asp:ListItem>
                            <asp:ListItem>Person</asp:ListItem>
                            <asp:ListItem>Thing</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        <asp:Image ID="Image6" runat="server" Height="244px" 
                            ImageUrl="~/English/English5.JPG" Width="298px" />
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="Black" Text="Garden"></asp:Label>
                    </td>
                    <td bgcolor="#FFCCFF">
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="Black" Height="223px" Width="189px">
                            <asp:ListItem>Place</asp:ListItem>
                            <asp:ListItem>Animal</asp:ListItem>
                            <asp:ListItem>Person</asp:ListItem>
                            <asp:ListItem>Thing</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        &nbsp;</td>
                    <td bgcolor="#FFCCFF">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            ForeColor="Black" Height="92px" onclick="Button1_Click" Text="Submit" 
                            Width="181px" />
                    </td>
                    <td bgcolor="#FFCCFF">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14" bgcolor="#FFCCFF">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="Black" Text="Your Score:"></asp:Label>
                        &nbsp;<br />
                        <br />
                        <asp:Label ID="lblScore" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="Black"></asp:Label>
                    </td>
                    <td bgcolor="#FFCCFF">
                        &nbsp;<asp:Image ID="Image7" runat="server" Height="132px" 
                            ImageUrl="~/Images/Congrats.gif" Width="176px" />
                    </td>
                </tr>
            </table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

