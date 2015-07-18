<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowAllTickets.aspx.cs" Inherits="Crusaders.Tickets.ShowAll" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form runat="server">
        <div class="table-responsive">
            <asp:Repeater ID="TicketsRepeater" runat="server" OnLoad="TicketsRepeater_Load">
                <HeaderTemplate>
                    <table class="table table-striped">
                        <header>
                            <th>Type</th>
                            <th>Price</th>
                            <th>Description</th>
                        </header>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# DataBinder.Eval(Container.DataItem, "Type") %></td>
                        <td><%# DataBinder.Eval(Container.DataItem, "Price") %></td>
                        <td><%# DataBinder.Eval(Container.DataItem, "Description") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>
    </form>
</asp:Content>
