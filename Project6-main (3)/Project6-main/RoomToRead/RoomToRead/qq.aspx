<%@ Page Title="" Language="C#" MasterPageFile="~/noFooter.Master" AutoEventWireup="true" CodeBehind="qq.aspx.cs" Inherits="RoomToRead.qq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         @media only screen and (max-width: 762px) {

               body{
             background-image: url("imgg/book.jpg");
             background-size:cover ;
             background-repeat:no-repeat ;
             height:100% ;

         }


         }

         body{
             background-image: url("imgg/book.jpg");
             background-size:cover ;

         }

        .containerAfter {
   
}

.h1After {
  
}


#Button1 {
    width: 100%;
    height: 45px;
    background-color: #F24726;
    color: white;
    font-size: 18px;
    border-radius: 5px;
    border: 0px;
    margin-top: 4px;
    align-content: center;
    margin: 5px 0px 5px 5px;
}
#Button1{
    width: 70%;
    height: 45px;
    background-color: teal;
    color: whitesmoke;
    font-size: 18px;
    border-radius: 5px;
    border: 0px;
    margin-top: 4px;
    align-content: center;
    margin: 5px 0px 5px 5px;
}
#btnUpload {
    width: 70%;
    height: 45px;
    background-color: black;
    color: white;
    font-size: 18px;
    border-radius: 5px;
    border: 0px;
    margin-top: 50px;
    align-content: center;
    margin: 5px 0px 5px 5px;
}

.TextBoxAll {
    width: 70%;
    height: 50px;
    border-radius: 5px;
    border: 1px solid gray;
    margin: 5px 0px 5px 5px;
    padding: 10px;
}

#FileUpload1 {
    margin: 5px 0px 5px 5px;
}

.tableAfter {
  

}

.TextBoxdes {
    Height: 100px;
    Width: 70%;
    border-radius: 5px;
    border: 1px solid gray;
    margin: 5px 0px 5px 5px;
    resize: none;
    padding: 10px;
}

.hhh{
    font-size:20px;
}
#FileUpload1 {
    font-size: 13px;
}
td{
    padding-top:25px;
    padding-left:50px;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <div>
            <div class="containerAfter" style=" display: flex;
    flex-direction: column;
    align-items: center; margin-left:30px" >
            <br />
            <table class="tableAfter" style="  width: 60%;
    background-color: white;
     border-radius: 25px;
     opacity:0.8;
    padding: 50px;

    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <tr>
                    <td colspan="2"><h1 class="h1After" style=" font-family:Andalus ;  text-align: center;
    padding: 50px;">Donate now
</h1></td>
                </tr>

                <tr>
                    <td><h3 class="hhh">Title Book </h3></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxAll"></asp:TextBox></td>
                </tr>

                <tr>
                    <td  style="display: flex;"><h3 class="hhh"> Book Description  </h3></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="multiline" CssClass="TextBoxdes"  ></asp:TextBox></td>
                </tr>

                  <tr>
                    <td><h3 class="hhh" > Category </h3></td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Category_Name], [Category_id] FROM [Category]"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="TextBoxAll" DataSourceID="SqlDataSource1" DataTextField="Category_Name" DataValueField="Category_id">
                           
                         </asp:DropDownList>
                      </td>
                  </tr>

              
                

                
               <tr>
                    <td><h3 class="hhh">Image Book </h3></td>
                    <td>
                     
                                           <asp:FileUpload ID="FileUpload1" runat="server" />

                    </td>
                  </tr>


                 <tr>
                     <td></td>
                        <td >
                            <asp:Button  ID="btnUpload" runat="server" Text="Donate" OnClick="btnUpload_Click"/>
                      </td></tr>
                     <tr>
                         <td></td>
                     <td >
                            <%--<asp:Button   ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" />--%>
                      </td>
                  </tr>
                
                 
                 <tr>
                    <td></td>

                    <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                  </tr>

            </table>
        </div>
    
      

        </div>

</asp:Content>
