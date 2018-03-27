<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EFC2.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 25%;
        }
        .style2
        {
            width: 162px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Iniciar sesión</p>
    <table class="style1">
        <tr>
            <td class="style2">
                Nombre de usuario</td>
            <td>
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Contraseña</td>
            <td>
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" 
        onclick="btnIniciarSesion_Click" />
    <br />
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    <br />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
