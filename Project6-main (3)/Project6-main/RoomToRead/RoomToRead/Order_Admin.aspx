<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order_Admin.aspx.cs" Inherits="RoomToRead.Order_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
    
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
    background-color:	#eeeeee;
   /*background-image: url('img/back1.jpg');*/
  /* background-repeat:no-repeat;*/
   /*background-size:contain;*/
  

}
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       

        <div>
        </div>
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
                <h1 style="font-family:'Times New Roman' ; font-style:italic ; color:white ; font-weight:bold; margin-left:39% ; margin-top:5%">Orders</h1>
            </div>


           <div class="center"> 
            <div  id="batool" class="table table-striped" >
               
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-striped" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:TemplateField HeaderText="User Image" SortExpression="user_image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("user_image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="firstname1" HeaderText="User Name" SortExpression="firstname1" />
                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                        <asp:HyperLinkField DataNavigateUrlFields="book_id" DataNavigateUrlFormatString="Magic_Approve_order?book_id={0}" Text="Accept Order" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT AspNetUsers.Id  ,AspNetUsers.firstname,AspNetUsers.user_image , books.donating_date ,AspNetUsers.firstname
,books.book_name ,books.book_id
FROM AspNetUsers
INNER JOIN AspNetUserRoles
ON AspNetUserRoles.UserId =AspNetUsers.Id  INNER JOIN books ON books.user_id =AspNetUsers.Id and AspNetUserRoles.RoleId=3 ;
" DeleteCommand="DELETE FROM [books] WHERE [book_id] = @book_id" InsertCommand="INSERT INTO [books] ([book_id], [Book_description], [book_name]) VALUES (@book_id, @Book_description, @book_name)" UpdateCommand="UPDATE [books] SET [Book_description] = @Book_description, [book_name] = @book_name WHERE [book_id] = @book_id">
                    <DeleteParameters>
                        <asp:Parameter Name="book_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="book_id" Type="Int32" />
                        <asp:Parameter Name="Book_description" Type="String" />
                        <asp:Parameter Name="book_name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Book_description" Type="String" />
                        <asp:Parameter Name="book_name" Type="String" />
                        <asp:Parameter Name="book_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
               
              
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
                
                <br />
                <br />
           
        </div>
            </div>
        </div>
    </form>
</body>
</html>
