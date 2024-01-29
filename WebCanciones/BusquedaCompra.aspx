<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusquedaCompra.aspx.cs" Inherits="WebCanciones.BusquedaCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 690px;
        }
        .auto-style1 {
            position: absolute;
            top: 409px;
            left: 1236px;
            z-index: 1;
        }
        .auto-style2 {
            width: 103px;
            height: 98px;
            position: relative;
            top: 117px;
            left: 560px;
        }
        .auto-style3 {
            width: 899px;
            height: 178px;
            position: relative;
            top: 463px;
            left: 177px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #000000; background-image: none; background-repeat: inherit; font-family: 'Lucida Sans'; color: #FFFFFF;">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 41px; top: 65px; position: absolute; margin-bottom: 0px; height: 22px; font-weight: 700;" Text="Buscar por:"></asp:Label>
        <asp:GridView ID="grvResult" runat="server" EmptyDataText="Sin registro" OnSelectedIndexChanged="grvResult_SelectedIndexChanged" style="z-index: 1; left: 176px; top: 179px; position: absolute; width: 232px; margin-top: 0px" Enabled="False" OnRowDeleting="grvResult_RowDeleted">
            <Columns>
                <asp:CommandField DeleteText="Agregar" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:TextBox ID="txtBusq" runat="server" style="z-index: 1; left: 327px; top: 63px; position: absolute; width: 252px"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" style="z-index: 1; left: 609px; top: 61px; position: absolute" Text="Buscar" ViewStateMode="Enabled" />
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF3300" NavigateUrl="~/PáginaInicio.aspx" style="z-index: 1; left: 33px; top: 424px; position: absolute; font-weight: 700">Regresar</asp:HyperLink>
        <asp:DropDownList ID="ddlOp" runat="server" style="z-index: 1; left: 154px; top: 66px; position: absolute; height: 35px; width: 130px">
            <asp:ListItem>Canción</asp:ListItem>
            <asp:ListItem>Artista</asp:ListItem>
        </asp:DropDownList>
        <asp:GridView ID="grvCarr" runat="server" style="z-index: 1; left: 877px; top: 181px; position: absolute; height: 152px; width: 232px" Enabled="False" OnRowDeleting="grvCarr_RowDeleted">
            <Columns>
                <asp:CommandField DeleteText="Quitar" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btnQuitar" runat="server" Enabled="False" OnClick="btnQuitar_Click" style="z-index: 1; left: 966px; top: 138px; position: absolute" Text="Quitar" />
        <asp:Label ID="lblMensaje" runat="server" style="font-weight: 700; z-index: 1; left: 712px; top: 65px; position: absolute" Text="Procesando..."></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 882px; top: 141px; position: absolute; font-weight: 700" Text="Carrito:"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="font-weight: 700; z-index: 1; left: 179px; top: 138px; position: absolute" Text="Resultado de búsqueda:"></asp:Label>
        <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" style="z-index: 1; left: 460px; top: 357px; position: absolute" Text="Agregar" />
        <asp:Button ID="btnTot" runat="server" OnClick="btnTot_Click" style="z-index: 1; left: 1066px; top: 139px; position: absolute; width: 126px; margin-bottom: 0px" Text="Calcular total" />
        <asp:TextBox ID="txtTot" runat="server" Enabled="False" ReadOnly="True" style="z-index: 1; left: 1227px; top: 142px; position: absolute" OnTextChanged="txtTot_TextChanged"></asp:TextBox>
        <asp:HyperLink ID="Pagos" runat="server" CssClass="auto-style1" NavigateUrl="~/PáginaPagos.aspx">Pagos</asp:HyperLink>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 1233px; top: 105px; position: absolute; font-weight: 700; margin-bottom: 0px" Text="Total a pagar:"></asp:Label>
        <asp:Label ID="Label5" runat="server" EnableTheming="False" style="position: absolute; top: 359px; left: 75px; height: 22px; width: 376px; z-index: 1" Text="Presiona el botón para poder agregar canciones"></asp:Label>
        <img alt="" class="auto-style2" dir="auto" hidden="hidden" role="img" src="file:///D:/Alan_User/Escritorio/CursosOnline/DAI/WebCanciones/WebCanciones/WebCanciones/im.gif" visible="False" /><img alt="" class="auto-style3" hidden="hidden" property="og:image" role="img" src="file:///D:/Alan_User/Escritorio/CursosOnline/DAI/WebCanciones/WebCanciones/WebCanciones/music.gif" /></form>
</body>
</html>
