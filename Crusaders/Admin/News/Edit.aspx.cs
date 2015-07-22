using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.News
{
    public partial class Edit : System.Web.UI.Page
    {
        static CrusadersService.NewsEntity news;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                if (!IsPostBack)
                {
                    news = Global.CrusadersEntitiesDB().NewsEntities.Where(x => x.Id == int.Parse(id)).Single();

                    TxtTlt.Text = news.Title;
                    TxtCnt.Text = news.Content;;
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

            news.Title = TxtTlt.Text;
            news.Content = TxtCnt.Text;

            db.UpdateObject(news);
            db.SaveChanges();
            Response.Redirect("Show.aspx");
        }

        protected void CnlBtn_Click(object sender, EventArgs e)
        {

        }
    }
}