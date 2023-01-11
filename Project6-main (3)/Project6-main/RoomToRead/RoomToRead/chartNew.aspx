<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chartNew.aspx.cs" Inherits="RoomToRead.chartNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
 
  
  <style>
    @import url(https://unpkg.com/@webpixels/css@1.1.5/dist/index.css);

/* Bootstrap Icons */
@import url("https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.4.0/font/bootstrap-icons.min.css");
  </style>

    <title></title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
   
    
    <style>
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
   /* background-color:	#eeeeee;*/
   /*background-image: url('img/back1.jpg');*/
  /* background-repeat:no-repeat;*/
   /*background-size:contain;*/
  

}
        </style>

</head>
<body>
    <form id="form1" runat="server">
        
         <div class="container1">
           
<div class="left">
     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Admin_request.aspx" Text="Category" style="
    color: white;
    display: block;
    margin-top: 83%;
    margin-left: 29%;
    font-weight: bold;">Category
             </asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Admin_Books.aspx" Text="Books" style="
    color: white;
    display: block;
    margin-top: 20%;
    margin-left: 29%;
    font-weight: bold;">Books
             </asp:HyperLink>
    
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Order_Admin.aspx" Text="Orders" style="
    color: white;
    display: block;
    margin-top: 20%;
    margin-left: 29%;
    font-weight: bold;">Orders
             </asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="UsersInadminDashboard.aspx" Text="Users" style="
    color: white;
    display: block;
    margin-top: 20%;
    margin-left: 29%;
    font-weight: bold;">Users
             </asp:HyperLink>

</div>
            <div class="right">
                <h1 style="font-family:'Times New Roman' ; font-style:italic ; color:white ; font-weight:bold; margin-left:39% ; margin-top:5%">Statistics</h1>
            </div>
            

           <div class="center"> 
            <div  id="batool" class="table table-striped" style="margin-top:50px" >
        <div>
             <main class="py-6 bg-surface-secondary">
          <div class="container-fluid">
              <!-- Card stats -->
              <div class="row g-6 mb-6">
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Number of Taken Books</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                          <i class="bi bi-book"></i>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Total Number of Books</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                                </div>
                          </div>
                      </div>
                  </div>
                  <br />
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col" >
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Number of People Donors</h5></span>
                                      <span class="h3 font-bold mb-0"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                              </div>
                             
                          </div>
                      </div>
                  </div>
                   <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Total Number of Ordinary people</h5></span>
                                      <span class="h3 font-bold mb-0">   <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                                </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Number Of Categories</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-warning text-white text-lg rounded-circle">
                                          <i class="bi bi-list"></i>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
                

      </main>
        </div>
                </div></div>
    </form>
</body>
</html>
