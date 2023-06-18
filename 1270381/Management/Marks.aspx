<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="_1270381.Management.Marks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div><h3> Marks </h3></div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="SubjectId,StudentId" DataSourceID="dsMarks" InsertItemPosition="LastItem">
        
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button CssClass="btn btn-primary btn-sm" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button CssClass="btn btn-danger btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="SubjectIdLabel1" runat="server" Text='<%# Eval("SubjectId") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentIdLabel1" runat="server" Text='<%# Eval("StudentId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MarkTextBox" runat="server" Text='<%# Bind("Mark") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ResultDateTextBox" runat="server" Text='<%# Bind("ResultDate") %>' />
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
                    <asp:Button CssClass="btn btn-primary btn-sm" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button CssClass="btn btn-danger btn-sm" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="SubjectIdTextBox" runat="server" Text='<%# Bind("SubjectId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MarkTextBox" runat="server" Text='<%# Bind("Mark") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ResultDateTextBox" runat="server" Text='<%# Bind("ResultDate") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="SubjectIdLabel" runat="server" Text='<%# Eval("SubjectId") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                </td>
                <td>
                    <asp:Label ID="MarkLabel" runat="server" Text='<%# Eval("Mark") %>' />
                </td>
                <td>
                    <asp:Label ID="ResultDateLabel" runat="server" Text='<%# Eval("ResultDate") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table class="table" runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table class="table table-bordered" id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">SubjectId</th>
                                <th runat="server">StudentId</th>
                                <th runat="server">Mark</th>
                                <th runat="server">ResultDate</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
    </asp:ListView>
    <asp:SqlDataSource ID="dsMarks" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Marks] WHERE [SubjectId] = @SubjectId AND [StudentId] = @StudentId" InsertCommand="INSERT INTO [Marks] ([SubjectId], [StudentId], [Mark], [ResultDate]) VALUES (@SubjectId, @StudentId, @Mark, @ResultDate)" SelectCommand="SELECT * FROM [Marks]" UpdateCommand="UPDATE [Marks] SET [Mark] = @Mark, [ResultDate] = @ResultDate WHERE [SubjectId] = @SubjectId AND [StudentId] = @StudentId">
        <DeleteParameters>
            <asp:Parameter Name="SubjectId" Type="Int32" />
            <asp:Parameter Name="StudentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SubjectId" Type="Int32" />
            <asp:Parameter Name="StudentId" Type="Int32" />
            <asp:Parameter Name="Mark" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ResultDate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Mark" Type="Int32" />
            <asp:Parameter DbType="Date" Name="ResultDate" />
            <asp:Parameter Name="SubjectId" Type="Int32" />
            <asp:Parameter Name="StudentId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
