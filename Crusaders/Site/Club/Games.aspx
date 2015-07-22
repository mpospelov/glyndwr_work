<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="Crusaders.Site.Club.Games" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="container marketing">
        <div class="row featurette">
        <div class="col-md-7">
            <h2>Games</h2>
        </div>
    </div>
        <div class="row">
            <asp:Repeater ID="GamesRepeater" runat="server" OnLoad="Page_Load">
                <ItemTemplate>
                    <div class="col-lg-4">
                        <img class="img-circle img-game" src="Admin/Games/Data/<%# Eval("Image") %>" alt="Generic placeholder image" width="140" height="140">
                        <h2><%# Eval("Data") %>>  <%# Eval("Opponent") %></h2>
                        <p><%# Eval("Venue") %></p>
                        <p><%# Eval("Comp") %></p>
                        <a href="ShowGame.aspx?id=<%# Eval("id") %>">More...</a>
                    </div>
               </ItemTemplate>
            </asp:Repeater>
       </div>
    </div>
</asp:Content>

