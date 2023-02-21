<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Lessons2.aspx.cs" Inherits="Lessons2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
    }
        .style8
        {
    }
        .style9
        {
            height: 36px;
            }
        .style11
    {
        width: 855px;
    }
    .style13
    {
        width: 601px;
    }
    .style14
    {
        width: 855px;
        height: 390px;
    }
    .style15
    {
        height: 390px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="style1">
                    <tr>
                        <td class="style8" colspan="2">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                Font-Underline="True" ForeColor="White" Text="Add new school :"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" autogeneratecolumns="false" 
                                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" Height="411px" Width="846px">
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                <SortedDescendingHeaderStyle BackColor="#002876" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                                <Columns>
                                    <asp:BoundField DataField="schoolID" HeaderText="School ID" />
                                    <asp:BoundField DataField="schoolName" HeaderText="School Name" />
                                    <asp:BoundField DataField="schoolLocation" HeaderText="Location" />
                                    <asp:BoundField DataField="website" HeaderText="Website" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" 
                                Text="School Name"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" Height="26px" 
                               Width="229px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" 
                                Height="52px" onclick="Button1_Click" Text="Add new school" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" 
                                Text="Location"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="227px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" 
                                Text="Website"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server" Height="26px" 
                                 Width="227px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <table class="style1">
                    <tr>
                        <td class="style11">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                Font-Underline="True" ForeColor="White" Text="Add new course"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="White" Text="Select a school :"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                                Font-Size="Large" Height="30px" Width="175px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style14">
                            <asp:GridView ID="GridView2" runat="server" autogeneratecolumns="false" 
                                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" Height="395px" Width="833px">
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                <SortedDescendingHeaderStyle BackColor="#002876" />
                                <Columns>
                                    <asp:BoundField DataField="courseID" HeaderText="Course ID" />
                                    <asp:BoundField DataField="courseName" HeaderText="Subject" />
                                    <asp:BoundField DataField="courseDetail" HeaderText="Details" />
                                    <asp:BoundField DataField="schoolID" HeaderText="ID" />
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td class="style15">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="White" Text="Course Subject"></asp:Label>
                            &nbsp;&nbsp;<br /> <asp:TextBox ID="TextBox4" runat="server" Height="32px" 
                                Width="246px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                                ForeColor="White" Text="Details"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Size="Medium" 
                                Height="187px" TextMode="MultiLine" 
                                Width="322px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                Height="55px" onclick="Button2_Click" Text="Add course" Width="158px" />
                        </td>
                    </tr>
                </table>
            </p>
            <p>
                &nbsp;</p>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>

