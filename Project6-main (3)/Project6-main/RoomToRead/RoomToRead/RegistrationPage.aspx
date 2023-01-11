<%@ Page Title="" Language="C#" MasterPageFile="~/noFooter.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="RoomToRead.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Registeration</title>
      <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet"/>

    <link rel="stylesheet" href="fonts/icomoon/style.css"/>

    <link rel="stylesheet" href="css/owl.carousel.min.css"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css"/>
    <style>
        @media (min-width: 0px) and (max-width: 480px) {

            #mainImage {
            width:100%
            }
            
        }
        @media (min-width: 481px) and (max-width: 768px) {

            #mainImage {
            width:100%
            }
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="half">
<div style="display: flex;
justify-content: center;">
  <img id="mainImage" src="images/ezgif.com-gif-maker-removebg-preview.png"/>
</div>    
<div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block">
              <div class="text-center mb-5">
              <h3>Register</h3>
                  
              </div>
<%--                start of personal info--%>
                <asp:PlaceHolder ID="personalInfo" Visible="false"  runat="server">
                <h2> Peronsal info </h2>
                <br />
                     <div class="form-group first">
                  <label for="firstName">First Name</label>
                 
                   <asp:TextBox class="form-control" placeholder="First Name" ID="firstName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="firstName"
                    CssClass="text-danger" ErrorMessage="The First Name field is required." />
                </div> 
                    <div class="form-group first">
                  <label for="lastName">Last Name</label>
                 
                   <asp:TextBox class="form-control" placeholder="Last Name" ID="lastName" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="lastName"
                    CssClass="text-danger" ErrorMessage="The Last Name field is required." />
                </div>
                <div class="form-group first">
                  <label for="Address">Address</label>
                 
                   <asp:TextBox class="form-control" placeholder="Address" ID="Address" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The Address field is required." />
                </div>
                    <div class="form-group first">
                  <label for="Phone">Phone</label>
                   <asp:TextBox class="form-control" placeholder="Phone" ID="Phone" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                    CssClass="text-danger" ErrorMessage="The Phone field is required." />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Phone" runat="server"  CssClass="text-danger" ErrorMessage="Must be a jordanian phone number" ValidationExpression="((079)|(078)|(077)){1}[0-9]{7}"></asp:RegularExpressionValidator>
                </div>
                     <div class="form-group first">
                  <label for="Phone">City &nbsp;</label>
                  <asp:DropDownList style="height:30px; background-color:#efefef; color:black;" cssclass="btn btn-secondary btn-sm dropdown-toggle" ID="City" runat="server" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_id"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [city]"></asp:SqlDataSource>
                </div>
                    <div class="form-group first">
                  <label for="Pfp">Profile Picture</label>
                  <asp:FileUpload id="FileUpload1" runat="server" cssclass="fileupload"/>
                         <asp:RequiredFieldValidator runat="server" ControlToValidate="FileUpload1"
                    CssClass="text-danger" ErrorMessage="The Image field is required." />
                    </div>

                <asp:Button ID="Button2" class="btn " style="float: right; color:  white; background-color: #45B08E;" OnClick="Register" runat="server" Text="Register" />
                </asp:PlaceHolder>
<%--                End of personal Info--%>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
<%--                Start of registration--%>
                <div class="form-group first">
                  <label for="username">Email Address</label>
                 
                   <asp:TextBox class="form-control" placeholder="Your Email" ID="Email" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                   <asp:TextBox class="form-control" placeholder="Your Password" TextMode="Password" ID="Password" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
                <div class="form-group last mb-3">
                  <label for="re-password">Re-type Password</label>
                     <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
                <div class="form-group first">
                  <label for="Account">Account type</label>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server"> 

                        <asp:ListItem Value="3">&nbsp; Beneficiary</asp:ListItem>
                        <asp:ListItem Value="2"> &nbsp; Volunteer</asp:ListItem>

                    </asp:RadioButtonList>
                   
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
                <div class="d-sm-flex mb-5 align-items-center">
                  <span class="ml-auto"><a href="LoginPage.aspx" class="forgot-pass">Have an account? Login</a></span> 
                </div>
                <asp:Button ID="Button1" class="btn " style="float: right; color:  white; background-color: #45B08E;" OnClick="CreateUser_Click" runat="server" Text="Next" />
                </asp:PlaceHolder>
            </div>
               
               <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
