<%@ Page Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CreateGame.aspx.cs" Inherits="Crusaders.Admin.Games.CreateGame" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form class="form-horizontal" runat="server" method="post" enctype="multipart/form-data">
        <fieldset>
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
                    <asp:TextBox ID="TxtComp" runat="server" CssClass="form-control" ></asp:TextBox>
                </div>
                <asp:Label ID="File1Lbl" runat="server" Text="Opponent Image" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <INPUT type=file id=File1 name=File1 runat="server" class ="form-control" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                   <asp:Button ID="Button1" runat="server" OnClick="CnlBtn_Click" Text="Cancel" CssClass="btn btn-warning" />
                   <asp:Button ID="Button2" runat="server" OnClick="SbmBtn_Click" Text="Submit" CssClass="btn btn-primary" />
                </div>
            </div>
        </fieldset>
    </form>
</asp:Content>




