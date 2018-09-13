<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Roshan.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

     <div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
            <div>
                <div class="img_card">
                    <div class="row justify-content-center">
                        <div class="col-md-6 col-7 content_section">
                            <!--=================== contact info and form start====================-->
                            <%-- <form class="form-signin" runat="server" style="width:84%">--%>
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" >Email address</label>
        <input runat="server" type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        <label for="inputPassword" >Password</label>
        <input runat="server" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <asp:button runat='server' class="btn btn-lg btn-primary btn-block" type="submit" Text="Sign In" OnClick="Unnamed1_Click"></asp:button>
      <%--</form>--%>
                            <!--=================== contact info and form end====================-->
                             </div>
                        </div>
                    </div>
                </div>
            </div>











</asp:Content>
