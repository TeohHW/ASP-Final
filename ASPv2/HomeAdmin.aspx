<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="HomeAdmin.aspx.cs" Inherits="HomeAdmin" %>

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
        &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#99CCFF" Text="Home"></asp:Label>
        &nbsp;</p>
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#FF99FF" Text="Welcome" 
            Font-Bold="True" Font-Size="XX-Large"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblName" runat="server" ForeColor="#FF99FF" Text="Label" 
            Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" ForeColor="#FF99FF" 
            Text="What do you want to do today ?" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    </p>
        <p style="text-align: center" __designer:mapid="4c3">
            <asp:Label ID="lblOne1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Text="List of upcoming events" ForeColor="#FFFF99" 
            style="text-align: center"></asp:Label>
            &nbsp;</p>
        <p style="text-align: center" __designer:mapid="4c5">
            &nbsp;
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;</p>
        <table class="style3" __designer:mapid="4cb">
            <tr __designer:mapid="4cc">
                <td class="style4" __designer:mapid="4cd">
                    <asp:GridView ID="GridView3" runat="server" BackColor="LightGoldenrodYellow" autogeneratecolumns="False"
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
                    ForeColor="Black" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
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
    <br />
</asp:Content>

