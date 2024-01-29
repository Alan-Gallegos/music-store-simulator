using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebCanciones {
  public partial class HistóricoCompras : System.Web.UI.Page {
    GestorBD.GestorBD GestorBD;
    DataSet dsCompras = new DataSet();
    string cadSql, rfc;
    Comunes cm = new Comunes();

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e) {

      GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
      rfc = Session["rfc"].ToString();
      
      if(ddlFecha.Text == "1 mes") {
        cadSql = $"select * from Compras where rfc='{rfc}' and fecha >= DATEADD(month, -1, GETDATE())";
        GestorBD.consBD(cadSql, dsCompras, "Compras");
        grdCompras.DataSource = dsCompras.Tables["Compras"];
        grdCompras.DataBind();
      }
      else if (ddlFecha.Text == "2 meses") {
        cadSql = $"select * from Compras where rfc='{rfc}' and fecha >= DATEADD( month, -2, GETDATE())";
        GestorBD.consBD(cadSql, dsCompras, "Compras");
        grdCompras.DataSource = dsCompras.Tables["Compras"];
        grdCompras.DataBind();
      }
      else if (ddlFecha.Text== "6 meses") {
        cadSql = $"select * from Compras where rfc='{rfc}' and fecha >= DATEADD( month, -6, GETDATE())";
        GestorBD.consBD(cadSql, dsCompras, "Compras");
        grdCompras.DataSource = dsCompras.Tables["Compras"];
        grdCompras.DataBind();
      }
      else if (ddlFecha.Text=="1 año") {
        cadSql = $"select * from Compras where rfc='{rfc}' and fecha >= DATEADD( year, -1, GETDATE())";
        GestorBD.consBD(cadSql, dsCompras, "Compras");
        grdCompras.DataSource = dsCompras.Tables["Compras"];
        grdCompras.DataBind();
      }
      else {
        cadSql = $"select * from Compras where rfc='{rfc}'";
        GestorBD.consBD(cadSql, dsCompras, "Compras");
        grdCompras.DataSource = dsCompras.Tables["Compras"];
        grdCompras.DataBind();
      }
    }

    protected void Page_Load(object sender, EventArgs e) {
      if (!IsPostBack) {
        GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
        rfc = Session["rfc"].ToString();
        lblUsuario.Text = rfc;
      }


    }
  }
}