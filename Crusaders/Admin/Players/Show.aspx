<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Crusaders.Admin.Players.ShowAllPlayers" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <a href="Create.aspx" class="btn btn-primary btn-fab btn-raised mdi-content-add"></a>
    <div class="row featurette">
        <div class="col-md-7">
            <h2>First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
        </div>
    </div>
    <form id="Form1" runat="server">
        <div class="table-responsive">
            <asp:Repeater ID="PlayersRepeater" runat="server" OnLoad="PlayersRepeater_Load">
                <HeaderTemplate>
                    <table class="table table-striped">
                        <header>
                            <th>Family Name</th>
                            <th>Name</th>
                            <th>Number</th>
                            <th>Position</th>
                            <th>Edit</th>
                            <th>Delete</th>
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
                        </td>
                        <td>
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
