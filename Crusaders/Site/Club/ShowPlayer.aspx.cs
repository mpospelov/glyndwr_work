using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Site.Club
{
    public partial class ShowPlayer : System.Web.UI.Page
    {
        protected static CrusadersService.Player player;
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    db = Global.CrusadersEntitiesDB();

                    player = db.Players.Where(x => x.id == int.Parse(id)).First();

                }
            }
            else {
                Response.Redirect("Players.aspx");
            }

            GamesRepeater.DataSource = player.Games.ToList();
            GamesRepeater.DataBind();  
        }
    }
}