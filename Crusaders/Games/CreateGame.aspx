<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateGame.aspx.cs" Inherits="Crusaders.Games.CreateGame" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <form class="form-horizontal">
        <fieldset>
            <div class="form-group">
                <label for="inputData" class="col-lg-2 control-label">Data</label>
                <div class="col-lg-10">
                    <input type="data" class="form-control" id="inputData" placeholder="Data">
                </div>
                <label for="inputOponent" class="col-lg-2 control-label">Oponent</label>
                <div class="col-lg-10">
                    <input type="oponent" class="form-control" id="inputOponent" placeholder="Oponent">
                </div>
                <label for="inputVenue" class="col-lg-2 control-label">Venue</label>
                <div class="col-lg-10">
                    <input type="venue" class="form-control" id="inputVenue" placeholder="Venue">
                </div>
                <label for="inputComp" class="col-lg-2 control-label">Comp</label>
                <div class="col-lg-10">
                    <input type="comp" class="form-control" id="inputComp" placeholder="Comp">
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <button class="btn btn-warning">Cancel</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </fieldset>
    </form>
</asp:Content>


