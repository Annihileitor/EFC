using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFC2
{
    public partial class ControlStock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (DBVentaEntities dbc = new DBVentaEntities())
            {
                int cantBuscar = int.Parse(txtCantidad.Text);


                PanelStock.Visible = true;
                grdStock.DataSource = from prod in dbc.Producto
                                      join cat in dbc.Categoria
                                      on prod.Categoria_id equals cat.id into Temp
                                      from prodcat in Temp.DefaultIfEmpty()
                                      where prod.stock <= cantBuscar
                                      select new
                                      {
                                          Codigo = prod.cod_producto,
                                          Nombre = prod.nombre,
                                          Precio = prod.precio,
                                          Detalle = prod.detalle,
                                          Categoria = prodcat.tipoCategoria
                                          

                                      };

                grdStock.DataBind();
     
            

            }
        }
    }
}