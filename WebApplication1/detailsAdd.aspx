<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="detailsAdd.aspx.cs" Inherits="WebApplication1.detailsAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="part_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="part_id" HeaderText="part_id" ReadOnly="True" SortExpression="part_id" />
            <asp:BoundField DataField="part_name" HeaderText="part_name" SortExpression="part_name" />
            <asp:BoundField DataField="part_price" HeaderText="part_price" SortExpression="part_price" />
            <asp:BoundField DataField="part_amount" HeaderText="part_amount" SortExpression="part_amount" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stoConnectionString %>" DeleteCommand="DELETE FROM [part_catalogue] WHERE [part_id] = @part_id" InsertCommand="INSERT INTO [part_catalogue] ([part_id], [part_name], [part_price], [part_amount]) VALUES (@part_id, @part_name, @part_price, @part_amount)" SelectCommand="SELECT * FROM [part_catalogue]" UpdateCommand="UPDATE [part_catalogue] SET [part_name] = @part_name, [part_price] = @part_price, [part_amount] = @part_amount WHERE [part_id] = @part_id">
        <DeleteParameters>
            <asp:Parameter Name="part_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="part_id" Type="Int32" />
            <asp:Parameter Name="part_name" Type="String" />
            <asp:Parameter Name="part_price" Type="Int32" />
            <asp:Parameter Name="part_amount" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="part_name" Type="String" />
            <asp:Parameter Name="part_price" Type="Int32" />
            <asp:Parameter Name="part_amount" Type="Int32" />
            <asp:Parameter Name="part_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
