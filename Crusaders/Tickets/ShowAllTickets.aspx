<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowAllTickets.aspx.cs" Inherits="Crusaders.Tickets.ShowAll" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form runat="server">
        <div class="table-responsive">
            <asp:Table ID="TicketsTable" runat="server" CssClass="table table-striped" OnDataBinding="Page_Load">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Type</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Description</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>Children</asp:TableCell>
                    <asp:TableCell>1000 £</asp:TableCell>
                    <asp:TableCell>Super sale</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</asp:Content>
