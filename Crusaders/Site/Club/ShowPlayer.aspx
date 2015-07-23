<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowPlayer.aspx.cs" Inherits="Crusaders.Site.Club.ShowPlayer" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form runat="server">
        <div class="row featurette">
            <div class="col-md-7">
              <h2><%: player.FamilyName %>  <%: player.Name %></h2>
              <p>Number: <%: player.Number %></p>
              <p>Position: <%: player.Position %></p>
            </div>
            <div class="col-md-5">
              <img class="img-circle img-game" src="/Admin/Players/Data/<%: player.Avatar %>" alt="Generic placeholder image">
            </div>
        </div>
        <div class="table-responsive">
            <asp:Repeater ID="GamesRepeater" runat="server" OnLoad="Page_Load">
                <HeaderTemplate>
                    <table class="table table-striped table-bordered center">
                        <header>
                            <th>Date</th>
                            <th>Oponent</th>
                            <th>Venue</th>
                            <th>Comp</th>
                        </header>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Data") %></td>
                        <td><%# Eval("Opponent") %></td>
                        <td><%# Eval("Venue") %></td>
                        <td><%# Eval("Comp") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>