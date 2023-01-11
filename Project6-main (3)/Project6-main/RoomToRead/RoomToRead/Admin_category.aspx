<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_category.aspx.cs" Inherits="RoomToRead.dashboard" %>

<!DOCTYPE html>
<style>
    .container{
       padding-top:0px !important;
    }
</style>
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
</style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
    <!-- partial -->
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
                  <h2>Categories</h2>
                    <br />
                  
                  <div class="table-responsive">
       
                      <h6><a href='CreateCat.aspx'>Create New</a></h6>
        
                   <%-- Header text --%>                           

                  
                  
                  </div>

                </div>
              </div>
                
            </div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoomToReadConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([category_description], [category_name], [catergoy_image]) VALUES (@category_description, @category_name, @catergoy_image)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [category_description] = @category_description, [category_name] = @category_name, [catergoy_image] = @catergoy_image WHERE [category_id] = @category_id">
                   <DeleteParameters>
                       <asp:Parameter Name="category_id" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="category_description" Type="String" />
                       <asp:Parameter Name="category_name" Type="String" />
                       <asp:Parameter Name="catergoy_image" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="category_description" Type="String" />
                       <asp:Parameter Name="category_name" Type="String" />
                       <asp:Parameter Name="catergoy_image" Type="String" />
                       <asp:Parameter Name="category_id" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
<%--              Normal Text--%>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Category"  style="margin-left:30% ;background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Edit and Delete Category" OnClick="Button3_Click"  style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px" />
                <br />
                <div runat="server" visible="false" id="add" style="margin-left:30% ; border:2px solid #45B08E ; padding-left:42px; width:30% ; border-radius:3px 12px ;padding-top:13px;padding-bottom:13px">
                  <asp:Label ID="Label4" runat="server" Text="Add Category" Style="font-weight:bold ; font-style:italic ;margin-left:15% ;" ></asp:Label>
              <br />
                    <br /><asp:Label ID="Label3" runat="server" Text="Category name :" Style="font-weight:bold ; font-style:italic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1"></asp:TextBox>
                <br />
                <br />
                    <br />
                <asp:Label ID="Label2" runat="server" Text="Description :" Style="font-weight:bold ; font-style:italic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
               <br /><br />
                <asp:Label ID="Label1" runat="server" Text="Upload Category Image :" Style="font-weight:bold ; font-style:italic"></asp:Label>  <asp:FileUpload ID="FileUpload2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
              
                <br />
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px"  />
                       
                    <br />
                       
                    </div>
                <div id="editAnddelete" runat="server" visible="false" >
                &nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" style="margin-left:33%" Visible="false"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" visible="false" />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([category_id], [category_description], [category_name], [catergoy_image]) VALUES (@category_id, @category_description, @category_name, @catergoy_image)" SelectCommand="SELECT * FROM [category] WHERE ([category_name] LIKE '%' + @category_name2 + '%')" UpdateCommand="UPDATE [category] SET [category_description] = @category_description, [category_name] = @category_name, [catergoy_image] = @catergoy_image WHERE [category_id] = @category_id">
                        <DeleteParameters>
                            <asp:Parameter Name="category_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="category_id" Type="Int32" />
                            <asp:Parameter Name="category_description" Type="String" />
                            <asp:Parameter Name="category_name" Type="String" />
                            <asp:Parameter Name="catergoy_image" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox5" Name="category_name2" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="category_description" Type="String" />
                            <asp:Parameter Name="category_name" Type="String" />
                            <asp:Parameter Name="catergoy_image" Type="String" />
                            <asp:Parameter Name="category_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CssClass="table table-striped" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="category_id" HeaderText="category_id" ReadOnly="True" SortExpression="category_id" />
                            <asp:BoundField DataField="category_description" HeaderText="category_description" SortExpression="category_description" />
                            <asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />
                            <asp:BoundField DataField="catergoy_image" HeaderText="catergoy_image" SortExpression="catergoy_image" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
    

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="120" DataKeyNames="category_id" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" CellSpacing="100" ForeColor="Black" OnRowDeleting="GridView1_RowDeleting" CssClass="table table-striped" OnRowUpdated="GridView1_RowUpdated" OnRowDeleted="GridView1_RowDeleted"   >
                   <Columns> 
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                       <asp:BoundField DataField="category_id" HeaderText="Category Id" SortExpression="category_id" InsertVisible="False" ReadOnly="True" />
                       <asp:BoundField DataField="category_name" HeaderText="Category Name" SortExpression="category_name" />
                       <asp:BoundField DataField="category_description" HeaderText="Category Description" SortExpression="category_description" />
                       <asp:TemplateField HeaderText="Catergoy Image" SortExpression="catergoy_image">
                           
                           <EditItemTemplate>
                               <asp:FileUpload ID="FileUpload3" runat="server" />
                               <asp:Label ID="Label6" runat="server" Text='<%# Eval("catergoy_image") %>' Visible="False"></asp:Label>
                           </EditItemTemplate>
                           
                           <ItemTemplate>
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("catergoy_image")%>' Width="100px" Height="100px"  />
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
                   <FooterStyle BackColor="#CCCCCC" />
                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                   <RowStyle BackColor="White" />
                   <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                   <SortedAscendingHeaderStyle BackColor="#808080" />
                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                   <SortedDescendingHeaderStyle BackColor="#383838" />
               </asp:GridView>
                                   

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

        </form>
    
</body>
</html>
