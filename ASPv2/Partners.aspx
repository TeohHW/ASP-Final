<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMember.master" AutoEventWireup="true" CodeFile="Partners.aspx.cs" Inherits="Partners" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="1300" ontick="Timer1_Tick">
            </asp:Timer>
            <br />
            <p>
                <asp:Label ID="lblOne" runat="server" Font-Bold="True" Font-Size="50px" 
                    ForeColor="#FF9999" Text="Our Sponsors"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="lblOne0" runat="server" Font-Bold="True" Font-Size="35px" 
                    ForeColor="White" 
                    Text="Here are some of our sponsors that support our cause and worked together with us over all these years. Without them, we would have never made it to where we were today. If you are interested , feel free to drop by their website and support them as well !"></asp:Label>
            </p>
            <p>
                <asp:Image ID="Image1" runat="server" Height="391px" Width="452px" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>

