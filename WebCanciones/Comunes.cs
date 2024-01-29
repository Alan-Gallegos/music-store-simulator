using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;

namespace WebCanciones {
  public class Comunes {
    public void cargaDDL(DropDownList ddl, DataSet ds, String tabla, String col) {
      DataTable tabResul;

      ddl.Items.Clear();
      //La columna 'col' es la que tiene los datos que se agregarán al DDL.
      tabResul = ds.Tables[tabla];
      ddl.Items.Add(" ");
      foreach (DataRow fila in tabResul.Rows)
        ddl.Items.Add(fila[col].ToString());
    }
  }
}