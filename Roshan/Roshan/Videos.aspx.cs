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
    public partial class blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            showvideos();

        }

        public void showvideos()
        {
            myDAL obj = new myDAL();
            System.Data.DataTable dt = obj.videos();
            int index = 0;
            foreach (DataRow dr in dt.Rows)
            {
                string link = dr["videolink"].ToString();


                

                var divvideo = new HtmlGenericControl("div");
                divvideo.ID = "id" + index.ToString();
                divvideo.Attributes.Add("class", "iframe-container");

                var vid = new HtmlGenericControl("iframe");

                vid.Attributes.Add("class","embed-responsive-item");
                vid.Attributes.Add("src", link);
                vid.Attributes.Add("allowfullscreen","");
              //  divvideo.Controls.Add(vid);
                videos.Controls.Add(vid);
                index++;
            }
        }

    }
}