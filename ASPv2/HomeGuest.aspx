<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="HomeGuest.aspx.cs" Inherits="HomeGuest" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
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
</p>
<table class="style1" align="center">
        <tr>
            <td style="text-align: center">
                <asp:ImageButton ID="imgBtnEng" runat="server" Height="157px" 
                    ImageUrl="~/Images/English.jpg" Width="157px" onclick="imgBtnEng_Click" />
            </td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="141px" 
                    ImageUrl="~/Images/Math.png" Width="150px" onclick="ImageButton2_Click" />
            </td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="133px" 
                    ImageUrl="~/Images/Science.png" onclick="ImageButton3_Click1" Width="137px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="English" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Math" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:Label ID="Label3" runat="server" Text="Science" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
    </table>
    
    
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <br />
        <br />
        <p style="text-align: center">
            <asp:Label ID="lblOne" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#FFFF99" style="text-align: center" Text="Find a school near you!"></asp:Label>
            &nbsp;</p>
        <p style="text-align: center">
            <asp:Label ID="lblLocation" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#FFFF99" Text="Search by Address:"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtAd" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="Refresh" />
        </p>
        <p style="text-align: center">
            &nbsp;</p>
        <table class="style3">
            <tr>
                <td class="style4">
                    <asp:GridView ID="GridView1" runat="server" autogeneratecolumns="false" 
                        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="100%">
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
                            <asp:BoundField DataField="schoolName" HeaderText="School Name" />
                            <asp:BoundField DataField="schoolLocation" HeaderText="Location" />
                            <asp:BoundField DataField="website" HeaderText="School Website" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <p style="text-align: center">
            &nbsp;</p>
    </ContentTemplate>
</asp:UpdatePanel>
<p>
    &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
    <p style="text-align: center">
        &nbsp;</p>
</asp:Content>

