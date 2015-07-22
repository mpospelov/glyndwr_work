using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.News
{
    public partial class Show : App_Code.MessagePage
    {
        protected void NewsRepeater_Load(object sender, EventArgs e)
        {
            NewsRepeater.DataSource = Global.CrusadersEntitiesDB().NewsEntities.ToList();
            NewsRepeater.DataBind();
            handleMessage();
        }
    }
}