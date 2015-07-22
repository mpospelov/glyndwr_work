using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class EditResult : System.Web.UI.Page
    {
        static CrusadersService.GameResult res;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    res = Global.CrusadersEntitiesDB().GameResults.Where(x => x.id == int.Parse(id)).Single();

                    TxtData.Text = res.Data;
                    TxtOpnt.Text = res.Opponent;
                    TxtVenue.Text = res.Venue;
                    TxtComp.Text = res.Comp;
                    TxtPnt.Text = res.Points;
                    ChkWin.Checked = res.Result;
                }
            }
            else
            {
                Response.Redirect("Show.aspx");
            }
        }


        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            res.Data = TxtData.Text;
            res.Opponent = TxtOpnt.Text;
            res.Venue = TxtVenue.Text;
            res.Comp = TxtVenue.Text;
            res.Points = TxtPnt.Text;
            res.Result = ChkWin.Checked;

            Global.CrusadersEntitiesDB().UpdateObject(res);
            Global.CrusadersEntitiesDB().SaveChanges();
            Response.Redirect("Show.aspx");
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }
    }
}