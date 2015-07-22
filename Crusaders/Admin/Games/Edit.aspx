<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Crusaders.Admin.Games.EditGames" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="Form1" class="form-horizontal" runat="server" method="post" enctype="multipart/form-data">
        <div class="well infobox">
            <div class="form-group">
                <asp:Label ID="DataLbl" runat="server" Text="Date" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtData" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Label ID="OpntLbl" runat="server" Text="Oponent" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtOpnt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Label ID="VenueLbl" runat="server" Text="Venue" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtVenue" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Label ID="CompLbl" runat="server" Text="Comp" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtComp" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Label ID="File1Lbl" runat="server" Text="Opponent Image" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <input type="file" id="File1" name="File1" runat="server" class="form-control" />
                </div>
                <asp:Label ID="ResLbl" runat="server" Text="Result" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <select class="form-control" onchange="$('#MainContent_ResSlc').val(this.value)">
                        <asp:Repeater ID="ResultRepeater" runat="server" OnLoad="Page_Load">
                            <ItemTemplate>
                                <option value="<%# Eval("id") %>"><%# Eval("Opponent") %></option>
                            </ItemTemplate>
                        </asp:Repeater>
                    </select>
                    <asp:HiddenField ID="ResSlc" runat="server" />
                </div>

            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="Button1" runat="server" OnClick="CnlBtn_Click" Text="Cancel" CssClass="btn btn-warning" />
                    <asp:Button ID="Button2" runat="server" OnClick="SbmBtn_Click" Text="Submit" CssClass="btn btn-primary" />
                </div>
            </div>

            <h3 class="panel-title">Players Table</h3>

            <table class="table table-bordered table-striped center">
                <thead>
                    <th>id</th>
                    <th>Number</th>
                    <th>FamilyName</th>
                    <th>Name</th>
                    <th>Position</th>

                    <th>Buttons</th>
                </thead>
                <% foreach(var player in allPlayers){ %>
  
                        <tr>
                            <td><%: player.id %></td>
                            <td><%: player.Number %></td>
                            <td><%: player.FamilyName%></td>
                            <td><%: player.Name%></td>
                            <td><%: player.Position %></td>

                            <td>
                                <% if (isPlayerAdded(player.id)){ %>
         
                                <a href="RemovePlayer.aspx?id=<%: gm.id %>&player_id=<%: player.id %>" class="btn btn-info btn-fab btn-fab-mini btn-raised mdi-editor-border-color"></a>
                                <% }else { %>
                                <a href="AddPlayer.aspx?id=<%: gm.id %>&player_id=<%: player.id %>" class="btn btn-info btn-fab btn-fab-mini btn-raised mdi-editor-border-color"></a>
                                <% } %>
                            </td>
                        </tr>
                  <% } %>
            </table>
        </div>
    </form>
</asp:Content>
