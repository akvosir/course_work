<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="spent_detailsAdd.aspx.cs" Inherits="WebApplication1.spent_detailsAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="spent_part_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="spent_part_id" HeaderText="spent_part_id" ReadOnly="True" SortExpression="spent_part_id" />
            <asp:BoundField DataField="part_id" HeaderText="part_id" SortExpression="part_id" />
            <asp:BoundField DataField="spent_part_amount" HeaderText="spent_part_amount" SortExpression="spent_part_amount" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" SortExpression="order_id" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stoConnectionString2 %>" DeleteCommand="DELETE FROM [spent_part] WHERE [spent_part_id] = @spent_part_id" InsertCommand="INSERT INTO [spent_part] ([spent_part_id], [part_id], [spent_part_amount], [order_id]) VALUES (@spent_part_id, @part_id, @spent_part_amount, @order_id)" SelectCommand="SELECT * FROM [spent_part]" UpdateCommand="UPDATE [spent_part] SET [part_id] = @part_id, [spent_part_amount] = @spent_part_amount, [order_id] = @order_id WHERE [spent_part_id] = @spent_part_id">
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
</asp:Content>
