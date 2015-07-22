using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Tickets
{
    public partial class Delete : App_Code.MessagePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id) && !IsPostBack) {
                var db = Global.CrusadersEntitiesDB();

                CrusadersService.Ticket ticket = db.Tickets.Where(x => x.id == int.Parse(id)).Single();
                db.DeleteObject(ticket);
                db.SaveChanges();
                setDeletedMessage();
            }
            Response.Redirect("Show.aspx");
        }
    }
}