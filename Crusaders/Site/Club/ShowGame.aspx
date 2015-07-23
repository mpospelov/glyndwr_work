<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowGame.aspx.cs" Inherits="Crusaders.Site.Club.ShowGame" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form" runat="server">
        <div class="row featurette">
            <div class="col-md-7">
              <h2><%: game.Data %> <%: game.Opponent %></h2>
              <p>Venue: <%: game.Venue %></p>
              <p>Comp: <%: game.Comp %></p>
            </div>
            <div class="col-md-5">
              <img class="img-circle img-game game-image" src="/Admin/Games/Data/<%: game.Image %>" alt="Generic placeholder image" />
            </div>
        </div>

        <div class="table-responsive">
            <asp:Repeater ID="PlayersRepeater" runat="server" OnLoad="Page_Load">
                <HeaderTemplate>
                    <table class="table table-striped table-bordered center">
                        <header>
                            <th>Family Name</th>
                            <th>Name</th>
                            <th>Number</th>
                            <th>Position</th>
                        </header>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("FamilyName") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Number") %></td>
                        <td><%# Eval("Position") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>