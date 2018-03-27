using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFC2
{
    public partial class IngresarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               cargarDdl(); 
            }

            

        }

        private void cargarDdl()
        {
            using (DBVentaEntities dbc = new DBVentaEntities())
            {
                var jCat = from cat in dbc.Categoria
                           select new
                           {
                               id = cat.id,
                               datos = cat.tipoCategoria
                           };
                ddlCat.DataSource = jCat;
                ddlCat.DataTextField = "datos";
                ddlCat.DataValueField = "id";
                ddlCat.DataBind();

            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            using (DBVentaEntities dbc = new DBVentaEntities())
            {

                Producto p = new Producto
                {
                    cod_producto = txtCodigo.Text,
                    nombre = txtNombre.Text,
                    stock = int.Parse(txtStock.Text),
                    detalle = txtDetalle.Text,
                    precio = int.Parse(txtPrecio.Text),
                    Categoria_id = int.Parse(ddlCat.SelectedValue.ToString())
                };

                dbc.AddToProducto(p);
                dbc.SaveChanges();

                lblMensaje.Text = "Producto Agregado";


            }


        }
    }
}