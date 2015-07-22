using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Site.Results
{
    public partial class ShowAllResults : System.Web.UI.Page
    {

        protected void GamesRepeater_Load(object sender, EventArgs e)
        {
            ResultsRepeater.DataSource = Global.CrusadersEntitiesDB().GameResults.ToList();
            ResultsRepeater.DataBind();     
 
        }
    }
}