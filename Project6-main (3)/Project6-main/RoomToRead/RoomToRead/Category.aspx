<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="RoomToRead.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.css">
    <script src="Scripts/bootstrap.js"></script>
    <link rel="stylesheet" href="../css/Category" />
    <style>
        .parentdiv {
    font-size: 24px;
}

#Label1 {
    width: 80%;
    margin-left: auto;
    margin-right: auto;
}

body {
    background-color: rgba(58 150 121 / 0.1) !important;
}

.containerlabel2 {
    margin: 0 auto;
    padding-left: 9px;
}

categoryBooks {
    height: 40px;
    padding-bottom: 40px;
}

.fa {
    margin-right: 20px;
    font-size: 30px;
    color: gray;
    float: right;
}

.categorybook {
    display: grid;
    grid-template-columns: repeat(auto-fill,minmax(300px,1fr));
    column-gap: 0 !important;
    row-gap: 20px !important;
}

.containerlabel2label2 {
    width: 80%;
    margin-left: auto;
    margin-right: auto;
    padding-left: 3%;
}

.book {
    background-color: white;
    display: inline-block;
    width: 300px;
    height: fit-content;
    box-shadow: 0 0 20px #aaa;
    margin: 25px;
    padding: 10px 10px 0 10px;
    vertical-align: top;
    transition: height 1s;
}

#Label1 {
    display: flex;
    justify-content: center;
}

.cover {
    height: 80%;
    overflow: hidden;
}

.parentdiv {
    margin-top: 5px;
}

.cover img {
    width: 100%;
    height: 350px;
}

.book p {
    margin-top: 12px;
    font-size: 20px;
}

.book .author {
    font-size: 1.25rem;
    color: gray;
}

@media (max-width: 941px) {
    .containerlabel2 {
        max-width: 700px;
        display: flex;
        justify-content: center;
    }

    .book {
        margin: 49px;
    }
}

@media only screen and (max-width: 768px) {
    .book {
        display: block;
        margin: 0 auto;
        margin-top: 50px;
    }

    .containerlabel2 {
        padding-left: 20px;
    }
}

h1 {
    color: gray;
    text-align: center;
    font-size: 50px;
    margin-bottom: -3px;
}

@media only screen and (min-device-width:1000px) {
    #list-th {
        padding-left: 46px;
    }

    .containerlabel2 {
        margin-left: 3.5%;
    }
}

@media only screen and (min-device-width: 0px) and (max-device-width:480px) {
    .book .author {
        font-size: 20px;
    }

    #list-th {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .book {
        width: 400px;
    }

        .book p {
            font-size: 3rem;
        }

    .parentdiv {
        font-size: 3rem;
    }

    .containerlabel2 {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
}

body {
    background-color: rgba(58 150 121 / 0.1);
}

.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 300px;
    background-color: white;
}

    .card:hover {
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    }

.containerlabel2label1 {
    padding: 2px 16px;
}

.categoryBooks {
    display: grid;
    grid-template-columns: repeat(auto-fill,minmax(350px,1fr));
    grid-gap: 50px;
    justify-items: center;
}

}

.containerlabel2-fluid {
    margin-top: 5%;
    width: 85%;
    margin-right: auto;
    margin-left: auto;
}

#Label1 {
    display: block;
}

.input-group {
    margin-bottom: 5%;
    background-color: white;
    display: flex;
    justify-content: center;
    padding: 1rem 0;
}

.card img {
    height: 350px;
}

@media only screen and (min-device-width: 0px) and (max-device-width:480px) {
    .categoryBooks {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
}

.input-group p {
    margin-right: 5%;
    color: gray;
}

.categoryBooks {
    display: grid;
    grid-template-columns: repeat(auto-fill,minmax(350px,1fr)) !important;
    grid-gap: 0px !important;
    justify-items: center !important;
    row-gap: 51px !important;
    width: 85% !important;
    margin-left: auto !important;
    margin-right: auto !important;
}
.categoryBooks{
    margin-bottom:5%;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
            <div class="input-group">
                 <p>Search by Book Name or Author</p>
             <div class="form-outline">
                  <asp:TextBox ID="TextBox1" placeholder="Search" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
             </div>
        <button type="button"  runat="server" class="btn btn-primary" onserverClick="TextBox1_TextChanged">
        search
        </button>
       
            </div>
    


        <div>
         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    
</asp:Content>
