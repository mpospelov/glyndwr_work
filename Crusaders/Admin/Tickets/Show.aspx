<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Crusaders.Admin.Tickets.ShowAll" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <a href="Create.aspx" class="btn btn-primary btn-fab btn-raised mdi-content-add"></a>
    <div class="row featurette">
        <div class="col-md-7">
            <h2>First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
        </div>
    </div>
    <form runat="server">
        <div class="table-responsive">
            <table class="table table-striped">
                <header>
                    <th>Type</th>
                    <th></th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Edit</th>
                    <th>Delete</th>
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
                            </td>
                            <td>
                                <a href="Delete.aspx?id=<%# Eval("id") %>" class="btn btn-danger btn-fab btn-fab-mini btn-raised mdi-content-clear"></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</asp:Content>
