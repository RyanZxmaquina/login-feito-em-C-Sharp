<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="NovoProjeto_2024_09_12.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página Inicial</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bem-vindo ao sistema!</h1>
            <p>Você foi autenticado com sucesso.</p>
            <br />
            <asp:Button ID="btnSair" runat="server" Text="Sair" OnClick="btnSair_Click" />
        </div>
    </form>
</body>
</html>
