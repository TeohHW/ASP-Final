<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;<table class="style1" align="center" style="border: thin solid #000000">
            <tr>
                <td>
                    <p style="text-align: right">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblUsername" runat="server" Font-Italic="False" 
                            Font-Names="Segoe UI" Font-Size="X-Large" Text="Username:"></asp:Label>
&nbsp;&nbsp;
                    </p>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" AutoComplete="off"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="Username Required!" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblPassword" runat="server" Font-Italic="False" 
                        Font-Names="Segoe UI" Font-Size="X-Large" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Password Required!" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style3">
                    </td>
                <td class="style3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    </td>
                <td class="style2">
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="Log in" 
                        Width="71px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2" style="text-align: right">
                    &nbsp;</td>
                <td class="style2">
                    <br />
                    <asp:Button ID="btnGuest" runat="server" onclick="btnGuest_Click" 
                        Text="Enter as guest" CausesValidation="False"/>
                &nbsp; or&nbsp;
                    <asp:Button ID="btnCrAccount" runat="server" onclick="btnCrAccount_Click" 
                        Text="Create an Account" CausesValidation="False"/>
                    <br />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

