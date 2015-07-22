using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Players
{
    public partial class RemoveGame : App_Code.MessagePage
    {
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
            string id = Request.QueryString["id"];
            string game_id = Request.QueryString["game_id"];
            if(!string.IsNullOrEmpty(id) && !string.IsNullOrEmpty(game_id)){
                CrusadersService.Player player = db.Players.Where( x => x.id == int.Parse(id)).First();
                CrusadersService.Game game = db.Games1.Where(x => x.id == int.Parse(game_id)).First();
                player.Games.Add(game);
                db.SaveChanges();
            }
            setRelationAddedMessage();
            Response.Redirect(string.Format("Edit.aspx?id={0}", id));
        }
    }
}