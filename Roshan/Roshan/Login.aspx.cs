using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Roshan.DAL;

namespace Roshan
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var siteMaster = (Home)this.Master;
            if (siteMaster != null) siteMaster.IsLogin = "active";
         
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string a = inputEmail.Value;
            string b = inputPassword.Value;

            myDAL obj = new myDAL();

            int x = obj.CheckLogin(a, b);

            if (x == 1)
            {
                Session["username"] = a;
                var siteMaster = (Home)this.Master;
                if (siteMaster != null) siteMaster.remove_login = "display:none";

                siteMaster.show_user();
                if (a == "admin@admin.com")
                {
                    siteMaster.showadmin();
                    Response.Redirect("admin_panel.aspx");
                }
                else
                    Response.Redirect("services.aspx");
            }
            }
        }
    }