﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Crusaders.Admin.Games.Show" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="row featurette">
        <div class="col-md-7">
            <h2>First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
           <img class="featurette-image img-responsive center-block" src="/Images/result.jpg" /" alt="Generic placeholder image">
        </div>
    </div>
    <h3 class="ticket-title">First featurette heading.</h3>
    <form id="Form1" runat="server">
        <div class="table-responsive">
            <asp:Repeater ID="GamesRepeater" runat="server" OnLoad="GamesRepeater_Load">
                <HeaderTemplate>
                    <table class="table table-striped">
                        <header>
                            <th>Date</th>
                            <th>Points</th>
                            <th>Win</th>
                            <th>Oponent</th>
                            <th>Venue</th>
                            <th>Comp</th>
                        </header>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Opponent") %></td>
                        <td><%# Eval("Venue") %></td>
                        <td><%# Eval("Comp") %></td>
                        <td><%# Eval("Data") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>