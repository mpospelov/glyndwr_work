<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CreateTicket.aspx.cs" Inherits="Crusaders.Admin.Tickets.CreateTicket" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form class="form-horizontal" runat="server">
        <div class="form-group">
            <asp:Label ID="TypeLbl" runat="server" Text="Type" CssClass="col-lg-2 control-label"></asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="TxtType" runat="server" CssClass="form-control"></asp:TextBox>
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
    </form>
</asp:Content>






