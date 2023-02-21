<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="FindUs.aspx.cs" Inherits="FindUs" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        width: 759px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <table class="style1">
    <tr>
        <td class="style3" valign="middle">
                    <p style="text-align: justify">
                        <asp:Label ID="lblOne" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            Text="Get in touch with us!" ForeColor="#99FF99"></asp:Label>
                    </p>
                    <p>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                            Text="Office Number:" ForeColor="#CCFFFF"></asp:Label>
&nbsp;&nbsp;
                        <asp:Image ID="Image2" runat="server" Height="36px" Width="36px" 
                            ImageUrl="~/Images/Phone.png" />
&nbsp;<asp:Label ID="lblNumber" runat="server" Text="(+65) 6788 2001" ForeColor="White" Font-Bold="True" 
                            Font-Size="Large"></asp:Label>
                    </p>
            <p>
                        &nbsp;</p>
                    <p style="width: 742px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                            Text="Email Address:" ForeColor="#CCFFFF"></asp:Label>
&nbsp;&nbsp;
                        <asp:Image ID="Image3" runat="server" Height="36px" Width="34px" 
                            ImageUrl="~/Images/Email.png" />
&nbsp;&nbsp;<asp:Label ID="lblNumber0" runat="server" Text="NorthwindEdu@mail.com" 
                            ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </p>
            <p style="width: 742px">
                        &nbsp;</p>
            <p style="width: 742px">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                            Text="Address:" ForeColor="#CCFFFF"></asp:Label>
&nbsp;<asp:Label ID="lblNumber1" runat="server" Text="21 Tampines Avenue 1," 
                            ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </p>
            <p style="width: 742px; text-align: left;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNumber2" runat="server" Text="Singapore 529757" 
                            ForeColor="White" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;</p>
                </td>
        <td>
                    <br />
                    <asp:Label ID="lblMsg0" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Yellow" Text="You can also find us at this location "></asp:Label>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15954.871895170338!2d103.9328475!3d1.3456614!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8bf2e2929d84a296!2sTemasek+Polytechnic!5e0!3m2!1sen!2ssg!4v1486547092760" 
                        width="600" height="450" frameborder="0" style="border:0" allowfullscreen 
                        id="I1" name="I1"></iframe>
                </td>
    </tr>
    <tr>
        <td class="style3">
                    <p style="width: 600px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            Text="Give us your Feedback !" ForeColor="#99FF99"></asp:Label>
                    </p>
                    <p style="width: 513px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Please select your feedback category" ForeColor="White"></asp:Label>
                    </p>
                    <p>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="courseName" 
                            DataValueField="courseName" Font-Bold="True" Font-Size="Large" 
                            Height="35px" Width="156px">
                            <asp:ListItem>Website</asp:ListItem>
                            <asp:ListItem>Lessons</asp:ListItem>
                            <asp:ListItem>Events</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                    <p>
                        <asp:TextBox ID="TextBox1" runat="server" Height="226px" Width="504px" 
                            autocomplete="off" TextMode="MultiLine" Font-Bold="True" Font-Size="Large"></asp:TextBox>
                    </p>
                    <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Cant be empty !" Font-Bold="True" 
                            Font-Size="Large" ForeColor="Yellow"></asp:RequiredFieldValidator>
                    </p>
                </td>
        <td valign="middle">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Personal Info (Optional)" ForeColor="#CCFFCC"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="Large" 
                        Text="Name:" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="238px" AutoComplete="off" ></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Large" 
                        Text="Email:" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="238px" AutoComplete="off"></asp:TextBox>
                </td>
    </tr>
    <tr>
        <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Send feedback" 
                        onclick="Button1_Click" Height="72px" Width="204px" Font-Size="Large" 
                        Font-Bold="True" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Yellow" Text="Label"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ForeColor="White" Font-Bold="True" />
                </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</p>
</asp:Content>

