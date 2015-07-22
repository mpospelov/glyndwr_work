using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class RemovePlayer : App_Code.MessagePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            CrusadersService.CrusadersEntities db = Global.CrusadersEntitiesDB();
            string id = Request.QueryString["id"];
            string player_id = Request.QueryString["player_id"];
            if (!string.IsNullOrEmpty(id) && !string.IsNullOrEmpty(player_id))
            {
                CrusadersService.Game game = db.Games1.Where(x => x.id == int.Parse(id)).First();
                CrusadersService.Player player = db.Players.Where(x => x.id == int.Parse(player_id)).First();
                game.Players.Remove(player);
                db.SaveChanges();
                setRelationRemovedMessage();
            }
            Response.Redirect(string.Format("Edit.aspx?id={0}", id));
        }
    }
}