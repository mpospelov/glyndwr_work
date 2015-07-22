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
                CrusadersService.Ticket ticket = Global.CrusadersEntitiesDB().Tickets.Where(x => x.id == int.Parse(id)).Single();
                Global.CrusadersEntitiesDB().DeleteObject(ticket);
                Global.CrusadersEntitiesDB().SaveChanges();
                setDeletedMessage();
            }
            Response.Redirect("Show.aspx");
        }
    }
}