using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFC2
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sesion = int.Parse(Session["sesion"].ToString());
            if (sesion != 1)
            {
                Response.Redirect("Index.aspx");
            }
          

          

        }

        protected void lnkIngresarProducto_Click(object sender, EventArgs e)
        {
            Response.Redirect("IngresarProducto.aspx");
        }

        protected void lnkStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("ControlStock.aspx");
        }
    }
}