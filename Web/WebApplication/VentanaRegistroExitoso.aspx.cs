﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class VentanaRegistroExitoso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}