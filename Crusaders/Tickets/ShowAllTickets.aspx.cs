using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Tickets
{
    public partial class ShowAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CrusadersEntities db = new CrusadersEntities();
            foreach (Ticket ticket in db.Tickets.ToList()) {
                TableRow row = new TableRow();
                TableCell typeCell = new TableCell(); 
                typeCell.Text = ticket.Type;
                TableCell priceCell = new TableCell(); 
                priceCell.Text = ticket.Price; 
                TableCell descCell = new TableCell(); 
                descCell.Text = ticket.Description;
                row.Cells.Add(typeCell);
                row.Cells.Add(priceCell);
                row.Cells.Add(descCell);
                TicketsTable.Rows.Add(row);
            }
            
        }
    }
}