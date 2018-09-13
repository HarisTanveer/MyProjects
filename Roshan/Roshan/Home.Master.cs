using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Roshan.DAL;
namespace Roshan
{
    public partial class Home : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }





        

        public String IsAdmin
        {
            get { return adminp.Attributes["class"]; }
            set { adminp.Attributes["class"] = value; }
        }

        public String IsHome
        {
            get { return home1.Attributes["class"]; }
            set { home1.Attributes["class"] = value; }
        }

        public String IsJoin
        {
            get { return join.Attributes["class"]; }
            set { join.Attributes["class"] = value; }
        }


        public String IsServices
        {
            get { return services1.Attributes["class"]; }
            set { services1.Attributes["class"] = value; }
        }

        public String IsBlog
        {
            get { return blog1.Attributes["class"]; }
            set { blog1.Attributes["class"] = value; }
        }

        public String IsContact
        {
            get { return contacts1.Attributes["class"]; }
            set { contacts1.Attributes["class"] = value; }
        }

        public String IsLogin
        {
            get { return Li1.Attributes["class"]; }
            set { Li1.Attributes["class"] = value; }
        }

        public String remove_login
        {
            get { return Li1.Attributes["style"]; }
            set { Li1.Attributes["style"] = value; }

        }

        public void reveal_services()
        {
            services1.Style.Remove("display");
        }

        public void show_user()
        {
            user_block.Style.Remove("display");
            username.InnerHtml = Session["username"].ToString();
        }

        public void logout(object sender, EventArgs e)
        {
            Session["username"] = null;
            reveal_login();
            remove_services();
            Response.Redirect("index.aspx");

        }

        public void reveal_login()
        {
            Li1.Style.Remove("display");
        }

        public void remove_services()
        {
            services1.Attributes.Add("Style", "display:none");
        }

        public void showadmin()
        {
            adminp.Style.Remove("display");
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
                remove_login = "display:none";

                show_user();
                if (a == "admin@admin.com")
                {
                   showadmin();
                    Response.Redirect("admin_panel.aspx");
                }
                else
                    Response.Redirect("services.aspx");
            }
        }

    }
}