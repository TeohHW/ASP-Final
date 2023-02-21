<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 100%;
        }
        .style4
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <p style="text-align: center">
            <asp:Label ID="lblOne1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Text="Events" ForeColor="#FFFF99" 
            style="text-align: center"></asp:Label>
            &nbsp;</p>
        <p style="text-align: center">
            <asp:Label ID="lblLocation0" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Text="Search by Event Name:" ForeColor="#FFFF99"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtEvent" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Refresh" 
        onclick="Button2_Click" />
        </p>
        <p style="text-align: center">
            &nbsp;</p>
        <table class="style3">
            <tr>
                <td class="style4">
                    <asp:GridView ID="GridView3" runat="server" BackColor="White" autogeneratecolumns="false"
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                        <Columns>
                            <asp:BoundField DataField="eventName" HeaderText="Event Name" />
                            <asp:BoundField DataField="eventDate" HeaderText="Date" />
                            <asp:BoundField DataField="location" HeaderText="Location" />
                            <asp:BoundField DataField="details" HeaderText="Details
                    " />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
    <br __designer:mapid="95e" />
    <p>
        &nbsp;</p>
    <br />
</asp:Content>

