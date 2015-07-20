using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Players
{
    public partial class CreatePlayer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }

        protected void SbmBtn_Click(object sender, EventArgs e)
        {
            CrusadersService.Player pl = new CrusadersService.Player();

            pl.FamilyName = TxtFName.Text;
            pl.Name = TxtName.Text;
            pl.Number = TxtNmb.Text;
            pl.Position = TxtPst.Text;
            if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("/Admin/Players/Data/") + fn;
                try
                {
                    File1.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                    pl.Avatar = fn;
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

            Global.CrusadersEntitiesDB.AddToPlayers(pl);
            Global.CrusadersEntitiesDB.SaveChanges();
        }
    }
}