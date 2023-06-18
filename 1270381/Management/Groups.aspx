<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Groups.aspx.cs" Inherits="_1270381.Management.Groups" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-12">
            <h4>Group</h4>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="GroupId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <EditItemTemplate>
                    <tr style="">
                       
                        <td>
                            <asp:Label ID="GroupIdLabel1" runat="server" Text='<%# Eval("GroupId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GroupNameTextBox" runat="server" Text='<%# Bind("GroupName") %>' />
                        </td>
                         <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                       
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="GroupNameTextBox" runat="server" Text='<%# Bind("GroupName") %>' />
                        </td>
                         <td>
                            <asp:Button CssClass="btn btn-primary" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="btn btn-danger" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                       
                        <td>
                            <asp:Label ID="GroupIdLabel" runat="server" Text='<%# Eval("GroupId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GroupNameLabel" runat="server" Text='<%# Eval("GroupName") %>' />
                        </td>
                         <td>
                            <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button CssClass="btn btn-danger" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table class="table table-bordered" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                       
                                        <th runat="server">GroupId</th>
                                        <th runat="server">GroupName</th>
                                         <th runat="server"></th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                
            </asp:ListView>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Groups] WHERE [GroupId] = @GroupId" InsertCommand="INSERT INTO [Groups] ([GroupName]) VALUES (@GroupName)" SelectCommand="SELECT * FROM [Groups]" UpdateCommand="UPDATE [Groups] SET [GroupName] = @GroupName WHERE [GroupId] = @GroupId">
        <DeleteParameters>
            <asp:Parameter Name="GroupId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="GroupName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="GroupName" Type="String" />
            <asp:Parameter Name="GroupId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
