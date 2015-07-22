using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Tickets
{
    public partial class ShowAll : Crusaders.App_Code.MessagePage
    {
        protected void TicketsRepeater_Load(object sender, EventArgs e)
        {
            var db = Global.CrusadersEntitiesDB();

            TicketsRepeater.DataSource = db.Tickets.ToList();
            TicketsRepeater.DataBind();
            handleMessage();
        }


    }
}