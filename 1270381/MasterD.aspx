<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MasterD.aspx.cs" Inherits="_1270381.MasterD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div CssclasS="" class="col-12">
            <div><h1>Group</h1></div>
            <asp:GridView cssclass="table-bordered text-center" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="GroupId" DataSourceID="dsgroups">
                <Columns>
                    <asp:TemplateField HeaderText="GroupId" InsertVisible="False" SortExpression="GroupId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("GroupId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("GroupId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GroupName" SortExpression="GroupName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("GroupName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("GroupName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton cssclass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton cssclass="btn btn-danger" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-12" >
             <div><h1>Student Details</h1></div>
            <asp:GridView cssclass="table-bordered text-center" ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="dsstudents">
                <Columns>
                    <asp:TemplateField HeaderText="StudentId" InsertVisible="False" SortExpression="StudentId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("StudentId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("StudentId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StudentName" SortExpression="StudentName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StudentName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("StudentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="email" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("DOB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Picture") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GroupId" SortExpression="GroupId">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("GroupId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("GroupId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-warning" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <asp:SqlDataSource ID="dsgroups" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Groups] WHERE [GroupId] = @GroupId" InsertCommand="INSERT INTO [Groups] ([GroupName]) VALUES (@GroupName)" SelectCommand="SELECT * FROM [Groups]" UpdateCommand="UPDATE [Groups] SET [GroupName] = @GroupName WHERE [GroupId] = @GroupId">
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
    <asp:SqlDataSource  ID="dsstudents" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [Students] ([StudentName], [Address], [email], [DOB], [Picture], [GroupId]) VALUES (@StudentName, @Address, @email, @DOB, @Picture, @GroupId)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [StudentName] = @StudentName, [Address] = @Address, [email] = @email, [DOB] = @DOB, [Picture] = @Picture, [GroupId] = @GroupId WHERE [StudentId] = @StudentId">
        <DeleteParameters>

            <asp:Parameter Name="StudentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StudentName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="GroupId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="StudentName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="GroupId" Type="Int32" />
            <asp:Parameter Name="StudentId" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
