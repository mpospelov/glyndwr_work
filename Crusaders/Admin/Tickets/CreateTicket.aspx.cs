using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Tickets
{
    public partial class CreateTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            Crusaders.Ticket tic = new Crusaders.Ticket();
            tic.Type = TypeSlc.Value;
            tic.Price = TxtPrice.Text;
            tic.Description = TxtDesc.Text;
            tic.AgeOrType = AgeSlc.Value; 

            CrusadersEntities db = new CrusadersEntities();
            db.Tickets.Add(tic);
            db.SaveChanges();

        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }
    }
}