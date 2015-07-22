using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class Show : System.Web.UI.Page
    {
        protected static CrusadersService.CrusadersEntities db;

        protected void GamesRepeater_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
            GamesRepeater.DataSource = Global.CrusadersEntitiesDB().Games1.ToList();
            GamesRepeater.DataBind();    
        }
    }
}