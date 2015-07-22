﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Crusaders.Admin.Players.ShowAllPlayers" %>

<asp:Content runat="server" ID="Messages" ContentPlaceHolderID="Messages">
    <% if(!string.IsNullOrEmpty(success_message)){ %>
          <div class="bs-component">
            <div class="alert alert-dismissable alert-success">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <%: success_message %>
            </div>
         </div>
    <% } %>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <a href="Create.aspx" class="btn btn-primary btn-fab btn-raised mdi-content-add pull-right"></a>
    <div class="row featurette">
        <div class="col-md-7">
            <h2>Players table</h2>
        </div>
    </div>
    <form id="Form1" runat="server">
        <div class="table-responsive">
            <asp:Repeater ID="PlayersRepeater" runat="server" OnLoad="PlayersRepeater_Load">
                <HeaderTemplate>
                    <table class="table table-striped table-bordered center">
                        <header>
                            <th>Family Name</th>
                            <th>Name</th>
                            <th>Number</th>
                            <th>Position</th>
                            <th>Buttons</th>
                        </header>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("FamilyName") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("Number") %></td>
                        <td><%# Eval("Position") %></td>
                        <td>
                            <a href="Edit.aspx?id=<%# Eval("id") %>" class="btn btn-info btn-fab btn-fab-mini btn-raised mdi-editor-border-color"></a>
                            <a href="Delete.aspx?id=<%# Eval("id") %>" class="btn btn-danger btn-fab btn-fab-mini btn-raised mdi-content-clear"></a>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>
