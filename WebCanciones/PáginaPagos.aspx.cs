using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebCanciones {
  public partial class PáginaPagos : System.Web.UI.Page {
    GestorBD.GestorBD GestorBD;
    string cadSql;
    DataSet dsCarrito = new DataSet();

    protected void Page_Load(object sender, EventArgs e) {
      if (!IsPostBack) {
        GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
        cadSql = "select * from carrito";
        GestorBD.consBD(cadSql, dsCarrito, "Carrito");
        grdCarrito.DataSource = dsCarrito.Tables["Carrito"];
        grdCarrito.DataBind();

      }
    }

    protected void btnPagar_Click(object sender, EventArgs e) {
      Server.Transfer("ConfirmaciónCompra.aspx");
    }
  }
}