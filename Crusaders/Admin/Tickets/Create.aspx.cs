﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Tickets
{
    public partial class CreateTicket : App_Code.MessagePage
    {
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
        }

        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            CrusadersService.Ticket tic = new CrusadersService.Ticket();
            tic.Type = TypeSlc.Value;
            tic.Price = TxtPrice.Text;
            tic.Description = TxtDesc.Text;
            tic.AgeOrType = AgeSlc.Value;

            db.AddToTickets(tic);
            db.SaveChanges();
            setCreatedMessage();
            Response.Redirect("Show.aspx");

        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show.aspx");
        }
    }
}