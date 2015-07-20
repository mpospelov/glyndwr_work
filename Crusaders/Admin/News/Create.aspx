<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Crusaders.Admin.News.Create" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form id="Form1" class="form-horizontal" runat="server" method="post" enctype="multipart/form-data">
        <div class="well infobox">
            <div class="form-group">
                <asp:Label ID="TltLbl" runat="server" Text="Title" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtTlt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Label ID="CntLbl" runat="server" Text="Content" CssClass="col-lg-2 control-label"></asp:Label>
                <div class="col-lg-10">
                    <asp:TextBox ID="TxtCnt" runat="server" CssClass="form-control" TextMode="multiline" Columns="50" Rows="5"></asp:TextBox>
                </div>
                <asp:Label ID="File1Lbl" runat="server" Text="Image" CssClass="col-lg-2 control-label"></asp:Label>
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
        </div>
    </form>
</asp:Content>
