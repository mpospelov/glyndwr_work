﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class DeleteGames : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id) && !IsPostBack)
            {
                CrusadersService.Game game = Global.CrusadersEntitiesDB.Games1.Where(x => x.id == int.Parse(id)).Single();
                Global.CrusadersEntitiesDB.DeleteObject(game);
                Global.CrusadersEntitiesDB.SaveChanges();
            }
            Response.Redirect("Show.aspx");
        }
    }
}