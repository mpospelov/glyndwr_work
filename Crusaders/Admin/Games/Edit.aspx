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
                <asp:Label ID="PlrLbl" runat="server" Text="Player" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <select class="form-control" onchange="$('#MainContent_PlrSlc').val(this.value)">
                        <asp:Repeater ID="PlayerRepeater" runat="server" OnLoad="Page_Load">
                            <ItemTemplate>
                                <option value="<%# Eval("id") %>"><%# Eval("FamilyName") %></option>
                            </ItemTemplate>
                        </asp:Repeater>
                    </select>
                    <asp:HiddenField ID="PlrSlc" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="Button1" runat="server" OnClick="CnlBtn_Click" Text="Cancel" CssClass="btn btn-warning" />
                    <asp:Button ID="Button2" runat="server" OnClick="SbmBtn_Click" Text="Submit" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
