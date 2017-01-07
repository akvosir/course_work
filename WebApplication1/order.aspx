<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication1.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" ReadOnly="True" SortExpression="order_id" />
            <asp:BoundField DataField="order_price" HeaderText="order_price" SortExpression="order_price" />
            <asp:BoundField DataField="warranty" HeaderText="warranty" SortExpression="warranty" />
            <asp:BoundField DataField="repair_period" HeaderText="repair_period" SortExpression="repair_period" />
            <asp:BoundField DataField="client_id" HeaderText="client_id" SortExpression="client_id" />
            <asp:BoundField DataField="vehicle_id" HeaderText="vehicle_id" SortExpression="vehicle_id" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
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
    <a runat="server" href="~/orderAdd" class="btn btn-primary btn-lg">Додати новий запис &raquo;</a></p>

</asp:Content>
