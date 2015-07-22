using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Players
{
    public partial class Edit : App_Code.MessagePage
    {
        public static CrusadersService.Player pl;
        static List<CrusadersService.Game> games;

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    pl = Global.CrusadersEntitiesDB().Players.Where(x => x.id == int.Parse(id)).Single();
                    games = pl.Games.ToList();
                    GamesRepeater.DataSource = Global.CrusadersEntitiesDB().Games1.ToList();

                    TxtFName.Text = pl.FamilyName;
                    TxtName.Text = pl.Name;
                    TxtNmb.Text = pl.Number;
                    TxtPst.Text = pl.Position;
                }
            }
            else
            {
                Response.Redirect("Show.aspx");
            }
        }


        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            pl.FamilyName = TxtFName.Text;
            pl.Name = TxtName.Text;
            pl.Number = TxtNmb.Text;
            pl.Position = TxtPst.Text;

            Global.CrusadersEntitiesDB().UpdateObject(pl);
            setUpdatedMessage();
            Response.Redirect("Show.aspx");
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }

        public bool isGameAdded(object game_id)
        {
            int id = int.Parse(game_id.ToString());
            return(games.Find(x => x.id == id) != null);
        }
    }
}