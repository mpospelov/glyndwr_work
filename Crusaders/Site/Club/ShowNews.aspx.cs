using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Site.Club
{
    public partial class ShowNews : System.Web.UI.Page
    {
        public static CrusadersService.NewsEntity one_news;
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["Id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    db = Global.CrusadersEntitiesDB();

                    one_news = db.NewsEntities.Where(x => x.Id == int.Parse(id)).First();

                }
            }
            else
            {
                Response.Redirect("News.aspx");
            }

        }
    }
}