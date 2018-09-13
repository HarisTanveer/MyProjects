<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="Roshan.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title> Our Videos</title>
    


    <style>
        .iframe-container {
  overflow: hidden;
  padding-top: 56.25%;
  position: relative;
}

.iframe-container iframe {
   border: 0;
   height: 100%;
   left: 0;
   position: absolute;
   top: 0;
   width: 100%;
}

    </style>


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
            
                  <div class="row justify-content-center">  
                     <h2 class="text-center"> Our Work Videos</h2>
                
                    <asp:Panel runat="server" ID="videos">

                    </asp:Panel>
                         
        </div>
         </div>
 


</asp:Content>
