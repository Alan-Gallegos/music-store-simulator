<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistóricoCompras.aspx.cs" Inherits="WebCanciones.HistóricoCompras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 485px;
        }
        .auto-style2 {
            position: absolute;
            top: 81px;
            left: 156px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 80px;
            left: 244px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 147px;
            left: 373px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 147px;
            left: 247px;
            z-index: 1;
        }
        .auto-style6 {
            width: 504px;
            height: 115px;
            position: absolute;
            top: 208px;
            left: 219px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 405px;
            left: 40px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 596px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Tus compras "></asp:Label>
            <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style3"></asp:Label>
            <asp:DropDownList ID="ddlFecha" runat="server" AutoPostBack="True" CssClass="auto-style4" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>1 mes</asp:ListItem>
                <asp:ListItem>2 meses</asp:ListItem>
                <asp:ListItem>6 meses</asp:ListItem>
                <asp:ListItem>1 año </asp:ListItem>
                <asp:ListItem>Todas</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Desde hace"></asp:Label>
            <asp:GridView ID="grdCompras" runat="server" CssClass="auto-style6">
            </asp:GridView>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style7" NavigateUrl="~/PáginaInicio.aspx">Regresar al inicio</asp:HyperLink>
        </div>
    </form>
</body>
</html>
