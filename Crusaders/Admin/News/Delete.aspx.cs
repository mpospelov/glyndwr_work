using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.News
{
    public partial class Delete : System.Web.UI.Page
    {
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id) && !IsPostBack)
            {
                CrusadersService.NewsEntity news = db.NewsEntities.Where(x => x.Id == int.Parse(id)).Single();
                db.DeleteObject(news);
                db.SaveChanges();
            }
            Response.Redirect("Show.aspx");
        }
    }
}
    