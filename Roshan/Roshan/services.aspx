<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="Roshan.Services"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title> Services</title>
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   
<style>
       img {
    pointer-events: none;
}
        @media print {
    html, body,img,iframe {
       display: none;  /* hide whole page */
    }
}

  .modal .modal-dialog {
    z-index: 10051;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) !important; }

.hovereffect {
  width: 100%;
  height: 100%;
  float: left;
  overflow: hidden;
  position: relative;
  text-align: center;
  cursor: default;
}

.hovereffect .overlay {
  width: 100%;
  height: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: 0;
}

.hovereffect img {
  display: block;
  position: relative;
  -webkit-transition: all 0.4s ease-in;
  transition: all 0.4s ease-in;
}

.hovereffect:hover img {
  filter: url('data:image/svg+xml;charset=utf-8,<svg xmlns="http://www.w3.org/2000/svg"><filter id="filter"><feColorMatrix type="matrix" color-interpolation-filters="sRGB" values="0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0 0 0 1 0" /><feGaussianBlur stdDeviation="3" /></filter></svg>#filter');
  filter: grayscale(1) blur(3px);
  -webkit-filter: grayscale(1) blur(3px);
  -webkit-transform: scale(1.2);
  -ms-transform: scale(1.2);
  transform: scale(1.2);
}

.hovereffect h2 {
  text-transform: uppercase;
  text-align: center;
  position: relative;
  font-size: 17px;
  padding: 10px;
  background: rgba(0, 0, 0, 0.6);
}

.hovereffect a.info {
  display: inline-block;
  text-decoration: none;
  padding: 7px 14px;
  border: 1px solid #fff;
  margin: 50px 0 0 0;
  background-color: transparent;
}

.hovereffect a.info:hover {
  box-shadow: 0 0 5px #fff;
}

.hovereffect a.info, .hovereffect h2 {
  -webkit-transform: scale(0.7);
  -ms-transform: scale(0.7);
  transform: scale(0.7);
  -webkit-transition: all 0.4s ease-in;
  transition: all 0.4s ease-in;
  opacity: 0;
  filter: alpha(opacity=0);
  color: #fff;
  text-transform: uppercase;
}

.hovereffect:hover a.info, .hovereffect:hover h2 {
  opacity: 1;
  filter: alpha(opacity=100);
  -webkit-transform: scale(1);
  -ms-transform: scale(1);
  transform: scale(1);
}










</style>


    <script type="text/javascript">
        var dataParam = '{"param":"1"}'; //or whatever data you may be sending or not sending

        function myajax() {
            $.ajax({
                type: "POST",
                url: 'services.aspx/Unnamed1_Click',
                contentType: "application/json; charset=utf-8",
                data: dataParam,
                datatype: "json",
            }).done(function (data) {
                alert('success');
            }).fail(function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.getResponseHeader("error"));
            })
        };


    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" oncontextmenu="return false">
     <!--=================== content body ====================-->
       
    

    <div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
            <div >
                <div class="img_card">
                    <div class="row justify-content-center">
                                       
                        <div class="col-md-6 col-7 content_section">
                            <!--=================== contact info and form start====================-->
                     
        <div class="form-group">
            <h2 class="text-center"> Search for Talent </h2>
  <label class="control-label col-sm-offset-2 col-sm-2" for="company">Talent</label>
  
    <select id="talent" class="form-control" runat="server">
      <option>Actor</option>
      <option>Model</option>
    </select>
           
            
     <label class="control-label col-sm-offset-2 col-sm-2" for="company">Gender</label>
    <select id="gender" class="form-control" runat="server">
      <option>Male</option>
      <option>Female</option>
    </select>
     
     
     <label class="control-label col-sm-offset-2 col-sm-2" for="company">Age</label>
    <asp:TextBox class="form-control" runat="server" ID="age1" />
            
            to
    <asp:TextBox class="form-control" runat="server" id="age2" >
                  
                   </asp:TextBox>
      <asp:Button runat="server" Text="Search" CssClass="btn-primary" OnClick="Unnamed1_Click" />
                                            <asp:Button runat="server" Text="Show All" CssClass="btn-primary" ID="showall" OnClick="showall_Click" />
            <asp:Label runat="server" id="mylabel">here</asp:Label>       
  <%--</form>--%>
                </div>
            
                            <!--=================== contact info and form end====================-->
                             </div> 
                        </div>
                    </div>
                </div>
        
            
                
                   
                    

        

     </div>

   <div class="panel">
            <div class="panel-heading" style="display:none" id="rheading" runat="server">
                <h2 class="text-center"> Result </h2>
            </div>
 
    <div class=" col-12 body_block  align-content-center">
   
    <asp:Panel runat="server" ID="panel1" CssClass="row">

    </asp:Panel>
        
    </div>
    </div>
               <!--=================== content body end ====================-->
</asp:Content>
