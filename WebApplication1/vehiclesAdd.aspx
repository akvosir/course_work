<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vehiclesAdd.aspx.cs" Inherits="WebApplication1.vehiclesAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="vehicle_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="vehicle_id" HeaderText="vehicle_id" ReadOnly="True" SortExpression="vehicle_id" />
            <asp:BoundField DataField="lisence" HeaderText="lisence" SortExpression="lisence" />
            <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
            <asp:BoundField DataField="release_year" HeaderText="release_year" SortExpression="release_year" />
            <asp:BoundField DataField="breaking_reason" HeaderText="breaking_reason" SortExpression="breaking_reason" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stoConnectionString %>" DeleteCommand="DELETE FROM [vehicle] WHERE [vehicle_id] = @vehicle_id" InsertCommand="INSERT INTO [vehicle] ([vehicle_id], [lisence], [brand], [release_year], [breaking_reason]) VALUES (@vehicle_id, @lisence, @brand, @release_year, @breaking_reason)" SelectCommand="SELECT * FROM [vehicle]" UpdateCommand="UPDATE [vehicle] SET [lisence] = @lisence, [brand] = @brand, [release_year] = @release_year, [breaking_reason] = @breaking_reason WHERE [vehicle_id] = @vehicle_id">
        <DeleteParameters>
            <asp:Parameter Name="vehicle_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="vehicle_id" Type="Int32" />
            <asp:Parameter Name="lisence" Type="String" />
            <asp:Parameter Name="brand" Type="String" />
            <asp:Parameter DbType="Date" Name="release_year" />
            <asp:Parameter Name="breaking_reason" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="lisence" Type="String" />
            <asp:Parameter Name="brand" Type="String" />
            <asp:Parameter DbType="Date" Name="release_year" />
            <asp:Parameter Name="breaking_reason" Type="String" />
            <asp:Parameter Name="vehicle_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
