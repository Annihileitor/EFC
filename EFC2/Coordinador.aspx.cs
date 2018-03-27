using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFC2
{
    public partial class Coordinador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkBuscar_Click(object sender, EventArgs e)
        {
            pnlBuscar.Visible = true;
            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (DBVentaEntities dbc = new DBVentaEntities())
            {
                string codBuscar = txtCodigo.Text;
                var queryValidar = (from p in dbc.Producto
                                    where p.cod_producto == codBuscar
                                    select new { }).Count();
                if (queryValidar == 0)
                {
                    pnlDet.Visible = false;
                    lblMensaje.Text = "Codigo ingresado no existe en el sistema";
                }
                else
                {
                    pnlDet.Visible = true;
                    lblMensaje.Text = "";
                    Producto p = dbc.Producto.SingleOrDefault(aux => aux.cod_producto == codBuscar);

                    lblCod.Text = p.cod_producto;
                    lblNom.Text = p.nombre;
                    lblStock.Text = p.stock.ToString();
                    lblPrecio.Text = p.precio.ToString();
                    lblDet.Text = p.detalle;
                    lblCat.Text = p.Categoria.tipoCategoria;
                }
                  

            }
            
        }
    }
}