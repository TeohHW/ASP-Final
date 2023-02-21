<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="EventsAdmin.aspx.cs" Inherits="EventsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style11
        {
            width: 406px;
        }
        .style4
        {
            width: 406px;
            height: 30px;
        }
        .style5
        {
            height: 30px;
        }
        .style13
    {
        width: 166px;
        text-align: left;
        height: 72px;
    }
    .style14
    {
        width: 406px;
        height: 72px;
    }
    .style15
    {
        width: 166px;
        text-align: left;
        height: 68px;
    }
    .style16
    {
        width: 406px;
        height: 68px;
    }
    .style17
    {
        width: 166px;
        text-align: left;
        height: 59px;
    }
    .style18
    {
        width: 406px;
        height: 59px;
    }
    .style19
    {
        width: 166px;
        text-align: left;
        height: 64px;
    }
    .style20
    {
        width: 406px;
        height: 64px;
    }
    .style21
    {
        width: 166px;
        text-align: left;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Sorry, seems like we are out of events !" 
            Visible="False" Font-Size="X-Large"></asp:Label>
                        </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                Height="64px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                Width="204px" Font-Bold="True" Font-Size="Large">
            </asp:DropDownList>
            <br />
            <table class="style1">
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style11">
                        </td>
                    <td rowspan="9">
                        &nbsp;<asp:Label ID="Label23" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Event Name" Font-Size="Large"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtName" runat="server" Enabled="False" AutoComplete="off" 
                            Font-Bold="True" Font-Size="Large" Width="326px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Date" Font-Size="Large"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtDate" runat="server" Enabled="False" AutoComplete="off" 
                            Font-Bold="True" Font-Size="Large" Height="33px" Width="332px"></asp:TextBox>
                        &nbsp;
                        <br />
                        <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Location" Font-Size="Large"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtLocation" runat="server" Enabled="False" AutoComplete="off" 
                            Font-Bold="True" Font-Size="Large" Width="326px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Details" Font-Size="Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:TextBox ID="txtDetails2" runat="server" Enabled="False" Height="277px" 
                            TextMode="MultiLine" Width="372px" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="EventID" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="White" 
                            Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Event Name" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="style16">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="White" 
                            Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Event Date" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="style18">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="White" 
                            Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Location" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="style20">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="White" 
                            Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Details" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="txtDetails" runat="server" Enabled="False" Height="197px" 
                            TextMode="MultiLine" Width="309px" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="OrganizerID" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="White" 
                            Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="White" 
                            Text="Status" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="White" 
                            Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" colspan="2">
                        <asp:Button ID="btnAdd" runat="server" Text="Accept" onclick="btnAdd_Click" 
                            Height="52px" Font-Bold="True" Font-Size="Large"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" 
                            onclick="btnDelete_Click" Height="48px" Width="103px" Font-Bold="True" 
                            Font-Size="Large" />
                    </td>
                    <td class="style5">
                        <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                            Text="Update" Height="53px" Width="118px" Font-Bold="True" 
                            Font-Size="Large" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnOK" runat="server" Height="43px" onclick="btnOK_Click" 
                            Text="Accept Changes" Width="224px" Font-Bold="True" Font-Size="Large" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

