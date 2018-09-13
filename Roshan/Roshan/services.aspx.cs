using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Roshan.DAL;
using System.Data;
using System.Web.UI.HtmlControls;

namespace Roshan
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            var siteMaster = (Home)this.Master;
            if (siteMaster != null) siteMaster.IsServices = "active";
            if (Session["username"] != null)
            {
                if (siteMaster != null) siteMaster.remove_login = "display:none";
                string x = Session["username"].ToString();
                if (x == "admin@admin.com")
                {
                    siteMaster.showadmin();
                }

                siteMaster.reveal_services();
                siteMaster.show_user();
            }
            else
            {
                Response.Redirect("login.aspx");

            }
            
              
        }

        protected void print_click(object sender, EventArgs e)
        {
            //when i click this button i need to call javascript function
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append(@"<script language='javascript'>");
            sb.Append(@"addiv();");
            sb.Append(@"</script>");
            System.Web.UI.ScriptManager.RegisterStartupScript(this, this.GetType(), "JCall1", sb.ToString(), false);
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int x = talent.SelectedIndex;
            int y = gender.SelectedIndex;
           // int value = agegroup.SelectedIndex;

            string al = age1.Text;
            string au = age2.Text;

            string t="";
            string g="";

            if(x==0)
            {
                t = "Actor";
            }
            else if(x==1)
            {
                t = "Model";
            }
            else if(x==2)
            {
                t = "Singer";
            }

            if (y == 0)
            {
                g = "Male";
            }
            else
                g = "Female";


            //if(value==0)
            //{
            //    al = 18;
            //    au = 22;
            //}
            //else if(value==1)
            //{
            //    al = 23;
            //    au = 26;
            //}
            //else if (value == 2)
            //{
            //    al = 27;
            //    au = 31;
            //}
            //else if (value == 3)
            //{
            //    al = 32;
            //    au = 36;
            //}

            myDAL obj=new myDAL();
            int index = 0;

          System.Data.DataTable dt= obj.Search(t, g,al,au);



          foreach (DataRow row in dt.Rows)
          {

              string ID = row["ID"].ToString();
              string Name = row["Name"].ToString();
              string Age = row["Age"].ToString();
              string weight = row["Weight"].ToString();
              string waist = row["Waist"].ToString();
              string pic1= row["Picture1"].ToString();
              string pic2 = row["Picture2"].ToString();
              string pic3 = row["Picture3"].ToString();
              string videos = row["Video"].ToString();


              var imagediv = new HtmlGenericControl("div");
              imagediv.Attributes.Add("class", "col-lg-3 col-sm-6 col-xs-12 mt-2 mb-2");
               imagediv.Style.Add("max-heigh", "300px");
              imagediv.Style.Add("max-width", "300px");


              var divhover = new HtmlGenericControl("div");
              divhover.Attributes.Add("class", "hovereffect");
              divhover.Style.Add("max-heigh", "300px");
              divhover.Style.Add("max-width", "300px");



              System.Web.UI.HtmlControls.HtmlImage x1 = new System.Web.UI.HtmlControls.HtmlImage();
              x1.Attributes.Add("src", pic1);
              x1.Attributes.Add("class", "img-responsive");
              //x1.Attributes.Add("min-heigh", "300px");
              //x1.Attributes.Add("min-width", "300px");



              var divoverlay = new HtmlGenericControl("div");
              divoverlay.Attributes.Add("class", "overlay");

              var a2 = new HtmlGenericControl("a");
              a2.Attributes.Add("class", "info");
              a2.InnerText = "Video";
              a2.Attributes.Add("data-toggle", "modal");
              a2.Attributes.Add("data-target", ".bd-example-modal-lg" + index.ToString()+"1");
              

              var a3 = new HtmlGenericControl("a");
              a3.Attributes.Add("class", "info");
              a3.InnerText = "Pictures";
              a3.Attributes.Add("data-toggle", "modal");
              a3.Attributes.Add("data-target", ".bd-example-modal-lg" + index.ToString()+"11");

              Button a4 = new Button();
              a4.Attributes.Add("class", "info");
              a4.Text = "Add";
              a4.Attributes.Add("runat", "server");
              a4.Click += new EventHandler (addtocart);
              a4.CommandArgument = ID.ToString();
              a4.Click += (s, ee) => {
                  if (Session["cart"] != null)
                  {
                      Session["cart"] += " " + a4.CommandArgument.ToString();
                  }
                  else
                  {
                      Session["cart"] = a4.CommandArgument.ToString();
                  }

              };

              


               var button = new HtmlGenericControl("a");
               button.Attributes.Add("class", "info");
              button.Attributes.Add("data-toggle", "modal");
              button.Attributes.Add("data-target", ".bd-example-modal-lg"+index.ToString());
              button.InnerText = "Details";
              

              var pop1 = new HtmlGenericControl("div");
              pop1.Attributes.Add("class", "modal fade bd-example-modal-lg"+ index.ToString());
              pop1.Attributes.Add("tabindex","-1");
              pop1.Attributes.Add("role","dialog");
              pop1.Attributes.Add("style", "display:none");
            //  pop1.Attributes.Add("aria-labelledby","myLargeModalLabel");
              pop1.Attributes.Add("aria-hidden","true");


              var pop11 = new HtmlGenericControl("div");
              pop11.Attributes.Add("class", "modal fade bd-example-modal-lg" + index.ToString() + "1");
              pop11.Attributes.Add("tabindex", "-1");
              pop11.Attributes.Add("role", "dialog");
              pop11.Attributes.Add("style", "display:none");
              //pop11.Attributes.Add("aria-labelledby", "myLargeModalLabel");
              pop11.Attributes.Add("aria-hidden", "true");


              var pop111 = new HtmlGenericControl("div");
              pop111.Attributes.Add("class", "modal fade bd-example-modal-lg" + index.ToString() + "11");
              pop111.Attributes.Add("tabindex", "-1");
              pop111.Attributes.Add("role", "dialog");
              pop111.Attributes.Add("style", "display:none");
              //pop111.Attributes.Add("aria-labelledby", "myLargeModalLabel");
              pop111.Attributes.Add("aria-hidden", "true");



              var pop2 = new HtmlGenericControl("div");
              pop2.Attributes.Add("class", "modal-dialog modal-dialog-centered");

               var pop22 = new HtmlGenericControl("div");
               pop22.Attributes.Add("class", "modal-dialog modal-dialog-centered");

               var pop222 = new HtmlGenericControl("div");
               pop222.Attributes.Add("class", "modal-dialog modal-dialog-centered");

              var pop3 = new HtmlGenericControl("div");
              pop3.Attributes.Add("class", "modal-header");

              var pop33 = new HtmlGenericControl("div");
              pop33.Attributes.Add("class", "modal-header");

              var pop333 = new HtmlGenericControl("div");
              pop333.Attributes.Add("class", "modal-header");

              var h3 = new HtmlGenericControl("h3");
              h3.ID="exampleModalLongTitle1";
              h3.Attributes.Add("class","modal-title w3-container w3-gray");
              h3.InnerText = ID;
              pop3.Controls.Add(h3);

              var cross = new HtmlGenericControl("button");
              cross.Attributes.Add("class", "close");
              cross.Attributes.Add("data-dismiss", "modal");
              cross.InnerText = "x";
              cross.Attributes.Add("type", "button");

              var cross1 = new HtmlGenericControl("button");
              cross1.Attributes.Add("class", "close");
              cross1.Attributes.Add("data-dismiss", "modal");
              cross1.InnerText = "x";
              cross1.Attributes.Add("type", "button");

              var cross2 = new HtmlGenericControl("button");
              cross2.Attributes.Add("class", "close");
              cross2.Attributes.Add("data-dismiss", "modal");
              cross2.InnerText = "x";
              cross2.Attributes.Add("type", "button");
            
              
              pop3.Controls.Add(cross);
              pop33.Controls.Add(cross1);
              pop333.Controls.Add(cross2);
              

              var con = new HtmlGenericControl("div");
              con.Attributes.Add("class", "modal-content w3-animate-zoom");
              con.Style.Add("font-size", "10px");

              var con2 = new HtmlGenericControl("div");
              con.Attributes.Add("class", "modal-content w3-animate-zoom");
              con.Style.Add("font-size", "10px");

              var con3 = new HtmlGenericControl("div");
              con.Attributes.Add("class", "modal-content w3-animate-zoom");
              con.Style.Add("font-size", "10px");
                 
              
              


              int i = 0;
              foreach (DataColumn dc in dt.Columns)
              {
                  if (i == 1)
                      goto here;
                  var d1 = new HtmlGenericControl("div");
                  d1.Style.Add("marign-top", "10px");

                  //var d2 = new HtmlGenericControl("span");
                  //d2.Style.Add("marign-top", "20px");
                  //d2.Attributes.Add("class", "w3-container w3-blue");
                  //d2.InnerText = dc.ColumnName.ToString();

                  var d3 = new HtmlGenericControl("label");
                  
                  d3.InnerText = dc.ColumnName.ToString() +" : " + row[i].ToString();

                 
                  //con.Controls.Add(d2);
                  con.Controls.Add(d3);
              here:
                  i++;
                  if (i == 19)
                      break;
              }
             

              var close = new HtmlGenericControl("button");
              close.Attributes.Add("class","btn btn-primary");
              close.InnerText = "Close";
              close.Attributes.Add("data-dismiss", "modal");

              var close1 = new HtmlGenericControl("button");
              close1.Attributes.Add("class", "btn btn-primary");
              close1.InnerText = "Close";
              close1.Attributes.Add("data-dismiss", "modal");

              var close2 = new HtmlGenericControl("button");
              close2.Attributes.Add("class", "btn btn-primary");
              close2.InnerText = "Close";
              close2.Attributes.Add("data-dismiss", "modal");

              var vid = new HtmlGenericControl("iframe");

              vid.Attributes.Add("frameborder", "0");
              vid.Attributes.Add("allow", "autoplay; encrypted-media");
              vid.Attributes.Add("src", videos);
              vid.Attributes.Add("height", "500px");
              vid.Attributes.Add("width", "100%");
              con2.Controls.Add(vid);


              
              con.Controls.Add(close);
              pop2.Controls.Add(pop3);
              pop2.Controls.Add(con);

              pop1.Controls.Add(pop2);


              con2.Controls.Add(close1);
              pop22.Controls.Add(pop33);
              pop22.Controls.Add(con2);

              pop11.Controls.Add(pop22);


              con3.Controls.Add(close2);
              pop222.Controls.Add(pop333);
              pop222.Controls.Add(con3);

              pop111.Controls.Add(pop222);


             

              
              //          <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" style="height:200px">
              //<div class="hovereffect">
              //    <img class="img-responsive" src="http://placehold.it/350x200" alt="">
              //    <div class="overlay">

              //       <a class="info" href="index.aspx">link here</a>
              //        <a class="info" href="index.aspx">link here</a>
              //        <a class="info" href="index.aspx">link here</a>

              //    </div>
              //</div>



              imagediv.Controls.Add(divhover);
              divhover.Controls.Add(x1);
              divhover.Controls.Add(divoverlay);
              divoverlay.Controls.Add(a2);
              divoverlay.Controls.Add(a3);
              divoverlay.Controls.Add(a4);
              divoverlay.Controls.Add(button);
              imagediv.Controls.Add(pop1);
              imagediv.Controls.Add(pop11);
               imagediv.Controls.Add(pop11);
              panel1.Controls.Add(imagediv);


              index++;
          }

          if (index > 0)
          {
              rheading.Style.Remove("display");
          }

        }

        

        

        

        protected void showall_Click(object sender, EventArgs e)
        {
            myDAL obj = new myDAL();
            System.Data.DataTable dt = obj.Showall();
            int index = 0;

            foreach (DataRow row in dt.Rows)
            {

                string ID = row["ID"].ToString();
                string Name = row["Name"].ToString();
                string Age = row["Age"].ToString();
                string weight = row["Weight"].ToString();
                string waist = row["Waist"].ToString();
                string pic1 = row["Picture1"].ToString();
                string pic2 = row["Picture2"].ToString();
                string pic3 = row["Picture3"].ToString();
                string videos = row["Video"].ToString();



                var divrow = new HtmlGenericControl("div");
                divrow.Attributes.Add("class", "row row-eq-height mt-3");

                var divtext = new HtmlGenericControl("div");
                divtext.Attributes.Add("class", "col-md-2 text-center");

                var divpics = new HtmlGenericControl("div");
                divpics.Attributes.Add("class", "col-xs-12 text-center col-md-5");

                var divvideo = new HtmlGenericControl("div");
                divvideo.Attributes.Add("class", "embed-responsive embed-responsive-16by9 col-xs-10 text-center col-md-5");



                divrow.Controls.Add(divtext);
                divrow.Controls.Add(divpics);
                divrow.Controls.Add(divvideo);





                //img tag for pic 1 2 3

                System.Web.UI.HtmlControls.HtmlImage x1 = new System.Web.UI.HtmlControls.HtmlImage();
                x1.Attributes.Add("src", pic1);
                x1.Attributes.Add("class", "d-block w-100");
                x1.Attributes.Add("height", "300px");

                System.Web.UI.HtmlControls.HtmlImage x2 = new System.Web.UI.HtmlControls.HtmlImage();
                x2.Attributes.Add("src", pic2);
                x2.Attributes.Add("class", "d-block w-100");
                x2.Attributes.Add("height", "300px");

                System.Web.UI.HtmlControls.HtmlImage x3 = new System.Web.UI.HtmlControls.HtmlImage();
                x3.Attributes.Add("src", pic3);
                x3.Attributes.Add("class", "d-block w-100");
                x3.Attributes.Add("height", "300px");

                // img tag ends



                System.Web.UI.HtmlControls.HtmlAnchor a1 = new System.Web.UI.HtmlControls.HtmlAnchor();
                a1.Attributes.Add("class", "carousel-control-prev");
                a1.Attributes.Add("href", "#ContentPlaceHolder1_carouselExampleSlidesOnly" + index.ToString());
                a1.Attributes.Add("role", "button");
                a1.Attributes.Add("data-slide", "prev");

                var span = new HtmlGenericControl("span");
                span.Attributes.Add("class", "carousel-control-prev-icon");
                span.Attributes.Add("aria-hidden", "true");

                var span1 = new HtmlGenericControl("span");
                span1.Attributes.Add("class", "sr-only");
                //  span1.Attributes.Add("Text", "Previous");
                span1.InnerHtml = "Previous";



                System.Web.UI.HtmlControls.HtmlAnchor a11 = new System.Web.UI.HtmlControls.HtmlAnchor();
                a11.Attributes.Add("class", "carousel-control-next");
                a11.Attributes.Add("href", "#ContentPlaceHolder1_carouselExampleSlidesOnly" + index.ToString());
                a11.Attributes.Add("role", "button");
                a11.Attributes.Add("data-slide", "next");

                var span2 = new HtmlGenericControl("span");
                span2.Attributes.Add("class", "carousel-control-next-icon");
                span2.Attributes.Add("aria-hidden", "true");

                var span21 = new HtmlGenericControl("span");
                span21.Attributes.Add("class", "sr-only");
                span21.Attributes.Add("Text", "Next");









                //outer div 
                System.Web.UI.HtmlControls.HtmlGenericControl createDiv =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                createDiv.ID = "carouselExampleSlidesOnly" + index.ToString();
                createDiv.Attributes.Add("class", "carousel slide");
                createDiv.Attributes.Add("data-ride", "carousel");

                //outer div ends



                //inner div 
                System.Web.UI.HtmlControls.HtmlGenericControl inner =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                inner.Attributes.Add("class", "carousel-inner");
                //inner div ends



                //img div 1
                System.Web.UI.HtmlControls.HtmlGenericControl div1 =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                div1.Attributes.Add("class", "carousel-item active");
                //img div 1 ends

                //img div 2
                System.Web.UI.HtmlControls.HtmlGenericControl div2 =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                div2.Attributes.Add("class", "carousel-item");
                //img div 2 ends

                //img div 3
                System.Web.UI.HtmlControls.HtmlGenericControl div3 =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                div3.Attributes.Add("class", "carousel-item");
                //img div 3 ends


                a1.Controls.Add(span);
                a1.Controls.Add(span1);

                a11.Controls.Add(span2);
                a11.Controls.Add(span21);

                div1.Controls.Add(x1);
                div2.Controls.Add(x2);
                div3.Controls.Add(x3);

                inner.Controls.Add(div1);
                inner.Controls.Add(div2);
                inner.Controls.Add(div3);

                createDiv.Controls.Add(inner);
                createDiv.Controls.Add(a1);
                createDiv.Controls.Add(a11);




                var ol = new HtmlGenericControl("ol");
                ol.Attributes.Add("class", "carousel-indicators");
                var li1 = new HtmlGenericControl("li");
                li1.Attributes.Add("data-target", "#ContentPlaceHolder1_carouselExampleSlidesOnly" + index.ToString());
                li1.Attributes.Add("data-slide-to", "0");
                li1.Attributes.Add("class", "active");

                var li2 = new HtmlGenericControl("li");
                li2.Attributes.Add("data-target", "#ContentPlaceHolder1_carouselExampleSlidesOnly" + index.ToString());
                li2.Attributes.Add("data-slide-to", "1");

                var li3 = new HtmlGenericControl("li");
                li3.Attributes.Add("data-target", "#ContentPlaceHolder1_carouselExampleSlidesOnly" + index.ToString());
                li3.Attributes.Add("data-slide-to", "2");

                ol.Controls.Add(li1);
                ol.Controls.Add(li2);
                ol.Controls.Add(li3);

                createDiv.Controls.Add(ol);
                createDiv.Attributes.Add("style", "max-height:300px");
                divpics.Controls.Add(createDiv);



                //Button button = new Button();
                var button = new HtmlGenericControl("button");
                button.Attributes.Add("class", "btn btn-primary center-block");
                button.Style.Add("margin-top", "70%");

                button.Attributes.Add("type", "button");
                button.Attributes.Add("data-toggle", "modal");
                button.Attributes.Add("data-target", ".bd-example-modal-lg" + index.ToString());
                button.InnerText = "Details";


                var pop1 = new HtmlGenericControl("div");
                pop1.Attributes.Add("class", "modal fade bd-example-modal-lg" + index.ToString());
                pop1.Attributes.Add("tabindex", "-1");
                pop1.Attributes.Add("role", "dialog");
                pop1.Attributes.Add("style", "display:none");
                pop1.Attributes.Add("aria-labelledby", "myLargeModalLabel");
                pop1.Attributes.Add("aria-hidden", "true");


                var pop2 = new HtmlGenericControl("div");
                pop2.Attributes.Add("class", "modal-dialog modal-lg");

                var pop3 = new HtmlGenericControl("div");
                pop3.Attributes.Add("class", "modal-header");


                var h3 = new HtmlGenericControl("h3");
                h3.ID = "exampleModalLongTitle1";
                h3.Attributes.Add("class", "modal-title w3-container w3-gray");
                h3.InnerText = ID;
                pop3.Controls.Add(h3);

                //<button type="button" class="close" data-dismiss="modal">&times;</button>
                var cross = new HtmlGenericControl("button");
                cross.Attributes.Add("class", "close");
                cross.Attributes.Add("data-dismiss", "modal");
                cross.InnerText = "x";
                cross.Attributes.Add("type", "button");
                pop3.Controls.Add(cross);


                var con = new HtmlGenericControl("div");
                con.Attributes.Add("class", "modal-content w3-modal-content w3-animate-zoom");
                con.Style.Add("font-size", "20px");





                int i = 0;
                foreach (DataColumn dc in dt.Columns)
                {
                    if (i == 1)
                        goto here;
                    var d1 = new HtmlGenericControl("div");
                    d1.Style.Add("marign-top", "10px");

                    var d2 = new HtmlGenericControl("span");
                    d2.Style.Add("marign-top", "20px");
                    d2.Attributes.Add("class", "w3-container w3-blue");
                    d2.InnerText = dc.ColumnName.ToString();

                    var d3 = new HtmlGenericControl("label");

                    d3.InnerText = row[i].ToString();

                    //d1.Controls.Add(d2);
                    //d1.Controls.Add(d3);

                    con.Controls.Add(d2);
                    con.Controls.Add(d3);
                here:
                    i++;
                    if (i == 18)
                        break;
                }


                var close = new HtmlGenericControl("button");
                close.Attributes.Add("class", "btn btn-primary");
                close.InnerText = "Close";
                close.Attributes.Add("data-dismiss", "modal");


                con.Controls.Add(close);
                pop2.Controls.Add(pop3);
                pop2.Controls.Add(con);

                pop1.Controls.Add(pop2);



                divtext.Controls.Add(pop1);
                divtext.Controls.Add(button);



                var vid = new HtmlGenericControl("iframe");

                vid.Attributes.Add("frameborder", "0");
                vid.Attributes.Add("allow", "autoplay; encrypted-media");
                vid.Attributes.Add("src", videos);
                // vid.Attributes.Add("style", "min-height:150px; min-width:380px");


                divvideo.Controls.Add(vid);


                panel1.Controls.Add(divrow);


                index++;
            }

            if (index > 0)
            {
                rheading.Style.Remove("display");
            }
        }
    
      
        
       protected void addtocart(object sender,EventArgs e)
        {
            Button btn = sender as Button;

            if(Session["cart"]!=null)

            {
                Session["cart"]+=" "+btn.CommandArgument.ToString();
            }
            else
            {
                Session["cart"] = btn.CommandArgument.ToString();
            }

            mylabel.Text=Session["cart"].ToString();
            Response.Write("<script>alert('Hello');</script>");
        }

        private void alert()
        {
            throw new NotImplementedException();
        }
    
    }
}