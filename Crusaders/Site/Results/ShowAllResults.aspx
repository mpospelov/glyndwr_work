<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowAllResults.aspx.cs" Inherits="Crusaders.Site.Results.ShowAllResults" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Results of games</h2>
    <div id="body">
        <img class="tickets" src="/Images/result_site.jpg" />
        <div class="container marketing">
            <div class="row tickets-info-box">
                <asp:Repeater ID="ResultsRepeater" runat="server" OnLoad="GamesRepeater_Load">
                    <ItemTemplate>
                        <div class="col-lg-4 ticket-box">
                            <div class="well infobox">
                                <h2><%# Eval("Result") %></h2>
                                <p><%# Eval("Points") %></p>
                                <p><%# Eval("Opponent") %></p>
                                <p><%# Eval("Data") %></p>
                                <p><%# Eval("Venue") %></p>
                                <p><%# Eval("Comp") %></p>
                            </div>
                        </div>
                        <!-- /.col-lg-4 -->
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
