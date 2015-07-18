using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Tickets
{
    public partial class CreateTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            Crusaders.Ticket tic = new Crusaders.Ticket();
            tic.Type = TxtType.Text;
            tic.Price = TxtPrice.Text;
            tic.Description = TxtDesc.Text;

            CrusadersEntities db = new CrusadersEntities();
            db.Tickets.Add(tic);
            db.SaveChanges();

        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }
    }
}