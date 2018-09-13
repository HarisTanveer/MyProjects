<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Join_us.aspx.cs" Inherits="Roshan.Join_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Join Us</title>
    <style>
        .header {
    color: #36A0FF;
    font-size: 27px;
    padding: 10px;
}

.bigicon {
    font-size: 35px;
    color: #36A0FF;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
           <div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
            <div>
                <div class="img_card">
                    <div class="row justify-content-center">
                        <div class="col-md-6 col-7 content_section">
                        
                            <h2 class="form-signin-heading">Enter Appropriate Information</h2>
        
         <label for="inputname" >Name</label>
        <input runat="server" type="Text" id="inputname" class="form-control" placeholder="Name" required="">

         <label for="inputEmail" >Email address</label>
        <input runat="server" type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        
        <label for="contact" >Contact</label>
        <input runat="server" type="number" id="contact" class="form-control" placeholder="Contact Number" required="" autofocus="">
       
         <label for="F1" >Pictures</label>
        <asp:FileUpload class="form-control" runat="server"  ID="f1" />
        <asp:FileUpload class="form-control" runat="server"  ID="f2" />
        <asp:FileUpload  class="form-control" runat="server"  ID="f3" />
        <%--<input runat="server" type="file" id="file1" class="form-control" Text="Picture 1" required="">
        <input runat="server" type="file" id="file2" class="form-control" Text="Picture 2" required="">
        <input runat="server" type="file" id="file3" class="form-control" Text="Picture 3">
        --%>
        <asp:button runat='server' class="btn btn-lg btn-primary btn-block" type="submit" Text="Join" ID="joinus" OnClick="joinus_Click"></asp:button>
                        
                        </div>
                        </div>
                    </div>
                </div>
          <</div>
          </div>
</asp:Content>
