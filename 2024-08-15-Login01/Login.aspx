<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_2024_08_15_Login01.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #Image1{
            display: block; /*Faz a imagem se comportar como um bloco */
            margin-left: auto; /* Centraliza horizontalmente */
            margin-right: auto;  /* Centraliza horizontalmente */
            border-radius: 15px; /* Altere o valor para ajusrtar o arredondamento */
            width: 200px;
        }        
        #Login1{            
            margin-left: auto; /* Centraliza horizontalmente */
            margin-right: auto;  /* Centraliza horizontalmente */          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/senai-logo.png" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UsuariosConnectionString %>" SelectCommand="SELECT * FROM [USUARIOS]"></asp:SqlDataSource>
            <br />
            <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login1_Authenticate">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
            <br />
            <br />
            Não podemos esquecer de: ....<br />
            <br />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/webconfig-ajustes.PNG" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
