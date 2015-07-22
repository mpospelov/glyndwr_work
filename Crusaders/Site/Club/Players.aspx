<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Players.aspx.cs" Inherits="Crusaders.Site.Club.Players" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="container marketing">
        <div class="row featurette">
        <div class="col-md-7">
            <h2>Players</h2>
        </div>
    </div>
        <div class="row">
            <asp:Repeater ID="PlayersRepeater" runat="server" OnLoad="Page_Load">
                <ItemTemplate>
                    <div class="col-lg-4">
                        <img class="img-circle img-game" src="Admin/Players/Data/<%# Eval("Avatar") %>" alt="Generic placeholder image" width="140" height="140">
                        <h2><%# Eval("FamilyName") %></h2>
                        <p><%# Eval("Name") %></p>
                        <p><%# Eval("Number") %></p>
                        <p><%# Eval("Position") %></p>
                        <a href="ShowPlayer.aspx?id=<%# Eval("id") %>">More...</a>
                    </div>
               </ItemTemplate>
            </asp:Repeater>
       </div>
    </div>
</asp:Content>
