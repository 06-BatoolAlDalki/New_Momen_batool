<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Singlebook.aspx.cs" Inherits="RoomToRead.Singlebook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [book_name], [Book_description], [Book_image] FROM [books] WHERE ([book_id] = @book_id)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="book_id" QueryStringField="id" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
<ItemTemplate>
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
                            <button class="btn btn-outline-dark" id="button1" runat="server">Back</button>	
                            <asp:Button class="btn btn-dark" ID="Button3" OnClick="Button1_Click" runat="server" Text="Book Request" />

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
</asp:Content>
