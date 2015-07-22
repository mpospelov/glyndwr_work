<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Crusaders.Admin.Games.ShowAllResults" %>

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
            <h2>Game results table</h2>
        </div>
    </div>
    <form id="Form1" runat="server">
        <div class="table-responsive">
            <asp:Repeater ID="ResultsRepeater" runat="server" OnLoad="ResultsRepeater_Load">
                <HeaderTemplate>
                    <table class="table table-striped table-bordered center">
                        <header>
                            <th>Date</th>
                            <th>Points</th>
                            <th>Win</th>
                            <th>Oponent</th>
                            <th>Venue</th>
                            <th>Comp</th>
                            <th>Buttons</th>
                        </header>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Data") %></td>
                        <td><%# Eval("Points") %></td>
                        <td><%# Eval("Result") %></td>
                        <td><%# Eval("Opponent") %></td>
                        <td><%# Eval("Venue") %></td>
                        <td><%# Eval("Comp") %></td>
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
