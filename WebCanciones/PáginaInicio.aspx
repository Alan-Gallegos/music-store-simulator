<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PáginaInicio.aspx.cs" Inherits="WebCanciones.PáginaInicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 549px; background-color: #000000; width: 1084px; color: #FFFFFF; font-family: 'Comic Sans MS';">
            <asp:Label ID="LblBienvenida" runat="server" style="z-index: 1; left: 451px; top: 96px; position: absolute; height: 23px; width: 140px;"></asp:Label>
            <asp:GridView ID="GrdTop3" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="z-index: 1; left: 405px; top: 212px; position: absolute; height: 152px; width: 232px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 403px; top: 161px; position: absolute; margin-bottom: 0px; height: 22px;" Text="Top Canciones más vendidas"></asp:Label>
            <asp:HyperLink ID="HypHistorial" runat="server" style="z-index: 1; left: 864px; top: 29px; position: absolute" NavigateUrl="~/HistóricoCompras.aspx">Histórico de compras</asp:HyperLink>
            <asp:HyperLink ID="HypBusqueda" runat="server" style="z-index: 1; left: 674px; top: 30px; position: absolute" NavigateUrl="~/BusquedaCompra.aspx">Búsqueda/Compra </asp:HyperLink>
        </div>
        <asp:HyperLink ID="HypDefault" runat="server" NavigateUrl="~/Default.aspx" style="z-index: 1; left: 80px; top: 32px; position: absolute; right: 1298px;">Inicio</asp:HyperLink>
    </form>
</body>
</html>
