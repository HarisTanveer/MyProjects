<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="about-us.aspx.cs" Inherits="Roshan.about_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <title>About Us</title>

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



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur leo est, feugiat nec elementum id, suscipit id nulla. Nulla sit amet luctus dolor. Etiam finibus consequat ante ac congue. Quisque porttitor porttitor tempus. Donec maximus ipsum non ornare vestibulum. Sed libero nibh, feugiat at enim id, bibendum sollicitudin arcu. Aliquam elit nibh, finibus eget mauris non, pretium vehicula ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                                        </p>
                                        <!--=================== counter start====================-->
                                        <div class="pt50">
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

