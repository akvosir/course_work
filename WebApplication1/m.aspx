<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="m.aspx.cs" Inherits="WebApplication1.m" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p><a runat="server" href="~/About" class="btn btn-primary btn-lg">Клієнти &raquo;</a></p>
    <p><a runat="server" href="~/order" class="btn btn-primary btn-lg">Замовлення &raquo;</a></p>
    <p><a runat="server" href="~/details" class="btn btn-primary btn-lg">Каталог деталей &raquo;</a></p>
    <p><a runat="server" href="~/spent_details" class="btn btn-primary btn-lg">Витрачені деталі &raquo;</a></p>
    <p><a runat="server" href="~/vehicles" class="btn btn-primary btn-lg">Транспортний засіб &raquo;</a></p>
</asp:Content>
