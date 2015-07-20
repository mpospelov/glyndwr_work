using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class GamesResults : System.Web.UI.Page
    {
        public CheckBox ChkWin;
        protected void Page_Load(object sender, EventArgs e)
        {

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


            Global.CrusadersEntitiesDB.AddToGameResults(res);
            Global.CrusadersEntitiesDB.SaveChanges();
            
        }
    }
}