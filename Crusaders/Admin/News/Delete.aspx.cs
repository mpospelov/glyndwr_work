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
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id) && !IsPostBack)
            {
                var db = Global.CrusadersEntitiesDB();

                CrusadersService.NewsEntity news = db.NewsEntities.Where(x => x.Id == int.Parse(id)).Single();
                db.DeleteObject(news);
                db.SaveChanges();
            }
            Response.Redirect("Show.aspx");
        }
    }
}
    