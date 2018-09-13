<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" MaintainScrollPositionOnPostBack="true" CodeBehind="index.aspx.cs" Inherits="Roshan.index" %>

<asp:Content ID="index" ContentPlaceHolderID="head" runat="server">
    
    <title>
        Home
    </title>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
      
    <script type="text/javascript">
        $(document).ready(function () {
            $('.customer-logos').slick({
                slidesToShow: 4,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 1000,
                arrows: false,
                dots: false,
                pauseOnHover: false,
                responsive: [{
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 3
                    }
                }, {
                    breakpoint: 520,
                    settings: {
                        slidesToShow: 2
                    }
                }]
            });
        });
    </script>


      <style>
        @media print 
        {
            html, body, img, iframe 
            {
                display: none; /* hide whole page */
            }
        }

                /* Slider */
.slick-slide {
    margin: 0px 20px;
}

.slick-slide img {
    width: 100%;
}

.slick-slider
{
    position: relative;

    display: block;
    box-sizing: border-box;

    -webkit-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;

    -webkit-touch-callout: none;
    -khtml-user-select: none;
    -ms-touch-action: pan-y;
        touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}

.slick-list
{
    position: relative;

    display: block;
    overflow: hidden;

    margin: 0;
    padding: 0;
}
.slick-list:focus
{
    outline: none;
}
.slick-list.dragging
{
    cursor: pointer;
    cursor: hand;
}

.slick-slider .slick-track,
.slick-slider .slick-list
{
    -webkit-transform: translate3d(0, 0, 0);
       -moz-transform: translate3d(0, 0, 0);
        -ms-transform: translate3d(0, 0, 0);
         -o-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
}

.slick-track
{
    position: relative;
    top: 0;
    left: 0;

    display: block;
}
.slick-track:before,
.slick-track:after
{
    display: table;

    content: '';
}
.slick-track:after
{
    clear: both;
}
.slick-loading .slick-track
{
    visibility: hidden;
}

.slick-slide
{
    display: none;
    float: left;

    height: 100%;
    min-height: 1px;
}
[dir='rtl'] .slick-slide
{
    float: right;
}
.slick-slide img
{
    display: block;
}
.slick-slide.slick-loading img
{
    display: none;
}
.slick-slide.dragging img
{
    pointer-events: none;
}
.slick-initialized .slick-slide
{
    display: block;
}
.slick-loading .slick-slide
{
    visibility: hidden;
}
.slick-vertical .slick-slide
{
    display: block;

    height: auto;

    border: 1px solid transparent;
}
          .slick-arrow.slick-hidden {
              display: none;
          }
        </style>
 
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
            <div class="portfolio">
                <div class="container-fluid">
                    <!--=================== masaonry portfolio start====================-->
                    <div class="grid img-container justify-content-center no-gutters">
                        <div class="grid-sizer col-sm-12 col-md-6 col-lg-3"></div>
                        <div class="grid-item branding  col-sm-12 col-md-6 col-lg-3">
                            <a href="assets/img/portfolio/home-port1.png" title="project name 1">
                                <div class="project_box_one">
                                    <img src="assets/img/portfolio/home-port1.png" alt="pro1" />
                                    <div class="product_info">
                                        <div class="product_info_text">
                                            <div class="product_info_text_inner">
                                                <i class="ion ion-plus"></i>
                                                <h4>project name</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="grid-item  branding architecture  col-sm-12 col-md-6">
                            <a href="assets/img/portfolio/TalentINC.png" title="project name 2">
                                <div class="project_box_one">
                                    <img src="assets/img/portfolio/TalentINC.png" alt="pro1" />
                                    <div class="product_info">
                                        <div class="product_info_text">
                                            <div class="product_info_text_inner">
                                                <i class="ion ion-plus"></i>
                                                <h4>project name</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="grid-item  design col-sm-12 col-md-6 col-lg-3">
                            <a href="assets/img/portfolio/home-port3.png" title="project name 5">
                                <div class="project_box_one">
                                    <img src="assets/img/portfolio/home-port3.png" alt="pro1" />
                                    <div class="product_info">
                                        <div class="product_info_text">
                                            <div class="product_info_text_inner">
                                                <i class="ion ion-plus"></i>
                                                <h4>project name</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="grid-item  photography design col-sm-12 col-md-6 col-lg-3">
                            <a href="assets/img/portfolio/home-port4.png" title="project name 5">
                                <div class="project_box_one">
                                    <img src="assets/img/portfolio/home-port4.png" alt="pro1" />
                                    <div class="product_info">
                                        <div class="product_info_text">
                                            <div class="product_info_text_inner">
                                                <i class="ion ion-plus"></i>
                                                <h4>project name</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="grid-item  branding photography  col-sm-12 col-md-6 col-lg-3">
                            <a href="assets/img/portfolio/home-port5.png" title="project name 5">
                                <div class="project_box_one">
                                    <img src="assets/img/portfolio/home-port5.png" alt="pro1" />
                                    <div class="product_info">
                                        <div class="product_info_text">
                                            <div class="product_info_text_inner">
                                                <i class="ion ion-plus"></i>
                                                <h4>project name</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="grid-item   architecture design col-sm-12 col-md-6 col-lg-3">
                            <a href="assets/img/portfolio/home-port6.png" title="project name 5">
                                <div class="project_box_one">
                                    <img src="assets/img/portfolio/home-port6.png" alt="pro1" />
                                    <div class="product_info">
                                        <div class="product_info_text">
                                            <div class="product_info_text_inner">
                                                <i class="ion ion-plus"></i>
                                                <h4>project name</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!--=================== masaonry portfolio end====================-->
                </div>
            </div>

 
        </div>

     <!--=================== content body ====================-->
        <div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
            <div id="xxx">
                <div class="img_card">
                    <div class="row justify-content-center">
                   <%--     <div class="col-md-6 col-7 content_section">--%>
                            <div class="content_box">
                                <div class="content_box_inner">
                                    <div>
                                        <h3>
                                            Just a few words about us
                                        </h3>
                                        <p>
                                           Talent Inc. aims to create unlimited opportunities for talented individuals across the country through a virtual database of performers, models and actors where convenience is the priority. 
                                            Our extensive range of potential individuals is a click away and is displayed to be easily accessible to our clients through an online portal accessed through our login.
                                        </p>
                                        <!--=================== counter start====================-->
                                        <div class="pt50">
                                            <div class="pl-5">
                                            <div class="pl-5">
                                            <div class="pl-5">
                                            <div class="pl-5">
                                            <div class="pl-5">
                                            <div class="row justify-content-center">
                                                <div class="col-12 col-md-4">
                                                    <div class="counter_box">
                                                        <div class="divider"></div>
                                                        <span class="counter">12</span>
                                                        <h5>Years of experience</h5>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-4">
                                                    <div class="counter_box">
                                                        <div class="divider"></div>
                                                        <span class="counter">257</span>
                                                        <h5>happy clients</h5>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-4">
                                                    <div class="counter_box">
                                                        <div class="divider"></div>
                                                        <span class="counter">192</span>
                                                        <h5>projects completed</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                            </div>
                                        <!--=================== counter end====================-->
                                    </div>
                                           </div>
                                        </div>

                                </div>
<div class="col-lg-12 col-md-9 col-12 body_block  align-content-center">
                                       <div class="col-12">
                       <h2 class="text-center"> Our Partners </h2>

    <section class="customer-logos slider">
    <div class="slide"><img src="assets/img/logos/coke.png"></div>
    <div class="slide"><img src="assets/img/logos/alkaram.png"></div>
    <div class="slide"><img src="assets/img/logos/ubl.png"></div>
    <div class="slide"><img src="assets/img/logos/fast1.png"></div>
    <div class="slide"><img src="assets/img/logos/fast.png"></div>
    <div class="slide"><img src="assets/img/logos/ubl.png"></div>
    <div class="slide"><img src="assets/img/logos/alkaram.png"></div>
    <div class="slide"><img src="assets/img/logos/ubl.png"></div>
  </section>
</div>

                           
                        </div>

                    </div>
                </div>
            </div>
   
</asp:Content>
