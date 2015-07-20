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
            CrusadersEntities db = new CrusadersEntities();
            GamesRepeater.DataSource = db.Games1.Take(3).ToList();
            GamesRepeater.DataBind();
        }

    }
}