<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="_1270381.Management.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div> <h3>Teachers</h3> </div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="odsTeachers" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Button  CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button  CssClass="btn btn-danger" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="TeacherIdLabel" runat="server" Text='<%# Eval("TeacherId") %>' />
                </td>
                <td>
                    <asp:Label ID="TeacherNameLabel" runat="server" Text='<%# Eval("TeacherName") %>' />
                </td>
                <td>
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button CssClass="btn btn-primary" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button CssClass="btn btn-danger" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="TeacherIdTextBox" runat="server" Text='<%# Bind("TeacherId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TeacherNameTextBox" runat="server" Text='<%# Bind("TeacherName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button CssClass="btn btn-primary" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button CssClass="btn btn-danger" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="TeacherIdTextBox" runat="server" Text='<%# Bind("TeacherId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TeacherNameTextBox" runat="server" Text='<%# Bind("TeacherName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button CssClass="btn btn-danger" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="TeacherIdLabel" runat="server" Text='<%# Eval("TeacherId") %>' />
                </td>
                <td>
                    <asp:Label ID="TeacherNameLabel" runat="server" Text='<%# Eval("TeacherName") %>' />
                </td>
                <td>
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">TeacherId</th>
                                <th runat="server">TeacherName</th>
                                <th runat="server">Phone</th>
                                <th runat="server">email</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Button  CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button  CssClass="btn btn-danger" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="TeacherIdLabel" runat="server" Text='<%# Eval("TeacherId") %>' />
                </td>
                <td>
                    <asp:Label ID="TeacherNameLabel" runat="server" Text='<%# Eval("TeacherName") %>' />
                </td>
                <td>
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
</asp:ListView>
<asp:ObjectDataSource ID="odsTeachers" runat="server" DataObjectTypeName="_1270381.App_Code.Teacher" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Get" TypeName="_1270381.App_Code.TeacherRepo" UpdateMethod="update"></asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
