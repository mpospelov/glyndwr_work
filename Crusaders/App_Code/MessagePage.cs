using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Crusaders.App_Code
{
    public class MessagePage : System.Web.UI.Page
    {
        public static string success_message = string.Empty;

        protected void handleMessage()
        {
            if (Request.Cookies["message"] != null)
            {
                success_message = Global.messages[Request.Cookies["message"]["value"]];
                HttpCookie message = new HttpCookie("message");
                message.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(message);
            }
            else
            {
                success_message = string.Empty;
            }
        }

        protected void setUpdatedMessage()
        {
            Response.Cookies["message"]["value"] = "updated";
        }

        protected void setDeletedMessage()
        {
            Response.Cookies["message"]["value"] = "deleted";
        }

        protected void setCreatedMessage()
        {
            Response.Cookies["message"]["value"] = "created";
        }

        protected void setRelationAddedMessage()
        {
             Response.Cookies["message"]["value"] = "relation_added";
        }

        protected void setRelationRemovedMessage()
        {
            Response.Cookies["message"]["value"] = "relation_removed";
        }
    }
}