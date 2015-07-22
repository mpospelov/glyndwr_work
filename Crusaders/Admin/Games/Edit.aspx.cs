using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class EditGames : System.Web.UI.Page
    {
        static CrusadersService.Game gm;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    gm = Global.CrusadersEntitiesDB().Games1.Where(x => x.id == int.Parse(id)).Single();

                    TxtData.Text = gm.Data;
                    TxtOpnt.Text = gm.Opponent;
                    TxtVenue.Text = gm.Venue;
                    TxtComp.Text = gm.Comp;

                }
            }
            else
            {
                Response.Redirect("Show.aspx");
            }
        }


        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            gm.Data = TxtData.Text;
            gm.Opponent = TxtOpnt.Text;
            gm.Venue = TxtVenue.Text;
            gm.Comp = TxtVenue.Text;

            Global.CrusadersEntitiesDB().UpdateObject(gm);
            Response.Redirect("Show.aspx");
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }
    }
}