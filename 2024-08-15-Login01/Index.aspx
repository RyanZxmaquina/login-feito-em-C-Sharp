<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_2024_08_15_Login01.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        #lblTituloPágina{
            color:blue;
            font-size: 32pX;
            display: block;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="lblTituloPágina" runat="server" Text="PÁGINA PRINCIPAL ( INDEX )"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="lblUsuario" runat="server" style="color: #660033; font-size: x-large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblCidade" runat="server" style="color: #660033; font-size: x-large"></asp:Label>
            <br />
            <br />
            <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
