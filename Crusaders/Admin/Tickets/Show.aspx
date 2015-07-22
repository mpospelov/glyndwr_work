<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Crusaders.Admin.Tickets.ShowAll" %>

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
            <h2>Tickets table</h2>
        </div>
    </div>
    <form runat="server">
        <div class="table-responsive">
            <table class="table table-striped table-bordered center">
                <header>
                    <th>Type</th>
                    <th></th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Buttons</th>
                </header>
                <asp:Repeater ID="TicketsRepeater" runat="server" OnLoad="TicketsRepeater_Load">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Type") %></td>
                            <td><%# Eval("AgeOrType") %></td>
                            <td><%# Eval("Price") %></td>
                            <td><%# Eval("Description") %></td>
                            <td>
                                <a href="Edit.aspx?id=<%# Eval("id") %>" class="btn btn-info btn-fab btn-fab-mini btn-raised mdi-editor-border-color"></a>
                                <a href="Delete.aspx?id=<%# Eval("id") %>" class="btn btn-danger btn-fab btn-fab-mini btn-raised mdi-content-clear"></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</asp:Content>
