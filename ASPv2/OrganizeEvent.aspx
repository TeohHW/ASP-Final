<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="OrganizeEvent.aspx.cs" Inherits="OrganizeEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="White" Text="Organize Events"></asp:Label>
    </p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#FFFF99" Text="Event Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" AutoComplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#FFFF99" Text="Date(Use DD/MM/YY  HH/MM/SS format)"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtDate" runat="server" AutoComplete="off"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="25px" 
                    ForeColor="White" Text="eg.14/2/17  12:00:00" Font-Italic="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#FFFF99" Text="Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLocation" runat="server" AutoComplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#FFFF99" Text="Details"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDetails" runat="server" Height="171px" TextMode="MultiLine" 
                    Width="245px" Font-Names="Segoe UI" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Organize" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

