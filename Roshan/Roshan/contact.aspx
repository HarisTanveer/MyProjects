<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Roshan.contact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Contact Us
    </title>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-12 col-md-9 col-12 body_block align-content-center border border-dark">
            <div>
                    <div class="justify-content-left">
                        <div class="col-lg-4 col-sm-12 content_section border border-dark">
                            <!--=================== contact info and form start====================-->
                            <div class="content_box">
                                <div class="content_box_inner">
                                    <div>
                                        <h3>
                                            Get in touch with us
                                        </h3>
                                        <p>
                                            Please send us your details for any queries or to request login credentials.
                                        </p>

                                        

  
                                         <%--  <form runat="server">--%>
                                        <div class="mt75 row justify-content-center">
                                            <div class="col-lg-6 col-12">
                                                <input runat="server" id="name" type="text" placeholder="Name" class="form-control">
                                            </div>
                                            <div class="col-lg-6 col-12">
                                                <input runat="server" id="email" type="email" placeholder="E-Mail" class="form-control">
                                            </div>
                                            <div class="col-12">
                                                <input runat="server" id="con" type="text" placeholder="Contact" class="form-control">
                                            </div>
                                            <div class="col-12">
                                                <textarea runat="server" id="message"  placeholder="Massage" class="form-control" cols="4" rows="4"></textarea>
                                            </div>
                                            <div class="col-12">
                                               
                                             <asp:button runat="server" ID="button" type="submit" class="btn btn-primary" OnClick="Send_Click" Text="Send"></asp:button>       
                                           
                                                    </div>
                                        </div>
                                   <%--</form>--%>
                                    </div>
                                </div>
                            </div>
                            <!--=================== contact info and form end====================-->
                        </div>
                    </div>
            </div>
        
          <div class="grid-item branding  col-sm-12 col-md-12 col-lg-3 border border-5 border-dark">
                            <h3> Ways to Reach Us</h3>
                             <li>
                                                <div class="img_box_two">
                                                    <img src="assets/img/icons/satelite.png" alt="info list">
                                                    <div class="content align-items-center">
                                                        <p>
                                                            Askari 11<br/>
                                                            Lahore.
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="img_box_two">
                                                    <img src="assets/img/icons/scheme.png" alt="info list">
                                                    <div class="content align-items-center">
                                                        <p>
                                                            TalentINC@gmail.com
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="img_box_two">
                                                    <img src="assets/img/icons/smartphone.png" alt="info list">
                                                    <div class="content align-items-left">
                                                        <p>
                                                            +92 322 4552574 <br/>
                                                            +92 322 4864083
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                                
                                                    <div class="content align-items-left">
                                                   
                                                             <!--social and copyright -->
            
                    
                       <ul class="social_menu">
                        <li>
                            <a href="#"> <i class="ion ion-social-pinterest"></i> </a>
                        </li>
                        <li>
                            <a href="#"> <i class="ion ion-social-facebook"></i> </a>
                        </li>
                        <li>
                            <a href="#"> <i class="ion ion-social-twitter"></i> </a>
                        </li>
                        <li>
                            <a href="#"> <i class="ion ion-social-dribbble"></i> </a>
                        </li>
                    </ul>
            <!--social and copyright end -->
                                                       
                                                
                                                </div>
                 </div>
          


            <div class="grid-item branding  col-sm-12 col-md-6 col-lg-5 border border-5 border-dark">
                  
                <div class="img_card">
                    
                            <h4 class="form-signin-heading">Join Us</h4>
        
         <label for="inputname" >Name</label>
        <input runat="server" type="Text" id="inputname" class="form-control" placeholder="Name" required="">

         <label for="inputEmail" >Email address</label>
        <input runat="server" type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        
        <label for="contact" >Contact</label>
        <input runat="server" type="number" id="contact1" class="form-control" placeholder="Contact Number" required="" autofocus="">
       
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

                        
</asp:Content>
