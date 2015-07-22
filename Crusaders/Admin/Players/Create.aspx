<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Crusaders.Admin.Players.CreatePlayer" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="Form1" class="form-horizontal" runat="server" method="post" enctype="multipart/form-data">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">Players Form</h3>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <asp:Label ID="FNameLbl" runat="server" Text="Family name" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtFName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Label ID="NameLbl" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Label ID="NmbLbl" runat="server" Text="Number" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtNmb" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Label ID="PstLbl" runat="server" Text="Position" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="TxtPst" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Label ID="File1Lbl" runat="server" Text="Player Image" CssClass="col-lg-2 control-label"></asp:Label>
                    <div class="col-lg-10">
                        <input type="file" id="File1" name="File1" runat="server" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <asp:Button ID="Button1" runat="server" OnClick="CnlBtn_Click" Text="Cancel" CssClass="btn btn-warning" />
                        <asp:Button ID="Button2" runat="server" OnClick="SbmBtn_Click" Text="Submit" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
