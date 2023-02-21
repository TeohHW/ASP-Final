<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 199px;
            text-align: right;
        }
        .style3
        {
            width: 199px;
            height: 23px;
            text-align: right;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 199px;
            text-align: right;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
    .style7
    {
        width: 199px;
        text-align: right;
        height: 39px;
    }
    .style8
    {
        height: 39px;
    }
        .style9
        {
            color: #006600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" class="style1" width="50%">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtName" runat="server" Width="201px" 
                            AutoComplete="false"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" width="50%">
                        <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="310px" AutoComplete="false"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5" width="50%">
                        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:TextBox ID="txtUsername" runat="server" 
                Width="200px" AutoComplete="false"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" width="50%">
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" 
                Width="200px" TextMode="password"></asp:TextBox>
                        <asp:Label ID="Label10" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7" width="50%">
                        <asp:Label ID="Label3" runat="server" 
                Text="Confirm Password:"></asp:Label>
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtCfmPassword" runat="server" 
                Width="200px" TextMode="password"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Visible="False" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" width="50%">
                        &nbsp;</td>
                    <td>
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <span class="style9"><strong>Account created! Redirecting back to login...
                                </strong></span>
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                    </td>
                </tr>
                <tr>
                    <td class="style2" width="50%">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnCreate" runat="server" 
                onclick="btnCreate_Click" Text="Create Account" />
                    </td>
                </tr>
                <tr>
                    <td class="style2" width="50%">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnBack" runat="server" onclick="btnBack_Click" 
                            Text="Go back" />
                    </td>
                </tr>
                <tr>
                    <td class="style2" width="50%">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
</asp:Content>

