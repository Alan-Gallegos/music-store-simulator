using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebCanciones
{
    public partial class PáginaInicio : System.Web.UI.Page
    {
        //Variables del módulo
        GestorBD.GestorBD GestorBD;
        DataSet dsCanciones=new DataSet();
        DataRow fila;
        string cadSql;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Recupera objetos de session
                GestorBD = (GestorBD.GestorBD)Session["GestorBD"];

                //Mensaje de bienvenida
                LblBienvenida.Text = "Bienvenido: " + Session["rfc"].ToString();

                //Intento de ordenar la base de datos


                cadSql = "select top(3) Nombre,Compras from Canciones ORDER BY Compras DESC";
                GestorBD.consBD(cadSql, dsCanciones, "Top");
                GrdTop3.DataSource = dsCanciones.Tables["Top"];
                GrdTop3.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}