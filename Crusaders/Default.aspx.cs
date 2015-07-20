using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GamesRepeater.DataSource = Global.CrusadersEntitiesDB.Games1.Take(3).ToList();
            GamesRepeater.DataBind();   

        }

    }
}