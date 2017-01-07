<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orderAddaspx.aspx.cs" Inherits="WebApplication1.orderAddaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="order_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="order_price" HeaderText="order_price" SortExpression="order_price" />
            <asp:BoundField DataField="warranty" HeaderText="warranty" SortExpression="warranty" />
            <asp:BoundField DataField="repair_period" HeaderText="repair_period" SortExpression="repair_period" />
            <asp:BoundField DataField="client_id" HeaderText="client_id" SortExpression="client_id" />
            <asp:BoundField DataField="vehicle_id" HeaderText="vehicle_id" SortExpression="vehicle_id" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stoConnectionString %>" DeleteCommand="DELETE FROM [order_] WHERE [order_id] = @order_id" InsertCommand="INSERT INTO [order_] ([order_id], [order_price], [warranty], [repair_period], [client_id], [vehicle_id]) VALUES (@order_id, @order_price, @warranty, @repair_period, @client_id, @vehicle_id)" SelectCommand="SELECT * FROM [order_]" UpdateCommand="UPDATE [order_] SET [order_price] = @order_price, [warranty] = @warranty, [repair_period] = @repair_period, [client_id] = @client_id, [vehicle_id] = @vehicle_id WHERE [order_id] = @order_id">
        <DeleteParameters>
            <asp:Parameter Name="order_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="order_id" Type="Int32" />
            <asp:Parameter Name="order_price" Type="Int32" />
            <asp:Parameter Name="warranty" Type="String" />
            <asp:Parameter DbType="Date" Name="repair_period" />
            <asp:Parameter Name="client_id" Type="Int32" />
            <asp:Parameter Name="vehicle_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="order_price" Type="Int32" />
            <asp:Parameter Name="warranty" Type="String" />
            <asp:Parameter DbType="Date" Name="repair_period" />
            <asp:Parameter Name="client_id" Type="Int32" />
            <asp:Parameter Name="vehicle_id" Type="Int32" />
            <asp:Parameter Name="order_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
