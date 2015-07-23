<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowNews.aspx.cs" Inherits="Crusaders.Site.Club.ShowNews" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form" runat="server">
        <div class="row featurette">
            <div class="col-md-7">
              <h2><%:one_news.Title  %> </h2>
              <p>Venue: <%: one_news.Content %></p>>
            </div>
            <div class="col-md-5">
              <img class="img-circle img-game"  style="width: 100%;" src="/Admin/News/Data/<%:one_news.Image %>" alt="Generic placeholder image">
            </div>
        </div>
        </form>
</asp:Content>
