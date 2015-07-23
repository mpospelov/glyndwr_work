<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Crusaders.Site.Club.News" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row featurette">
        <div class="col-md-7">
           <asp:Repeater ID="NewsRepeater" runat="server" OnLoad="Page_Load">
                <ItemTemplate>
                    <h2><%# Eval("Title") %></h2>
                    <p><%# Eval("Content") %></p>
                    <p><a href="ShowNews.aspx?id=<%# Eval("id") %>">More...</a></p>
               </ItemTemplate>
            </asp:Repeater> 
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="/Admin/News/Data/<%# Eval("Image") %>" alt="Generic placeholder image">
        </div>
    </div>
</asp:Content>
