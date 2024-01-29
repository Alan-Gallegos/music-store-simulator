<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmaciónCompra.aspx.cs" Inherits="WebCanciones.ConfirmaciónCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 468px;
        }
        .auto-style2 {
            position: absolute;
            top: 73px;
            left: 47px;
            z-index: 1;
        }
        .auto-style3 {
            width: 392px;
            height: 133px;
            position: absolute;
            top: 135px;
            left: 50px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 45px;
            left: 404px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 87px;
            left: 316px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 84px;
            left: 632px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 366px;
            left: 447px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 422px;
            left: 32px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 416px;
            left: 819px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 302px;
            left: 408px;
            z-index: 1;
            width: 232px;
            height: 24px;
        }
    </style>
</head>
<body style="height: 487px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            <asp:Label ID="lblInicio" runat="server" CssClass="auto-style2" Text="Artículos comprados:" Visible="False"></asp:Label>
            <asp:GridView ID="grdCompras" runat="server" CssClass="auto-style3">
            </asp:GridView>
            <asp:Label ID="lblGracias" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Size="X-Large" Text="¡Gracias por su compra!" Visible="False"></asp:Label>
            <asp:Label ID="lblAgrado" runat="server" CssClass="auto-style5" Text="Espero que esta compra haya sido de su agrado " Visible="False"></asp:Label>
            <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style6" Visible="False"></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Seguir comprando" />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style8" NavigateUrl="~/PáginaInicio.aspx">Regresar al inicio</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style9" NavigateUrl="~/Default.aspx">Salir y cerrar sesión</asp:HyperLink>
            <asp:Label ID="lblError" runat="server" CssClass="auto-style10" Text="Algo ha salido mal. Vuelve a intentarlo" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
