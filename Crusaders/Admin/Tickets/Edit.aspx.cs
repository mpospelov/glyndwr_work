using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Tickets
{
    public partial class Edit : App_Code.MessagePage
    {
        protected static CrusadersService.Ticket ticket;
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    db = Global.CrusadersEntitiesDB();

                    ticket = db.Tickets.Where(x => x.id == int.Parse(id)).First();

                    TypeSlc.Value = ticket.Type;
                    TxtPrice.Text = ticket.Price;
                    TxtDesc.Text = ticket.Description;
                    AgeSlc.Value = ticket.AgeOrType;
                }
            }
            else
            {
                Response.Redirect("Show.aspx");
            }
        }


        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            ticket.Type = TypeSlc.Value;
            ticket.Price = TxtPrice.Text;
            ticket.Description = TxtDesc.Text;
            ticket.AgeOrType = AgeSlc.Value;
            db.UpdateObject(ticket);
            db.SaveChanges();
            setUpdatedMessage();
            Response.Redirect("Show.aspx");
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show.aspx");
        }
    }
}