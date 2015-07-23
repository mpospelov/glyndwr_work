<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Crusaders.Default" %>

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
                <img class="first-slide" src="/Images/slide_1.jpg"" alt="First slide">
               
            </div>
            <div class="item">
                <img class="second-slide" src="/Images/slide_2.jpg"" alt="Second slide">
              
            </div>
            <div class="item active">
                <img class="third-slide" src="/Images/slide_3.jpg"" alt="Third slide">
               
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
                        <img class="img-circle img-game" src="/Admin/Games/Data/<%# Eval("Image") %>" alt="Generic placeholder image" width="140" height="140">
                        <h2><%# Eval("Opponent") %></h2>
                        <p><%# Eval("Venue") %></p>
                        <p><%# Eval("Comp") %></p>
                        <p><%# Eval("Data") %></p>
                    </div><!-- /.col-lg-4 -->
               </ItemTemplate>
            </asp:Repeater>
       </div>
    </div>
    <hr class="featurette-divider">
    <div class="row featurette">
        <asp:Repeater ID="NewsRepeater" runat="server" OnLoad="Page_Load">
            <ItemTemplate>
                <div class="col-md-7">
                    <h2><%# Eval("Title") %></h2>
                    <p class="lead"><%# Eval("Content") %></p>
                <p><a href="/Site/Club/ShowNews.aspx?id=<%# Eval("id") %>" class="btn btn-success">More...</a></p>

                </div>
                <div class="col-md-5">
                  <img class="featurette-image img-responsive center-block" src="/Admin/News/Data/<%# Eval("Image") %>" alt="Generic placeholder image">
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
