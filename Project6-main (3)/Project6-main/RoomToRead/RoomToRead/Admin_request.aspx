<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_request.aspx.cs" Inherits="RoomToRead.Admin_request" %>

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
        .auto-style1 {
            margin-bottom: 43;
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
                <h1 style="font-family:'Times New Roman' ; font-style:italic ; color:white ; font-weight:bold; margin-left:39% ; margin-top:5%">Category</h1>
            </div>


           <div class="center"> 
            <div  id="batool">
               <br />
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([category_description], [category_name], [catergoy_image]) VALUES (@category_description, @category_name, @catergoy_image)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [category_description] = @category_description, [category_name] = @category_name, [catergoy_image] = @catergoy_image WHERE [category_id] = @category_id">
                   <DeleteParameters>
                       <asp:Parameter Name="category_id" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="category_id" Type="Int32" />
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
                <br />
                <br />
                <br />
                <br />
           
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Category"  style="margin-left:30% ;background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:3px 12px ;padding:10px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Edit and Delete Category" OnClick="Button3_Click"  style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:3px 12px ;padding:10px" />
                <br /><br />
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
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                       
                    </div>
                <div id="editAnddelete" runat="server" visible="false" >
                &nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" style="margin-left:33%"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
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
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CssClass="table table-striped" CellPadding="4" EmptyDataText="No results , Try Again." ForeColor="#333333" GridLines="None">
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
    
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="120" DataKeyNames="category_id" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" CellSpacing="100" ForeColor="Black" OnRowDeleting="GridView1_RowDeleting" CssClass="table table-striped"  >
                   <Columns> 
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                       <asp:BoundField DataField="category_description" HeaderText="Category Description" SortExpression="category_description" />
                       <asp:BoundField DataField="category_name" HeaderText="category Name" SortExpression="category_name" />
                       <asp:TemplateField HeaderText="catergoy Image" SortExpression="catergoy_image">
                           <EditItemTemplate>
                               <asp:FileUpload ID="FileUpload3" runat="server" />
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("catergoy_image") %>' Width="150px" Height="100px" />
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
    </form>
</body>
</html>

