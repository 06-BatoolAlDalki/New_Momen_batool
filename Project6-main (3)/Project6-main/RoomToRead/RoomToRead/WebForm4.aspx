<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="RoomToRead.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style>
        ul li a {
            color:#fff !important;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


    <style>
        body
        { background-image: url('img/book0.jpg');
          width:100%;
          background-repeat:no-repeat;
          background-size:cover;
        }
      .card{border: none;overflow: hidden}
      .thumbnail_images ul
      {list-style: none;
       justify-content: center;
       display: flex;
       align-items: center;
       margin-top:10px}
      .thumbnail_images ul li
      {margin: 5px;
       padding: 10px;
       border: 2px solid #eee;
       cursor: pointer;
       transition: all 0.5s}
      .thumbnail_images ul li:hover
      {border: 2px solid #000}
      .main_image
      {display: flex;
       height: 400px;
       width: 100%;
       overflow: hidden
            
      }
      .heart{
          height: 29px;
          width: 29px;
          background-color: #eaeaea;
          border-radius: 50%;
          display: flex;
          justify-content: center;
          align-items: center}
      .content p{font-size: 12px}
      .ratings span{font-size: 14px;margin-left: 12px}
      .colors{margin-top: 5px}
      .colors ul{list-style: none;display: flex;padding-left: 0px}
      .colors ul li{height: 20px;width: 20px;display: flex;border-radius: 50%;margin-right: 10px;cursor: pointer}
     
      .right-side{position: relative}
      .search-option
      {position: absolute;
       background-color: #000;
       overflow: hidden;
       align-items: center;
       color: #fff;
       width: 200px;
       height: 200px;
       border-radius: 49% 51% 50% 50% / 68% 69% 31% 32%;
       left: 30%;
       bottom: -250px;
       transition: all 0.5s;
       cursor: pointer}
      .search-option .first-search
      {position: absolute;top: 20px;left: 90px;font-size: 20px;opacity: 1000}
      .search-option .inputs
      {opacity: 0;transition: all 0.5s ease;transition-delay: 0.5s;position: relative}
      .search-option .inputs input
      {position: absolute;
       top: 200px;
       left: 30px;
       padding-left: 20px;
       background-color: transparent;
       width: 300px;
       border: none;
       color: #fff;
       border-bottom: 1px solid #eee;
       transition: all 0.5s;
       z-index: 10}
      .search-option .inputs input:focus
      {box-shadow: none;
       outline: none;
       z-index: 10}
      .search-option:hover
      {border-radius: 0px;
       width: 100%;
       left: 0px}
      .search-option:hover .inputs{opacity: 1}
      .search-option:hover .first-search{left: 27px;top: 25px;font-size: 15px}
      .search-option:hover .inputs input{top: 20px}
      .search-option .share{position: absolute;right: 20px;top: 22px}
      .buttons .btn
      {height: 50px;
       width: 150px;
      color:white;
       background-color:#49796b;
 border: 2px solid #49796b;
  padding: 10px;
  border-radius: 2em / 5em; }
      .col-md-6{
          margin-left:5%;
      }
   </style>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoomToReadConnectionString %>" SelectCommand="SELECT [book_name], [Book_description], [Book_image] FROM [books] WHERE ([book_id] = @book_id)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="book_id" QueryStringField="id" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
<ItemTemplate>
    <nav class="navbar navbar-expand-lg " style="background-color:#45B08E">
<div class="container-fluid">
  <a class="navbar-brand" href="Home.aspx"><img style="width:50px; height:50px" src="Images/Navlogo.png" /></a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <span class="text-white me-4"> Room To Read</span>
  <div class=" collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ms-auto ">
      <li class="nav-item">
        <a class="nav-link mx-2 active" aria-current="page" href="Home.aspx">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link mx-2" href="#">Category</a>
      </li>
    
          <li class="nav-item"><a class="nav-link mx-2" href="AboutUs.aspx">About Us</a></li>
          <li class="nav-item"><a class="nav-link mx-2" href="#">Contact us</a></li>
            <li class="nav-item">
        <a class="nav-link mx-2" id="LogIn" runat="server" href="LoginPage.aspx">Login</a>
      </li>
        <li class="nav-item">
            <a Visible="false" id="UserProfile" runat="server" class="nav-link mx-2" href="UserProfile.aspx">Profile</a>

        </li>
         <li class="nav-item">
           <asp:LinkButton Visible="false" class="nav-link mx-2" ID="LogOut" OnClick="Logout" runat="server">Logout</asp:LinkButton>
      </li>
        
    </ul>
  </div>
</div>
</nav>
        <div>
            <div class="container mt-5 mb-5">	
                <div class="card">	<div class="row g-0">	
                    <div class="col-md-6 border-end" >	
                        <div class="d-flex flex-column justify-content-center" >	
                            <div class="main_image">	
                             
                               
                                
                             
                         <asp:Image ID="main_product_image" runat="server" ImageUrl='<%#Eval("Book_image")%>' Width="400px" Height="300px" Style="border-radius:7px;margin-left:15%;margin-top:10%;"/>

                            </div>	

                        </div>

                    </div>
                    <div class="col-md-6" style="margin-left:55%">
                        <div class="p-3 right-side">	
                        <div class="d-flex justify-content-between align-items-center">
                           <h3 Style ="font-weight:bold;color:#3E2E2E;font-style:italic" >Book Name</h3>
                        <asp:Label ID="Label1" runat="server" Text="" Style="font-size:xx-large;font-weight:bold;color:#49796b;font-style:italic"><%#Eval("book_name")%></asp:Label>


                        </div>	
                        <div class="mt-2 pr-3 content">
                        <h3 Style ="font-weight:bold;color:#3E2E2E;font-style:italic">Description</h3>
                         <asp:Label ID="Label2" runat="server" Text="" Style="font-size:x-large;font-weight:bold;color:#49796b;;font-style:italic" ><%#Eval("Book_description")%></asp:Label>
                            <br />
                            <p style="font-size:larger;color:#49796b;">We hope you use us every time you search for a book.</p>

                        </div>	
                     
                        <div class="buttons d-flex flex-row mt-5 gap-3">	
                            <asp:Button class="btn btn-outline-dark" ID="Button2" runat="server" Text="Back" />
                            <asp:Button OnClick="RequestBook" class="btn btn-dark" ID="Button1" runat="server" Text="Book Request" />

                        </div>	
                        <div class="search-option">	
                            <i class='bx bx-search-alt-2 first-search'></i>	
                            <div class="inputs">
                                <input type="text" name="">	

                            </div>	
                            <i class='bx bx-share-alt share'></i>

                        </div>	

                                          	</div>

                    </div>	
                                  	</div>	

                </div>

            </div>
        </div>
    </ItemTemplate>
        </asp:Repeater>
</body>
</html>

        </div>
          <footer 
          class="text-center text-lg-start text-dark"
          style="background-color: #45B08E;"
          >
    <!-- Section: Social media -->
    <section class="d-flex justify-content-between p-4 text-white" style="background-color: #45B08E">
      <!-- Left -->
      <div class="me-5">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div>
        <a href="#" class="text-white me-4">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-google"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold text-white">Room To Read</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p class="text-white">
             Our site was designed and made to serve readers who love to read but do not have the books they need or for students who cannot get a book
            </p>
          </div>
          <!-- Grid column -->

          
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold text-white">Useful links</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p>
              <a href="qq.aspx" class="text-white">Donate with us</a>
            </p>
            <p>
              <a href="AboutUs.aspx" class="text-white">About us</a>
            </p>
            <p>
              <a href="#!" class="text-white">Contact Us</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold text-white">Contact</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p class="text-white"><i class="fas fa-home mr-3"></i> Amman,Jordan</p>
            <p class="text-white"><i class="fas fa-envelope mr-3"></i> RoomToRead@Gmail.com</p>
            <p class="text-white"><i class="fas fa-phone mr-3"></i> +962 778095488</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div
         class="text-center p-3 text-white"
         style="background-color: #45B08E"
         >
      © 2020 Copyright:
      <a class="text-white" href="https://mdbootstrap.com/"
         >@CopyRight RoomToRead</a
        >
    </div>
    <!-- Copyright -->
  </footer>

    </form>
</body>
</html>
