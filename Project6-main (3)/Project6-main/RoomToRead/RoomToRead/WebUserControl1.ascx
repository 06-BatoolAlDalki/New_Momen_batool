<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="RoomToRead.WebUserControl1" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 26px;
    }
    .auto-style3 {
        height: 26px;
        width: 128px;
    }
    .auto-style2{
        width:530px;
        padding-right:15%;
    }
    #RadioButtonList1{
        display:block;
        background-color: #7c4dff !important;
    }
    .containervote{
        background-color:#20c997;
        color:white;
        padding:3%;
        width:fit-content;
        top:25%;
        left:2%;
    }
    .containervote p{
        display:flex;
        justify-content:center;
    }
</style>
<table id="table1" class="auto-style1">
    <tr>
        <td class="auto-style3">
<div class="containervote" id="containervote" runat="server">

    <p>How do you see our service?</p>
<asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="135px">
    <asp:ListItem>Excellent </asp:ListItem>
    <asp:ListItem>Very Good</asp:ListItem>
    <asp:ListItem>Good</asp:ListItem>
    <asp:ListItem>Accceptable</asp:ListItem>
    <asp:ListItem>Poor</asp:ListItem>
</asp:RadioButtonList>
       
        <p>
<asp:Button ID="Button1" cssClass="btn btn-info" runat="server" OnClick="Button1_Click" Text="Vote" />
</p>
</div>
 </td>
        <td class="auto-style2">
            <br />

  <div id="results" runat="server" visible="false">
    <h3>Thank you for your vote</h3>
    <div class="progress">
        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="excellent1" runat="server" >Excellent</div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="vgood1" runat="server" >Very Good</div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="good1" runat="server" >Good</div>
    </div>
    <br />
      <div class="progress">
        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="Accebtable" runat="server" >Accebtable</div>
    </div>
      <br />
    <div class="progress">
        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="poor1" runat="server" >poor</div>
    </div>
   </div>
    

<br />
<br />


</table>

