using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Site.Club
{
    public partial class Games : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = Global.CrusadersEntitiesDB();

            GamesRepeater.DataSource = db.Games1.ToList();
            GamesRepeater.DataBind();
        }
    }
}