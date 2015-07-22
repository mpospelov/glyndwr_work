using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Players
{
    public partial class ShowAllPlayers : App_Code.MessagePage
    {
        protected static CrusadersService.CrusadersEntities db;

        protected void PlayersRepeater_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
            PlayersRepeater.DataSource = db.Players.ToList();
            PlayersRepeater.DataBind();
            handleMessage();
        }
    }
}