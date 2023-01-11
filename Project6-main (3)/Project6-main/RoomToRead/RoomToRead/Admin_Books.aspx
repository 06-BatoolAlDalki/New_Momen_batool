<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Books.aspx.cs" Inherits="RoomToRead.Admin_Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    background-color:	#eeeeee;
   /*background-image: url('img/back1.jpg');*/
  /* background-repeat:no-repeat;*/
   /*background-size:contain;*/
  

}
w3-button{
      background-color: #49796b !important;
    border: none;
    color: white;
    font-size: 3.5rem;
    position: absolute;
    top: 44px;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


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
            <div  id="batool" class="table table-striped" style="" >
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
                    <asp:Parameter Name="approve" Type="Boolean" />
                    <asp:Parameter Name="taken" Type="Boolean" />
                    <asp:Parameter Name="Book_image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_id" Type="String" />
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="Book_description" Type="String" />
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="donating_date" />
                    <asp:Parameter Name="approve" Type="Boolean" />
                    <asp:Parameter Name="taken" Type="Boolean" />
                    <asp:Parameter Name="Book_image" Type="String" />
                    <asp:Parameter Name="book_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <asp:Label ID="Label1" runat="server" Text="Label">Acceptd Book to display on </asp:Label>
                <br />
                <br />
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
                        <asp:CheckBoxField DataField="approve" HeaderText="approve" SortExpression="approve" />
                        <asp:CheckBoxField DataField="taken" HeaderText="taken" SortExpression="taken" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:HyperLinkField DataNavigateUrlFields="book_id" DataNavigateUrlFormatString="MagicAcceptedBook?id={0}" Text="Accept this Book" />
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />

        </div>
               </div></div>
    </form>
</body>
</html>
