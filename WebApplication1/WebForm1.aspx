<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="client_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="client_id" HeaderText="client_id" ReadOnly="True" SortExpression="client_id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
            <asp:BoundField DataField="telephone_number" HeaderText="telephone_number" SortExpression="telephone_number" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stoConnectionString %>" DeleteCommand="DELETE FROM [client] WHERE [client_id] = @client_id" InsertCommand="INSERT INTO [client] ([client_id], [name], [surname], [telephone_number]) VALUES (@client_id, @name, @surname, @telephone_number)" SelectCommand="SELECT * FROM [client]" UpdateCommand="UPDATE [client] SET [name] = @name, [surname] = @surname, [telephone_number] = @telephone_number WHERE [client_id] = @client_id">
        <DeleteParameters>
            <asp:Parameter Name="client_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="client_id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="surname" Type="String" />
            <asp:Parameter Name="telephone_number" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="surname" Type="String" />
            <asp:Parameter Name="telephone_number" Type="String" />
            <asp:Parameter Name="client_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
