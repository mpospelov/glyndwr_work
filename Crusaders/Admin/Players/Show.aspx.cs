using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Players
{
    public partial class ShowAllPlayers : System.Web.UI.Page
    {
        protected void PlayersRepeater_Load(object sender, EventArgs e)
        {
            PlayersRepeater.DataSource = Global.CrusadersEntitiesDB.Players.ToList();
            PlayersRepeater.DataBind();   
        }
    }
}