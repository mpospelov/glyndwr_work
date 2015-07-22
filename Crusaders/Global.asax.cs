using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using Crusaders;

namespace Crusaders
{
    public class Global : HttpApplication
    {
        public static Uri SvcUri = new Uri("http://glyndwrcrusadersservice.apphb.com/CrusadersService.svc/");
        public static Dictionary<string, string> messages = new Dictionary<string, string>();

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterOpenAuth();

            messages.Add("created", "Instance successfuly created!");
            messages.Add("updated", "Instance successfuly updated!");
            messages.Add("deleted", "Instance successfuly deleted!");
            messages.Add("relation_added", "Instance added to relation!");
            messages.Add("relation_removed", "Instance added to relation!");
        }

        public static CrusadersService.CrusadersEntities CrusadersEntitiesDB()
        {
             return new CrusadersService.CrusadersEntities(SvcUri);
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }
    }
}
