using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class GamesResults : App_Code.MessagePage
    {
        public CheckBox ChkWin;
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }

        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            CrusadersService.GameResult res = new CrusadersService.GameResult();

            res.Comp = TxtComp.Text;
            res.Data = TxtData.Text;
            res.Opponent = TxtOpnt.Text;
            res.Venue = TxtVenue.Text;
            res.Points = TxtPnt.Text;
            res.Result = ChkWin.Checked;


            db.AddToGameResults(res);
            db.SaveChanges();
            setCreatedMessage();
            Response.Redirect("Show.aspx");
        }
    }
}