<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="Donate.aspx.cs" Inherits="Donate" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 37px;
        }
        .style5
        {
            width: 422px;
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
                    <td colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            ForeColor="White" Text="Contribute to our cause!"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="Select from one of the options below :"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3" colspan="3">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                            Font-Bold="True" Font-Size="X-Large" ForeColor="#FFFF99" Height="210px" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" Width="186px">
                            <asp:ListItem Value="10"> $10</asp:ListItem>
                            <asp:ListItem Value="25"> $25</asp:ListItem>
                            <asp:ListItem> $50</asp:ListItem>
                            <asp:ListItem> $100</asp:ListItem>
                            <asp:ListItem> Other</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="For donations above $100, please specify (using integers):" 
                            Visible="False"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtCustomD" runat="server" Font-Bold="True" Font-Size="Large" 
                            Height="48px" Visible="False" Width="318px" 
                          TextMode="SingleLine"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="Your Email (Optional)"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:TextBox ID="txtEmail" runat="server" Font-Bold="True" Font-Size="Large" 
                            Height="48px" Width="318px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="201px" 
                            ImageUrl="~/Images/MasterCard.png" Width="213px" />
                    </td>
                    <td>
                        <asp:Image ID="Image3" runat="server" Height="201px" 
                            ImageUrl="~/Images/American Express.png" Width="213px" />
                    </td>
                    <td>
                        <asp:Image ID="Image4" runat="server" Height="201px" 
                            ImageUrl="~/Images/Visa.png" Width="213px" />
                    </td>
                    <td>
                        <asp:Image ID="Image5" runat="server" Height="201px" 
                            ImageUrl="~/Images/Paypal.png" Width="213px" />
                    </td>
                </tr>
            </table>
<br />
            <table class="style1">
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="Select your payment option:"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                            Font-Size="Large" Height="40px" Width="209px">
                            <asp:ListItem>Master Card</asp:ListItem>
                            <asp:ListItem>American Express</asp:ListItem>
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>Paypal</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="City:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" Height="28px" Width="326px" 
                            Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtCity" ErrorMessage="City required !" Font-Bold="True" 
                            ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="Card Number:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCardNo" runat="server" Height="28px" Width="326px" 
                            Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtCardNo" ErrorMessage="Card no. required !" 
                            Font-Bold="True" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="Expiration date ( using MMYY ) :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtExp" runat="server" Height="28px" Width="326px" 
                            Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtExp" ErrorMessage="Expiration Date required !" 
                            Font-Bold="True" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White" Text="Security Code :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCode" runat="server" Height="28px" Width="326px" 
                            Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtCode" ErrorMessage="Security code required !" 
                            Font-Bold="True" ForeColor="White"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        </td>
                    <td class="style9">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
                            ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Height="70px" onclick="Button1_Click" Text="Donate" Width="177px" />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="White"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

