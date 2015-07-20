using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Tickets
{
    public partial class Edit : System.Web.UI.Page
    {
        static CrusadersService.Ticket ticket;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    ticket = Global.CrusadersEntitiesDB.Tickets.Where(x => x.id == int.Parse(id)).Single();

                    TypeSlc.Value = ticket.Type;
                    TxtPrice.Text = ticket.Price;
                    TxtDesc.Text = ticket.Description;
                    AgeSlc.Value = ticket.AgeOrType;
                }
            }
            else
            {
                Response.Redirect("ShowAllTickets.aspx");
            }
        }


        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            ticket.Type = TypeSlc.Value;
            ticket.Price = TxtPrice.Text;
            ticket.Description = TxtDesc.Text;
            ticket.AgeOrType = AgeSlc.Value;
            Global.CrusadersEntitiesDB.UpdateObject(ticket);
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }
    }
}