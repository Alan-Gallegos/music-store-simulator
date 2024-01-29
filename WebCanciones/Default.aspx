<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebCanciones.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 547px; width: 1069px; background-color: #000000; color: #FFFFFF; font-family: 'Century Gothic';">
            <asp:Login ID="Login1" runat="server" BackColor="Black" BorderColor="Black" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="White" OnAuthenticate="Login1_Authenticate" style="z-index: 1; left: 418px; top: 179px; position: absolute; height: 175px; width: 248px" TextLayout="TextOnTop">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#000099" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
            <asp:Label ID="Label1" runat="server" Font-Names="Sitka Text" Font-Size="Large" style="z-index: 1; left: 370px; top: 102px; position: absolute; height: 48px; width: 374px" Text="Bienvenido a tu tienda de música"></asp:Label>
        </div>
    </form>
</body>
</html>
