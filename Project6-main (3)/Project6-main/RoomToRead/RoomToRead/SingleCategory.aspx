<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SingleCategory.aspx.cs" Inherits="RoomToRead.WebForm2" %>
<%@ Register src="WebUserControl1.ascx" tagname="WebUserControl1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <style>
               .parentdiv {
        font-size: 24px;
    }
  
    #Label1{
        width:80%;
        margin-left:auto;
        margin-right:auto;
        
    }
    .containerbook{
        padding-left:5%;
    }
   body{
    background-color:rgba(58 150 121 / 0.1) !important;
   }
  .container {
    max-width:1400px !important;
  }
  
  .choose {
    height: 40px;
  }
  .fa {
    margin-right: 20px;
    font-size: 30px;
    color: gray;
    float: right;
  }  
  .categorybook{
      display:grid;
      grid-template-columns:repeat(auto-fill,minmax(300px,1fr));
  }
  
  .book {
      background-color:white;
    display: inline-block;
    width:300px;
    height: fit-content;
    box-shadow: 0 0 20px #aaa;
    margin: 25px;
    padding: 10px 10px 0 10px;
    vertical-align: top;
    transition: height 1s;
  }
  #Label1{
      display:flex;
      justify-content:center;
  }
  .cover {
    
    height: 80%;
    overflow: hidden;
  }
  .parentdiv{
      margin-top:5px;
  }
  .cover img {
    width: 100%;
    height:350px;
  }
  
  .book p {
    margin-top: 12px;
    font-size: 20px;
  }
  
  .book .author {
    font-size: 1.25rem;
    color:gray;
  }
  @media (max-width: 941px) {
    .container {
      max-width: 700px;
      display:flex;
      justify-content:center;
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
    .container{
        padding-left:20px;
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
          .container{
              margin-left:3.5%;
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
    .book{
        width:400px;
    }
    .book p {
        font-size: 3rem;
    }
    .parentdiv {
        font-size: 3rem;
    }
    .container{
        display: flex;
    flex-direction: column;
        align-items: center;
    }
    .containerbook{
        padding-left:0 !important;
        display:flex;
       flex-direction:column;
       align-items:center;
    }
 
}
 body{
    background-color:rgba(58 150 121 / 0.1);
 }
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 300px;
}
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}
.container {
  padding: 2px 16px;
}
.categoryBooks{
      display:grid;
      grid-template-columns:repeat(auto-fill,minmax(350px,1fr));
      grid-gap:50px;
      justify-items: center;
}
}
.container-fluid{
    margin-top:5%;
    width:85%;
    margin-right:auto;
    margin-left:auto;
}
#Label1{
    display:block;
}
.input-group{
    margin-bottom:5%;
}
@media only screen and (min-device-width: 0px) and (max-device-width:480px) {
    
    .categoryBooks{
      display:flex;
      flex-direction:column;
      justify-content:center;
      align-items:center;
}
    .card{
        width:400px;
    }
}
@media only screen and (min-device-width: 0px) and (max-device-width:768px){
    container-fluid{
        padding-left:7%;
    }
}
        .containerbook {
            padding-left: 14%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>

            <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />

            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
</asp:Content>
