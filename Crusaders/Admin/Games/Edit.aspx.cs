using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class EditGames : App_Code.MessagePage
    {
        static public CrusadersService.Game gm;
        static List<CrusadersService.Player> players;
        static public List<CrusadersService.Player> allPlayers;
        protected static CrusadersService.CrusadersEntities db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = Global.CrusadersEntitiesDB();
            ResultRepeater.DataSource = Global.CrusadersEntitiesDB().GameResults.ToList();
            ResultRepeater.DataBind();
         

            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    gm = db.Games1.Where(x => x.id == int.Parse(id)).Single();
                    allPlayers = db.Players.ToList();
                    players = gm.Players.ToList();
                    TxtData.Text = gm.Data;
                    TxtOpnt.Text = gm.Opponent;
                    TxtVenue.Text = gm.Venue;
                    TxtComp.Text = gm.Comp;
                    ResSlc.Value = gm.Result_id.ToString();
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
            gm.Result_id = Int32.Parse(ResSlc.Value);
            db.UpdateObject(gm);
            db.SaveChanges();
            setUpdatedMessage();
            Response.Redirect("Show.aspx");
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show.apsx");
        }

        public bool isPlayerAdded(int id) 
        {
            return(players.Find(x => x.id == id) != null);
        }        
    }
}