﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crusaders.Admin.Games
{
    public partial class Show : System.Web.UI.Page
    {
      
        protected void GamesRepeater_Load(object sender, EventArgs e)
        {
            CrusadersEntities db = new CrusadersEntities();
            GamesRepeater.DataSource = db.Games1.ToList();
            GamesRepeater.DataBind();  
        }
    }
}