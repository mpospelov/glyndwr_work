<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Crusaders.Admin.Games.Show" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <a href="Create.aspx" class="btn btn-primary btn-fab btn-raised mdi-content-add pull-right"></a>
    <div class="row featurette">
        <div class="col-md-7">
            <h2>Games table</h2>
        </div>
    </div>
    <form id="Form1" runat="server">
        <div class="table-responsive">
            <asp:Repeater ID="GamesRepeater" runat="server" OnLoad="GamesRepeater_Load">
                <HeaderTemplate>
                    <table class="table table-striped table-bordered center">
                        <header>
                            <th>Date</th>
                            <th>Oponent</th>
                            <th>Venue</th>
                            <th>Comp</th>
                            <th>Buttons</th>
                        </header>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Data") %></td>
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
