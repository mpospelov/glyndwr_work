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
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string game_id = Request.QueryString["game_id"];
            if(!string.IsNullOrEmpty(id) && !string.IsNullOrEmpty(game_id)){
                CrusadersService.Player player = Global.CrusadersEntitiesDB().Players.Where( x => x.id == int.Parse(id)).First();
                CrusadersService.Game game = Global.CrusadersEntitiesDB().Games1.Where(x => x.id == int.Parse(game_id)).First();
                player.Games.Add(game);
                Global.CrusadersEntitiesDB().SaveChanges();
            }
            setRelationAddedMessage();
            Response.Redirect(string.Format("Edit.aspx?id={0}", id));
        }
    }
}