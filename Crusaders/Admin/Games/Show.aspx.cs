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
      
        protected void GamesRepeater_Load(object sender, EventArgs e)
        {
            GamesRepeater.DataSource = Global.CrusadersEntitiesDB().Games1.ToList();
            GamesRepeater.DataBind();    
        }
    }
}