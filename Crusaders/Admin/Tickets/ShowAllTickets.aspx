<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ShowAllTickets.aspx.cs" Inherits="Crusaders.Admin.Tickets.ShowAll" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="row featurette">
        <div class="col-md-7">
          <h2>First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="/Images/ticket.jpg" /" alt="Generic placeholder image">
        </div>
    </div>
    <h3 class="ticket-title">First featurette heading.</h3>
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
                        <td><%# Eval("Type") %></td>
                        <td><%# Eval("Price") %></td>
                        <td><%# Eval("Description") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>
    </form>
</asp:Content>
