<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserEDIT.aspx.cs" Inherits="RoomToRead.UserEDIT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div>
            <div class="container-fluid">
      <div class="row">
         <div class="col-md-12 col-sm-8 col-8 col-lg-4 ">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                          <div id="img" runat="server" ></div>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4> Your Profile</h4>

                           <span>Edit profil</span>
                                                                                                     <%--     Account Status     //--%>
                           <%--<asp:Label  class="badge badge-pill badge-info" ID="tag" runat="server" Text=""></asp:Label>--%>

                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>



                  <div class="row">
                     <div class="col-md-12 col-lg-6">
                        <label>First name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control "  class="text-success"  ID ="TextBox1" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-12 col-lg-6">
                        <label>last name</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <hr />
                  <div class="row">
                     <div class="col-md-6">
                        <label> phone</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                 <hr />
                     <div class="col-lg-12">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox   CssClass="form-control " class="form-control" ID="TextBox6" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                   <br />
                   <div class="input-group">
                      
  <div class="custom-file">
       <label>image</label>
 <asp:FileUpload ID="FileUpload1" runat="server" class="custom-file-input" />
    <label class="custom-file-label" for="inputGroupFile04">Choose image</label>
  </div>
  <div class="input-group-append">
    
  </div>
</div>
                    
               <br />
                  <div class="row">
                     <div class="col-lg-6 mx-auto col-sm-10 col-md-10">
                        <center>
                           <div class="form-group">
                               <asp:Button class="btn btn-success btn-block btn-md" ID="Button2" runat="server" Text="Edit Profil" OnClick="Button2_Click" />
                               
                                    
                           </div>
                        </center>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-lg-6 mx-auto col-sm-10 col-md-10">
                        <center>
                           <div class="form-group">
                               <asp:Button class="btn btn-danger btn-block btn-md " ID="Button4" runat="server" Text="cancel" OnClick="Button4_Click" />
                               </div></center></div></div>
               </div>
            </div>
            <a href="login.aspx"><< Back to login</a><br><br>
         </div>


         <%-- /                /--%>
          <div class="col-md-6">

             
                                         <div class="container" >
                                             
                                             <img style="width:750px ;height:370px ; margin:20px !important" src="imgg\\45.jpg"/>
                                              
                                               <div class="row">
                     <div class="col media-right " style="margin:10px 680px!important">
                        <center>
                           <div class="form-group">
                               <asp:Button  class=" mi btn btn-success btn-block btn-md" ID="Button3" runat="server" Text="Donate" OnClick="Button3_Click1" />
                           
                           </div>
                        </center>
                     </div>
                                             
                                         </div>

           <div class="card col-12" style="margin:0px 20px ; padding:0px 80px">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                         <img class= " rounded-circle img-fluid"  style="width: 97px ; height:82px   ; "  src="imgg/20.gif "/> 
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 runat="server" id="your"> </h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="your books info"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">

                         <%--/     ----------------------------------              /--%>

                         <div class="col-12">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [book_name], [Book_image], [Book_description] FROM [Books] WHERE ([User_id] = @User_id)">
                                 <SelectParameters>
                                     <asp:SessionParameter Name="User_id" SessionField="userId" Type="String" DefaultValue="Noo Book !!" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
        
         <asp:Repeater ID="rptCustomers" runat="server" DataSourceID="SqlDataSource1">
               <HeaderTemplate >
        <table class="table table-hover col-12" style="width:8000px;">
  <thead>
    <tr class="table-success">
      <th scope="col">#</th>
      <th scope="col">Name Book</th>
      <th scope="col">Date dount</th>
      <th scope="col">Book img</th>
    </tr>
  </thead>
            <tbody>
             </HeaderTemplate>
    <ItemTemplate>

   
    <tr>
      <th scope="row">#</th>
      <td>  <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>'></asp:Label></td>
           <td> <asp:Label ID="Label2" runat="server" Text='<%#Eval("donating_date") %>'></asp:Label></td>
     <td> <asp:Image style="width:50px; height:70px ;" ID="Image1" runat="server" src='<%#Eval("Book_Image") %>' /></td>
    </tr>
       
       
    </tbody>
      
  
           </ItemTemplate>
         </asp:Repeater>


           </table>  



                  <%--<div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>--%>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
        </div>
</asp:Content>
