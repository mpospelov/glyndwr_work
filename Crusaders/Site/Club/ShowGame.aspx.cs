using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Site.Club
{
    public partial class ShowGame : System.Web.UI.Page
    {
        public static CrusadersService.Game game;
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    db = Global.CrusadersEntitiesDB();

                    game = db.Games1.Where(x => x.id == int.Parse(id)).First();

                }
            }
            else
            {
                Response.Redirect("Games.aspx");
            }

            PlayersRepeater.DataSource = game.Players.ToList();
            PlayersRepeater.DataBind();
        }
    }
}