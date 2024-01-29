using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebCanciones
{
    public partial class Default : System.Web.UI.Page
    {
        //Variables globales
        GestorBD.GestorBD GestorBD;
        DataSet dsGeneral = new DataSet();
        string cadSql;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Se conecta a la base de datos si es la primera vez que se ejecuta
            if (!IsPostBack)
            {
                GestorBD = new GestorBD.GestorBD("SQLNCLI11", "localhost", "sa", "sqladmin", "ProyectoCanciones");
                Session["GestorBD"] = GestorBD;

            }
        }

        //Verifica que el usuario exista
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            cadSql = $"select * from Clientes where rfc='{Login1.UserName}' and contraseña='{Login1.Password}'";
            GestorBD = (GestorBD.GestorBD)Session["GestorBD"];
            GestorBD.consBD(cadSql, dsGeneral, "Temp");
            if(dsGeneral.Tables["Temp"].Rows.Count != 0)
            {
                //Si existe el usuario se manda a la pagina de inicio
                Session["rfc"] = Login1.UserName;
                Server.Transfer("PáginaInicio.aspx");
            }
            else
            {
               
            }
        }
    }
}