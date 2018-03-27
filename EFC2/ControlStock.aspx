<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ControlStock.aspx.cs" Inherits="EFC2.ControlStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 49%;
        }
        .style2
        {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Control de stock</p>
    <table class="style1">
        <tr>
            <td class="style2">
                Cantidad de stock a buscar :</td>
            <td>
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" 
        onclick="btnBuscar_Click" />
    <br />
    <br />
    <br />
    <asp:Panel ID="PanelStock" runat="server" Visible="False">
        <asp:GridView ID="grdStock" runat="server" Height="164px" Width="264px" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:LinkButton ID="lnkVolver" runat="server">Volver</asp:LinkButton>
    <br />
    <p>
        &nbsp;</p>
</asp:Content>
