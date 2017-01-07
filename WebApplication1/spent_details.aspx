<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="spent_details.aspx.cs" Inherits="WebApplication1.spent_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="spent_part_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="spent_part_id" HeaderText="spent_part_id" ReadOnly="True" SortExpression="spent_part_id" />
            <asp:BoundField DataField="part_id" HeaderText="part_id" SortExpression="part_id" />
            <asp:BoundField DataField="spent_part_amount" HeaderText="spent_part_amount" SortExpression="spent_part_amount" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" SortExpression="order_id" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stoConnectionString %>" DeleteCommand="DELETE FROM [spent_part] WHERE [spent_part_id] = @spent_part_id" InsertCommand="INSERT INTO [spent_part] ([spent_part_id], [part_id], [spent_part_amount], [order_id]) VALUES (@spent_part_id, @part_id, @spent_part_amount, @order_id)" SelectCommand="SELECT * FROM [spent_part]" UpdateCommand="UPDATE [spent_part] SET [part_id] = @part_id, [spent_part_amount] = @spent_part_amount, [order_id] = @order_id WHERE [spent_part_id] = @spent_part_id">
        <DeleteParameters>
            <asp:Parameter Name="spent_part_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="spent_part_id" Type="Int32" />
            <asp:Parameter Name="part_id" Type="Int32" />
            <asp:Parameter Name="spent_part_amount" Type="Int32" />
            <asp:Parameter Name="order_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="part_id" Type="Int32" />
            <asp:Parameter Name="spent_part_amount" Type="Int32" />
            <asp:Parameter Name="order_id" Type="Int32" />
            <asp:Parameter Name="spent_part_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p><a runat="server" href="~/spent_detailsAdd" class="btn btn-primary btn-lg">Додати новий запис &raquo;</a></p>
</asp:Content>
