<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowAllTickets.aspx.cs" Inherits="Crusaders.Site.Tickets.ShowAllTickets" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="body">
        <img class="tickets" src="/Images/slide_ticket.jpg" />
        <div class="container marketing">
            <div class="row tickets-info-box">
                <asp:Repeater ID="TicketsRepeater" runat="server" OnLoad="TicketsRepeater_Load">
                    <ItemTemplate>
                        <div class="col-lg-4 ticket-box">
                            <div class="well infobox">
                                <h2><%# Eval("Type") %></h2>
                                <p><%# Eval("Price") %></p>
                                <p><%# Eval("Description") %></p>
                            </div>
                        </div>
                        <!-- /.col-lg-4 -->
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
