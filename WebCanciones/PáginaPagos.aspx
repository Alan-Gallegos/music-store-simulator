<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PáginaPagos.aspx.cs" Inherits="WebCanciones.PáginaPagos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 450px;
        }
        .auto-style2 {
            position: absolute;
            top: 51px;
            left: 73px;
            z-index: 1;
        }
        .auto-style3 {
            width: 516px;
            height: 127px;
            position: absolute;
            top: 137px;
            left: 74px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 340px;
            left: 529px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 423px;
            left: 60px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 482px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Artículos agregados al carrito:"></asp:Label>
            <asp:GridView ID="grdCarrito" runat="server" CssClass="auto-style3">
            </asp:GridView>
            <asp:Button ID="btnPagar" runat="server" CssClass="auto-style4" Text="Pagar" OnClick="btnPagar_Click" />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style5" NavigateUrl="~/BusquedaCompra.aspx">Regresar a Búsqueda/Compra</asp:HyperLink>
        </div>
    </form>
</body>
</html>
