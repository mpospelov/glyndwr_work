using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class ShowAllResults : App_Code.MessagePage
    {
        protected static CrusadersService.CrusadersEntities db;

        protected void ResultsRepeater_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
            ResultsRepeater.DataSource = db.GameResults.ToList();
            ResultsRepeater.DataBind();
            handleMessage();
        }

    }
}