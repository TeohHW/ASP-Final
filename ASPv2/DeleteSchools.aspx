<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="DeleteSchools.aspx.cs" Inherits="DeleteSchools" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            height: 36px;
            }
        .style13
        {
            width: 601px;
        }
        .style11
        {
            width: 855px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p>
            </p>
                <ContentTemplate>
                    <p>
                        &nbsp;<table class="style1">
                            <tr>
                                <td class="style8" colspan="2">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        Font-Underline="True" ForeColor="White" Text="Delete a school :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style8" colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style9" colspan="2">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                                        Font-Size="Large" Height="30px" 
                                         Width="175px" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" Font-Bold="True" 
                                        onclick="Button3_Click" Text="See all" />
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
                                    <asp:Button ID="ButtonDelete" runat="server" Font-Bold="True" Font-Size="Large" 
                                        Height="52px" onclick="ButtonDelete_Click" Text="Delete a school" 
                                        Width="250px" />
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
                                        Font-Underline="True" ForeColor="White" Text="Delete a course"></asp:Label>
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
                                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" 
                                        Font-Size="Large" Height="30px" 
                                       Width="487px" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                                        onclick="Button2_Click" Text="See all" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
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
                                <td>
                                    &nbsp;&nbsp;<br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        Height="55px" onclick="Button1_Click" Text="Delete course" Width="174px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </p>
                </ContentTemplate>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

