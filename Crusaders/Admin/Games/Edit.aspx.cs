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
            ResultRepeater.DataSource = Global.CrusadersEntitiesDB().GameResults.ToList();
            ResultRepeater.DataBind();
            PlayerRepeater.DataSource = Global.CrusadersEntitiesDB().Players.ToList();
            PlayerRepeater.DataBind();

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
                    ResSlc.Value = gm.Result_id.ToString();
                    PlrSlc.Value = gm.Player_id.ToString();

                }
            }
            else
            {
                Response.Redirect("Show.aspx");
            }
        }


        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            var db = Global.CrusadersEntitiesDB();
            gm.Data = TxtData.Text;
            gm.Opponent = TxtOpnt.Text;
            gm.Venue = TxtVenue.Text;
            gm.Comp = TxtVenue.Text;
            gm.Result_id = Int32.Parse(ResSlc.Value);
            gm.Player_id = Int32.Parse(PlrSlc.Value);



            db.UpdateObject(gm);
            db.SaveChanges();
            Response.Redirect("Show.aspx");
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }
    }
}