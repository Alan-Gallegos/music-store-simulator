using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCanciones {
  public partial class ConfirmaciónCompra : System.Web.UI.Page {
    GestorBD.GestorBD GestorBD;
    string cadSql, rfc;
    DataSet dsCompras = new DataSet();
    DataSet dsCarrito = new DataSet();
    GridViewRow g;
    int num;
    int i = 0;

    protected void Page_Load(object sender, EventArgs e) {
      if (!IsPostBack) {
        lblAgrado.Visible = true;
        lblGracias.Visible = true;
        lblUsuario.Visible = true;
        lblInicio.Visible = true;
        GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
        cadSql = "select * from carrito";
        GestorBD.consBD(cadSql, dsCarrito, "Carrito");
        grdCompras.DataSource = dsCarrito.Tables["Carrito"];
        grdCompras.DataBind();
        //------------------------
        
        GestorBD.consBD(cadSql, dsCompras, "prueba");
        num = dsCompras.Tables["prueba"].Rows.Count;
        
        

        for (i = 1; 1 < num; i++) {
          g = grdCompras.Rows[i];

          cadSql = $"delete from carrito where nombre='{g.Cells[2]}'";
          if (GestorBD.bajaBD(cadSql) == 1) {
            lblAgrado.Visible = true;
            lblGracias.Visible = true;
            lblUsuario.Visible = true;
            lblInicio.Visible = true;
          }
          else {
            lblUsuario.Visible = true;
            lblUsuario.Text = i.ToString();
            break;
          }
        }

      }

      
    }

    protected void Button2_Click(object sender, EventArgs e) {
      
     
    }

    protected void Button1_Click(object sender, EventArgs e) {
      Server.Transfer("BusquedaCompra.aspx");
    }
  }
}