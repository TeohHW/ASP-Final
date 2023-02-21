<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Donations.aspx.cs" Inherits="Donations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                ForeColor="White" Text="Donations"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Height="457px" Width="975px" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
          <Columns>
                        <asp:BoundField DataField="transactionID" HeaderText="ID" />
                        <asp:BoundField DataField="donationAmt" HeaderText="Donation Amount" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="paymentOption" HeaderText="Payment Option" />
                        <asp:BoundField DataField="city" HeaderText="City" />
                    </Columns>
    </asp:GridView>
    <br />
    <br />
</asp:Content>

