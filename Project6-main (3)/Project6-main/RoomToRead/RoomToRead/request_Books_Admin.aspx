<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request_Books_Admin.aspx.cs" Inherits="RoomToRead.request_Books_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script src="Scripts/sweetalert.min.js"></script>
    <link href="Styles/sweetalert.css" rel="stylesheet" />
 <link rel="stylesheet" href="AdminCss/vendors/ti-icons/css/themify-icons.css"/>
  <link rel="stylesheet" href="AdminCss/vendors/base/vendor.bundle.base.css"/>
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="AdminCss/css/style.css"/>
  <!-- endinject -->
  <link rel="shortcut icon" href="AdminCss/images/favicon.png" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
<style>
    #add{
        margin-top:6%;
    }
    .containergrid{
        width:80%;
        
        margin-left:5%;
    }
    #editAnddelete{
        width:80%;
        margin-left:auto;
        margin-right:auto;
    }
    #GridView1{
        font-size:2rem;
    }
    .table tr td{
        font-size:1.5rem;
    }
</style></head>
<body>
    <form id="form1" runat="server">
        
               <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="../../index.html"><img src="../../images/Logo.png" class="mr-2" alt="logo" style="height: 65px; width: 65px;"/></a>
        <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../images/Logo.png" alt="logo"  style="height: 60px; width: 60px;"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>
              <div class="container-fluid page-body-wrapper" style="padding-top:0px !important">
      <!-- partial:../../partials/_sidebar.html -->
      
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
         <li class="nav-item">
            <a class="nav-link" href="Sales.aspx">
              <i class="fa-solid fa-clipboard-list" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp;Sales</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="AdminCategory.aspx">
              <i class="fa-solid fa-clipboard-list" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp;Category</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:56508/Product.aspx">
              <i class="fa-solid fa-book" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp; Product</span>
            </a>
          </li>
        
          <li class="nav-item">
            <a class="nav-link" href="Users.aspx">
              <i class="fa-solid fa-user" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp; Users</span>
            </a>
          </li>


            <li class="nav-item">
                <a class="nav-link" ID="LinkButton1"  runat="server">
              <i class="fa fa-sign-out" style="font-size: 20px;"></i>
              <span class="menu-title">&nbsp; Logout</span>
             </a>
          </li>


        </ul>
      </nav>
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h2>Books</h2>
                    <br />
                  
                  <div class="table-responsive">
       
                      <h6><a href='CreateCat.aspx'>Create New</a></h6>
        
                         
                  </div>

                </div>
              </div>
                
            </div>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [books] WHERE [book_id] = @book_id" InsertCommand="INSERT INTO [books] ([book_id], [user_id], [category_id], [Book_description], [book_name], [donating_date], [approve], [taken], [Book_image]) VALUES (@book_id, @user_id, @category_id, @Book_description, @book_name, @donating_date, @approve, @taken, @Book_image)" SelectCommand="SELECT * FROM [books]" UpdateCommand="UPDATE [books] SET [user_id] = @user_id, [category_id] = @category_id, [Book_description] = @Book_description, [book_name] = @book_name, [donating_date] = @donating_date, [approve] = @approve, [taken] = @taken, [Book_image] = @Book_image WHERE [book_id] = @book_id">
                <DeleteParameters>
                    <asp:Parameter Name="book_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="book_id" Type="Int32" />
                    <asp:Parameter Name="user_id" Type="String" />
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="Book_description" Type="String" />
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="donating_date" />
                    <asp:Parameter Name="approve" Type="Int32" />
                    <asp:Parameter Name="taken" Type="Boolean" />
                    <asp:Parameter Name="Book_image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_id" Type="String" />
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="Book_description" Type="String" />
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="donating_date" />
                    <asp:Parameter Name="approve" Type="Int32" />
                    <asp:Parameter Name="taken" Type="Boolean" />
                    <asp:Parameter Name="Book_image" Type="String" />
                    <asp:Parameter Name="book_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <br />
                <br />
              <div class="containergrid">
                 
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" CssClass="table table-striped">
                    <Columns>
                        <asp:BoundField DataField="category_id" HeaderText="Category Id" SortExpression="category_id" />
                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                        <asp:TemplateField HeaderText="Book Image" SortExpression="Book_image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Book_image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Book_description" HeaderText="Book Description" SortExpression="Book_description" />
                        <asp:BoundField DataField="donating_date" HeaderText="Donating Date" SortExpression="donating_date" />
                        <asp:CheckBoxField DataField="taken" HeaderText="taken" SortExpression="taken" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("approve") %>'>
                                    <asp:ListItem Value="1">Accept</asp:ListItem>
                                    <asp:ListItem Value="2">Reject</asp:ListItem>
                                    <asp:ListItem Value="0">Wait</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Enabled="False" SelectedValue='<%# Eval("approve") %>'>
                                    <asp:ListItem Value="1">Accept</asp:ListItem>
                                    <asp:ListItem Value="2">Reject</asp:ListItem>
                                    <asp:ListItem Value="0">Wait</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />
              </div>
               
              
          </div>
        </div>
         </div>
        </div>        

  </div>
           <script src="AdminCss/vendors/base/vendor.bundle.base.js"></script>
<script src="AdminCss/js/off-canvas.js"></script>
  <script src="AdminCss/js/hoverable-collapse.js"></script>
  <script src="AdminCss/js/template.js"></script>
  <script src="AdminCss/js/todolist.js"></script>



             <script type="text/javascript">
                 function successalert() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Category has been succesfully added',
                         type: 'success'
                     });
                 }

                 function successaler() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Category has been succesfully deleted',
                         type: 'success'
                     });
                 }
                 function successale() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Category has been succesfully updated',
                         type: 'success'
                     });
                 }
             </script>
        </div>
    </form>
</body>
</html>
