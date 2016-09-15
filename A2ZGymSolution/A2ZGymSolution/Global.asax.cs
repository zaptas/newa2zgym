using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace A2ZGymSolution
{
    public class Global : System.Web.HttpApplication
    {
        void registerurl(RouteCollection rote)
        {
            rote.MapPageRoute("Home", "Home", "~/index.aspx");
            rote.MapPageRoute("Homelogin", "Home/{id2}", "~/Gymlogin.aspx", true, new RouteValueDictionary { { "id2", null } });
            rote.MapPageRoute("Login", "Login/{id2}", "~/login.aspx", true, new RouteValueDictionary { { "id2", null } });
            rote.MapPageRoute("Registration", "Registration", "~/register.aspx");
            rote.MapPageRoute("Gym Profile", "Gym/{name}/{id}", "~/gym_profile.aspx", true, new RouteValueDictionary { { "id", null } });
            rote.MapPageRoute("Gym Search", "Search/{loc}", "~/GYM.aspx");

        }

        protected void Application_Start(object sender, EventArgs e)
        {
            registerurl(RouteTable.Routes);
        }


        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}