<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CreateResults.aspx.cs" Inherits="Crusaders.Admin.Games.GamesResults" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form1" class="form-horizontal" runat="server">
        <div class="form-group">
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
            <asp:Label ID="DataLbl" runat="server" Text="Date" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="TxtData" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Label ID="PntLbl" runat="server" Text="Points" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="TxtPnt" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <asp:Label ID="Label1" runat="server" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <div class="checkbox">
                    <label for="MainContent_ChkWin">
                        <asp:CheckBox ID="ChkWin" runat="server" />
                        <span class="checkbox-material"><span class="check"></span></span>Win
                    </label>
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="CnlBtn" runat="server" OnClick="CnlBtn_Click" Text="Cancel" CssClass="btn btn-warning" />
                    <asp:Button ID="SbmBtn" runat="server" OnClick="SbmBtn_Click" Text="Submit" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
