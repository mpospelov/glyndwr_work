using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class CreateGame : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlInputButton Submit1;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }

        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            var db = Global.CrusadersEntitiesDB();
            CrusadersService.Game gm = new CrusadersService.Game();

            gm.Data = TxtData.Text;
            gm.Opponent = TxtOpnt.Text;
            gm.Venue = TxtVenue.Text;
            gm.Comp = TxtComp.Text;

            if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("/Admin/Games/Data/")+ fn;
                try
                {
                    File1.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                    gm.Image = fn;
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                    //Note: Exception.Message returns a detailed message that describes the current exception. 
                    //For security reasons, we do not recommend that you return Exception.Message to end users in 
                    //production environments. It would be better to return a generic error message. 
                }

            }
            else
            {
                Response.Write("Please select a file to upload.");
            }

            db.AddToGames1(gm);
            db.SaveChanges();
        }
    }
}