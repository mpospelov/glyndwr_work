using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Players
{
    public partial class Delete : App_Code.MessagePage
    {
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id) && !IsPostBack)
            {

                CrusadersService.Player pl = db.Players.Where(x => x.id == int.Parse(id)).Single();
                db.DeleteObject(pl);
                db.SaveChanges();
                setDeletedMessage();
            }
            Response.Redirect("Show.aspx");
        }
    }
}