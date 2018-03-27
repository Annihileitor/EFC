using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFC2
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            using (DBVentaEntities dbc = new DBVentaEntities())
            {
                //toma los datos de inicio de sesión
                string usuario = txtUser.Text;
                string pass = txtPass.Text;
                //query para comprobar si usuario existe
                var queryValidar = (from u in dbc.Usuario
                                    where u.nombreusuario == usuario
                                    select new { }).Count();



                if (queryValidar != 0)
                {

                    //si existe busca al usuario por el nombre ingresado
                    Usuario u = dbc.Usuario.SingleOrDefault(aux => aux.nombreusuario == usuario);
                    if (u.password != pass)
                    {
                        //si no coincide pass mensaje
                        lblMensaje.Text = "Usuario o Contraseña incorrecta";

                    }
                    else
                    {
                        if (u.Rol_id == 1)
                        {
                            //si es admin redirecciona
                            Session["sesion"] = u.Rol_id;
                            Response.Redirect("Admin.aspx");
                        }
                        else if (u.Rol_id == 4)
                        {
                            //si es vendedor redirecciona
                            Session["sesion"] = u.Rol_id;
                            Response.Redirect("Coordinador.aspx");
                        }


                    }


                }
                else
                {
                    //si no existe mensaje
                    lblMensaje.Text = "Usuario o Contraseña incorrecta";
                }



            }
        }
    }
}