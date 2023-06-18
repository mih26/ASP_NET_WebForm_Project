<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="_1270381.Management.Subjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-12">
            <h4>Subjects</h4>
            <asp:GridView CssClass="table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SubjectId" DataSourceID="dsSubject">
                <Columns>
                    <asp:TemplateField HeaderText="SubjectName" SortExpression="SubjectName">
                        <EditItemTemplate>
                             <asp:TextBox CssClass="form-control" ValidationGroup="g2" ID="TextBox1" runat="server" Text='<%# Bind("SubjectName") %>' />
                                 <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("SubjectName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TeacherName" SortExpression="TeacherName">
                        <EditItemTemplate>
                             <asp:DropDownList CssClass="form-select" DataSourceID="dsTeacher" SelectedValue='<%# Bind("TeacherId") %>' AppendDataBoundItems="true" DataTextField="TeacherName" DataValueField="TeacherId" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ValidationGroup="g2" CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Department is required" Text="Department is required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("TeacherName") %>'></asp:Label>
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
            <h4>add New Subject</h4>
             <asp:FormView ID="FormView1" runat="server" DataKeyNames="SubjectId" DataSourceID="dsSubject" DefaultMode="Insert" RenderOuterTable="False">
                 
                 <InsertItemTemplate>
                     <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             Subject Name
                         </label>
                         <div class="col-4">
                              <asp:TextBox CssClass="form-control" ValidationGroup="g1" ID="TextBox1" runat="server" Text='<%# Bind("SubjectName") %>' />
                                 <asp:RequiredFieldValidator ControlToValidate="TextBox1" CssClass="text-danger" ValidationGroup="g1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" Text="Name is required"></asp:RequiredFieldValidator>
                          </div>
                     </div>
                      <div class="form-group row mb-1">
                         <label class="col-form-label col-2 text-end">
                             Teacher
                         </label>
                           <div class="col-4">
                         <asp:DropDownList CssClass="form-select" DataSourceID="dsTeacher" SelectedValue='<%# Bind("TeacherId") %>' AppendDataBoundItems="true" DataTextField="TeacherName" DataValueField="TeacherId" ID="DropDownList1" runat="server">
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
    <asp:SqlDataSource ID="dsSubject" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Subjects] WHERE [SubjectId] = @SubjectId" InsertCommand="INSERT INTO [Subjects] ([SubjectName], [TeacherId]) VALUES (@SubjectName, @TeacherId)" SelectCommand="SELECT Subjects.SubjectId, Subjects.SubjectName, Subjects.TeacherId, Teachers.TeacherName FROM Subjects INNER JOIN Teachers ON Subjects.TeacherId = Teachers.TeacherId" UpdateCommand="UPDATE [Subjects] SET [SubjectName] = @SubjectName, [TeacherId] = @TeacherId WHERE [SubjectId] = @SubjectId">
        <DeleteParameters>
            <asp:Parameter Name="SubjectId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SubjectName" Type="String" />
            <asp:Parameter Name="TeacherId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SubjectName" Type="String" />
            <asp:Parameter Name="TeacherId" Type="Int32" />
            <asp:Parameter Name="SubjectId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsTeacher" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [TeacherId], [TeacherName] FROM [Teachers]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
