﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Crusaders._Default" %>

<asp:Content runat="server" ID="SliderContent" ContentPlaceHolderID="SliderContent">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class=""></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item">
                <img class="first-slide" src="Images/slide_1.jpg"" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Example headline.</h1>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="second-slide" src="Images/slide_2.jpg"" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Another example headline.</h1>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                    </div>
                </div>
            </div>
            <div class="item active">
                <img class="third-slide" src="Images/slide_3.jpg"" alt="Third slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>One more for good measure.</h1>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left mdi-navigation-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right mdi-navigation-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class ="container marketing">
        <div class="row">
            <asp:Repeater ID="GamesRepeater" runat="server" OnLoad="Page_Load">
                <ItemTemplate>
                    <div class="col-lg-4">
                        <img class="img-circle img-game" src="/Games/Data/<%# Eval("Image") %>" alt="Generic placeholder image" width="140" height="140">
                        <h2><%# DataBinder.Eval(Container.DataItem, "Opponent") %></h2>
                        <p><%# DataBinder.Eval(Container.DataItem, "Venue") %></p>
                        <p><%# DataBinder.Eval(Container.DataItem, "Comp") %></p>
                        <p><%# DataBinder.Eval(Container.DataItem, "Data") %></p>
                    </div><!-- /.col-lg-4 -->
               </ItemTemplate>
            </asp:Repeater>
       </div>
    </div>
    <hr class="featurette-divider">
    <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="/Images/news_1.jpg" /" alt="Generic placeholder image">
        </div>
    </div>
</asp:Content>
