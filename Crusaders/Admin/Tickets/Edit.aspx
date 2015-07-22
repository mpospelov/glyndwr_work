<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Crusaders.Admin.Tickets.Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="Form1" class="form-horizontal" runat="server">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">Tickets Form</h3>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <asp:Label ID="TypeLbl" runat="server" Text="Type" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <select class="form-control" id="TypeSlc" runat="server">
                            <option>Matchday</option>
                            <option>Season</option>
                        </select>
                    </div>
                    <asp:Label ID="AgeLbl" runat="server" Text="Type" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <select class="form-control" id="AgeSlc" runat="server">
                            <option>Child</option>
                            <option>Adult</option>
                            <option>Concession</option>
                            <option>Family</option>
                        </select>
                    </div>
                    <asp:Label ID="PriceLbl" runat="server" Text="Price" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Label ID="DescLbl" runat="server" Text="Description" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtDesc" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <asp:Button ID="CnlBtn" runat="server" OnClick="CnlBtn_Click" Text="Cancel" CssClass="btn btn-warning" />
                        <asp:Button ID="SbmBtn" runat="server" OnClick="SbmBtn_Click" Text="Submit" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>

    </form>
</asp:Content>
