using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebCanciones;
using System.CodeDom;

namespace WebCanciones {
    public partial class BusquedaCompra : System.Web.UI.Page {
        //Variables del módulo
        GestorBD.GestorBD GestorBD;
        String cadSQL, busq, nombre, artista, precio, tot,idCanción;
        DataSet DsBusqueda = new DataSet(), DsInsert = new DataSet(), DsTot = new DataSet();
        private int indiceF;
        GridViewRow g;
        private const int OK = 1;

        protected void txtTot_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e) {
            grvCarr.Enabled = false; grvResult.Enabled = true; btnQuitar.Enabled = true;
        }

        protected void btnQuitar_Click(object sender, EventArgs e) {
            grvCarr.Enabled = true; grvResult.Enabled = false;
        }

        protected void btnTot_Click(object sender, EventArgs e) {
            GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
            cadSQL = $"select sum(precio) from Carrito";
            GestorBD.consBD(cadSQL, DsTot, "Totales");
            tot = DsTot.Tables["Totales"].Rows[0].ToString();
            txtTot.Text = tot.ToString();
            lblMensaje.Text = txtTot.Text;
        }

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack)
            {
                
            }
            GestorBD = (GestorBD.GestorBD)Session["GestorBD"];

        }

        
        protected void grvResult_SelectedIndexChanged(object sender, EventArgs e) {
        }
        //añade las canciones al carrito y muestra este
        protected void grvResult_RowDeleted(object sender, GridViewDeleteEventArgs e) {
            GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
            
            indiceF = e.RowIndex;          //obtenemos el indice de la fila seleccionada
            g = grvResult.Rows[indiceF];   //obtenemos los datos de la fila seleccionada
            idCanción = g.Cells[1].Text;
            nombre = g.Cells[2].Text;      //guardamos el dato de la celda
            artista = g.Cells[3].Text;
            precio = g.Cells[4].Text;
            cadSQL = $"insert into Carrito values ('{nombre}','{artista}',{precio})";

            
            if (GestorBD.altaBD(cadSQL) == OK)
            {
                lblMensaje.Text = "Añadido al carrito";
                cadSQL = "select * from Carrito";
                GestorBD.consBD(cadSQL, DsInsert, "Carrito");
                grvCarr.DataSource = DsInsert.Tables["Carrito"];
                grvCarr.DataBind();
            }

        }
        //elimina las canciones del carrito y muestra este
        protected void grvCarr_RowDeleted(object sender, GridViewDeleteEventArgs e) {
            GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
            indiceF = e.RowIndex;
            g = grvCarr.Rows[indiceF];
            nombre = g.Cells[1].Text;

            cadSQL = $"delete from Carrito where nombre = '{nombre}'";

            if(GestorBD.bajaBD(cadSQL) == OK)
            {
                lblMensaje.Text = "Quitado del carrito";
                cadSQL = "select * from Carrito";
                GestorBD.consBD(cadSQL, DsInsert, "Carrito");
                grvCarr.DataSource = DsInsert.Tables["Carrito"];
                grvCarr.DataBind();
            }


        }
        protected void btnBuscar_Click(object sender, EventArgs e) {
            GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
            busq = ddlOp.SelectedValue;

            if (busq.Equals("Canción"))
            {
                cadSQL = $"Select * from Canciones where Nombre = '{txtBusq.Text}'";
                GestorBD.consBD(cadSQL, DsBusqueda, "Canciones");
                grvResult.DataSource = DsBusqueda.Tables["Canciones"];
                grvResult.DataBind();
            }
            if (busq.Equals("Artista"))
            {
                cadSQL = $"Select * from Canciones where Artista = '{txtBusq.Text}'";
                GestorBD.consBD(cadSQL, DsBusqueda, "Canciones");
                grvResult.DataSource = DsBusqueda.Tables["Canciones"];
                grvResult.DataBind();
            }
            /*
            GestorBD.consBD(cadSQL, DsBusqueda, "Canciones");
            grvResult.DataSource = DsBusqueda.Tables["Canciones"];
            grvResult.DataBind();
            */
        }
    }
}