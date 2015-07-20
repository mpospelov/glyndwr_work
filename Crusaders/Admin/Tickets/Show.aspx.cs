using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Tickets
{
    public partial class ShowAll : System.Web.UI.Page
    {

        protected void TicketsRepeater_Load(object sender, EventArgs e)
        {
            TicketsRepeater.DataSource = Global.CrusadersEntitiesDB.Tickets.ToList();
            TicketsRepeater.DataBind();      
        }


    }
}