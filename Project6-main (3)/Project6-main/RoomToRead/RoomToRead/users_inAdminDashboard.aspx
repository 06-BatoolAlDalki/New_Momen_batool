<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users_inAdminDashboard.aspx.cs" Inherits="RoomToRead.users_inAdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <style type="text/css">
        
        #GridView3,#GridView4{
            width:80%;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }
        #Image6,#Image5{
           
        }
        #buttons{
            display:flex;
            justify-content:center;
            margin:5%;
        }
        
.container1{
    position:relative;
}
.left{
    width:15%;
    height:700px;
    background-color:#49796b;
    position:absolute;
}
.right{
     width:85%;
    height:150px;
    background-color:#49796b;
    position:absolute;
    float:right;
    /*border:3px solid black;*/
    left:15%;
}
.center{
     width:85%;
    height:940px;
   /* background-color:gray;*/
    position:absolute;
    float:right;
   /* border:3px solid black;*/
    left:15%;
    top:150px;
    background-color:	#eeeeee;
   /*background-image: url('img/back1.jpg');*/
  /* background-repeat:no-repeat;*/
   /*background-size:contain;*/
  

}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                      </div>
                    </div>
                  </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="
SELECT U.id ,phoneNumber,Email,C.city_name, firstname, lastname, user_image , user_address,
A.Name FROM AspNetUsers AS U JOIN AspNetUserRoles AS R ON U.Id=R.UserId JOIN AspNetRoles AS A ON A.Id=R.RoleId 
join city As C on U.city_id=C.city_id where A.id=2;
"></asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT U.Id, U.PhoneNumber, U.Email, C.city_name, U.firstname, U.lastname, U.user_image, U.birthofdate, U.user_address, A.Name FROM AspNetUsers AS U INNER JOIN AspNetUserRoles AS R ON U.Id = R.UserId INNER JOIN AspNetRoles AS A ON A.Id = R.RoleId INNER JOIN city AS C ON U.city_id = C.city_id WHERE (A.Id = 3)"></asp:SqlDataSource>
        <div class="auto-style1" id="buttons">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Bieneficiaries" CssClass="btn btn-primary" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Donatories" CssClass="btn btn-primary" />
            <br />
            <br />
        </div>
                
                            <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="1">
            <asp:View ID="View3" runat="server">
                <div class="auto-style1">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" cssClass="table table-responsive table-hover table-striped">
                        <Columns   >
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                            <asp:TemplateField HeaderText="Picture" SortExpression="user_image">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("user_image") %>' width="100px" Height="100px"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
                            <asp:BoundField DataField="Name" HeaderText="Role" SortExpression="Name" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="deleteuseradmin?id={0}" Text="Delete" HeaderText="Delete" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="edituser?id={0}" Text="Edit" HeaderText="Edit" />
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" cssClass="table table-responsive table-hover table-striped">
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                        <asp:BoundField DataField="phoneNumber" HeaderText="Phone Number" SortExpression="phoneNumber" />
                        <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                        <asp:TemplateField HeaderText="Picture" SortExpression="user_image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("user_image") %>' width="100px" Height="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
                        <asp:BoundField DataField="Name" HeaderText="Role" SortExpression="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="deleteuseradmin?id={0}" Text="Delete" HeaderText="Delete" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="edituser?id={0}" Text="Edit" HeaderText="Edit" />
                    </Columns>
                </asp:GridView>
            </asp:View>
        </asp:MultiView>
                </div>
              </div>
                
            </div>
        
        </div>
    </form>
</body>
</html>
