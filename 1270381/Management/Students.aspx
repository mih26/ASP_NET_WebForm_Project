<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="_1270381.Management.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-12">
            <h4>Students</h4>
            <asp:GridView CssClass="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="dsStudent" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="StudentName" SortExpression="StudentName">
                        <EditItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox1" runat="server" Text='<%# Bind("StudentName") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("StudentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" SortExpression="Address">
                        <EditItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" TextMode="MultiLine" ID="TextBox2" runat="server" Text='<%# Bind("Address") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is required" Text="Address is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="email" SortExpression="email">
                        <EditItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox7" runat="server" Text='<%# Bind("email") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g2" ID="RequiredFieldValidator4" runat="server" ErrorMessage="email is required" Text="email is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DOB" SortExpression="DOB">
                        <EditItemTemplate>
                            <asp:TextBox CssClass="form-control date" ValidationGroup="g2" ID="TextBox3" runat="server" Text='<%# Bind("DOB", "{0:yyyy-MM-dd}") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="date is required" Text="Date is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("DOB", "{0:yyyy-MM-dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                        <EditItemTemplate>
                           <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                         <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("Picture") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src='<%# Eval("Picture", "/Uploads/{0}") %>' class="rounded-circle" style="width:40px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GroupName" SortExpression="GroupName">
                        <EditItemTemplate>
                             <asp:DropDownList CssClass="form-select" DataSourceID="dsGroup" SelectedValue='<%# Bind("GroupId") %>' AppendDataBoundItems="true" DataTextField="GroupName" DataValueField="GroupId" ID="DropDownList1" runat="server">
                                 <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                             </asp:DropDownList>
                             <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("GroupName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="g2" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary btn-sm" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
         <div class="col-12">
            <h4>Add New Student</h4>
             <asp:FormView ID="FormView1" runat="server" DataKeyNames="StudentId" DataSourceID="dsStudent" DefaultMode="Insert" RenderOuterTable="False" OnItemInserting="FormView1_ItemInserting">
                 
                 <InsertItemTemplate>
                     <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             Student Name
                         </label>
                         <div class="col-4">
                             <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox1" runat="server" Text='<%# Bind("StudentName") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                         </div>
                     </div>
                     <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             Address
                         </label>
                         <div class="col-4">
                             <asp:TextBox CssClass="form-control" ValidationGroup="g1" TextMode="MultiLine" ID="TextBox2" runat="server" Text='<%# Bind("Address") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is required" Text="Address is required"></asp:RequiredFieldValidator>
                         </div>
                     </div>
                      <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             Email
                         </label>
                         <div class="col-4">
                             <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox7" runat="server" Text='<%# Bind("email") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="email is required" Text="email is required"></asp:RequiredFieldValidator>
                         </div>
                     </div>
                     <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             DOB
                         </label>
                         <div class="col-4">
                             <asp:TextBox CssClass="form-control date" ValidationGroup="g1" ID="TextBox3" runat="server" Text='<%# Bind("DOB", "{0:yyyy-MM-dd}") %>' />
                             <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="date is required" Text="Date is required"></asp:RequiredFieldValidator>
                         </div>
                     </div>
                     <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             Student Name
                         </label>
                         <div class="col-4">
                         <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                         <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("Picture") %>' />
                         <asp:RequiredFieldValidator ControlToValidate="FileUpload1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Image is required" Text="Image is required"></asp:RequiredFieldValidator>
                             </div>
                     </div>
                     <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             Group
                         </label>
                         <div class="col-4">
                             <asp:DropDownList CssClass="form-select" DataSourceID="dsGroup" SelectedValue='<%# Bind("GroupId") %>' AppendDataBoundItems="true" DataTextField="GroupName" DataValueField="GroupId" ID="DropDownList1" runat="server">
                                 <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                             </asp:DropDownList>
                             <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g1" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                         </div>
                     </div>
                      <div class="form-group row mb-1">
                         
                         <div class="col-4 offset-2">
                             <asp:LinkButton CssClass="btn btn-primary btn-sm" ValidationGroup="g1" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                     &nbsp;<asp:LinkButton CssClass="btn btn-danger btn-sm" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                         </div>
                     </div>
                    
                 </InsertItemTemplate>
                
             </asp:FormView>
        </div>
    </div>
    <asp:SqlDataSource ID="dsStudent" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [Students] ([StudentName], [Address], [email], [DOB], [Picture], [GroupId]) VALUES (@StudentName, @Address, @email, @DOB, @Picture, @GroupId)" SelectCommand="SELECT Students.StudentId, Students.StudentName, Students.Address, Students.email, Students.DOB, Students.Picture, Students.GroupId, Groups.GroupName FROM Students INNER JOIN Groups ON Students.GroupId = Groups.GroupId" UpdateCommand="UPDATE [Students] SET [StudentName] = @StudentName, [Address] = @Address, [email] = @email, [DOB] = @DOB, [Picture] = @Picture, [GroupId] = @GroupId WHERE [StudentId] = @StudentId">
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
    <asp:SqlDataSource ID="dsGroup" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Groups]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script src="../Scripts/jquery-1.4.4.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        $(".date").datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
</asp:Content>
