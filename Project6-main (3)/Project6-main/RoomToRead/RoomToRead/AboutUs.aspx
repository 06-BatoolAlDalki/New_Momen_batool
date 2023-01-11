<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="RoomToRead.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <title></title>
    <style>
        .social-link {
  width: 30px;
  height: 30px;
  border: 1px solid #ddd;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #666;
  border-radius: 50%;
  transition: all 0.3s;
  font-size: 0.9rem;
}

.social-link:hover,
.social-link:focus {
  background: #ddd;
  text-decoration: none;
  color: #555;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
           

<div class="bg-light">
  <div class="container py-5">
    <div class="row h-100 align-items-center py-5">
      <div class="col-lg-6">
        <h1 class="display-4">About us</h1>
        <p class="lead text-muted mb-0">Our site was designed and made to serve readers who love to read but do not have the books they need or for students who cannot get a book</p>
        <p class="lead text-muted" style="color:#49796b">Also we wish that everyone who can donate a book to write it here and don't hesitate <a href="https://bootstrapious.com/snippets" class="text-muted"> 
                    <u>Click here to donate</u></a>
        </p>
      </div>
      <div class="col-lg-6 d-none d-lg-block"> <img src="img/book2.jpg" class="img-fluid"/></div>
    </div>
  </div>
</div>

<div class="bg-white py-5">
  <div class="container py-5">
    <div class="row align-items-center mb-5">
      <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
        <h2 class="font-weight-light">Our Book Categories:</h2>
        <p class="font-italic text-muted mb-4" style="color:#49796b">1-Literary.<br />2-Scientific.<br />3-Self-development.<br />4-Philosophy.<br />5-Psychology.<br />6-Religious.<br />7-Historical.<br />8-Medical.<br />9-Astronomy</p><a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
      </div>
      <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img src="img/book1.jpg" class="img-fluid mb-4 mb-lg-0"/></div>
    </div>
    <div class="row align-items-center">
      <div class="col-lg-5 px-5 mx-auto"><img src="img/book.jpg"  class="img-fluid mb-4 mb-lg-0" /> </div>
      <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
        
        <p class="font-italic text-muted mb-4" style="color:#49796b">Finally, I would like to remind you of an important point, that when you donate a book, an admin goes and he is the one who decides whether it is allowed to be displayed or not according to the general terms and conditions</p>
      </div>
    </div>
  </div>
</div>
</asp:Content>
