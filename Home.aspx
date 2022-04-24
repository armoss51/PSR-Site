<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PSR_Site.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Powershift Racing</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/PSR-CSS.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <%-- Social Media Links Menu --%>
            <div class="row">
                <div class="top-bar col-sm-12">
                    <nav class="navbar navbar-expand-sm navbar-dark bg-black">
                        <%-- Make menu collapsable --%>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSocial">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div id="collapseSocial" class="collapse navbar-collapse">
                            <ul id="social-menu">
                                <li class="social-menu-item"><a href="https://twitter.com/PowershiftRacin" target="_blank">
                                    <img src="Images/Social/twitter.png" alt="twitter logo" id="twitter-logo" /></a></li>
                                <li class="social-menu-item"><a href="https://www.twitch.tv/powershiftracing" target="_blank">
                                    <img src="Images/Social/twitch.png" alt="twitch logo" id="twitch-logo" /></a></li>
                                <li class="social-menu-item"><a href="https://discord.com/invite/uSHz8YHUBG" target="_blank">
                                    <img src="Images/Social/discord.png" alt="discord logo" id="discord-logo" /></a></li>
                                <li class="social-menu-item"><a href="https://www.instagram.com/powershift_racing/" target="_blank">
                                    <img src="Images/Social/instagram.png" alt="instagram logo" id="instagram-logo" /></a></li>
                                <li class="social-menu-item"><a href="https://www.facebook.com/PowershiftRace/" target="_blank">
                                    <img src="Images/Social/facebook.png" alt="facebook logo" id="facebook-logo" /></a></li>
                                <li class="social-menu-item"><a href="https://www.youtube.com/channel/UC92doC-ZMMykHGULc-Hafjg" target="_blank">
                                    <img src="Images/Social/youtube.png" alt="youtube logo" id="youtube-logo" /></a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <%-- Header --%>
            <div class="row">
                <div class="col-sm-4">
                    <a href="Home.aspx" class="navbar-brand">
                        <img src="Images/PSRlogo.png" alt="PSR Logo" class="headerLogo" />
                    </a>
                </div>
                <%-- Main Navigation Menu --%>
                <div class="col-sm-8 header-nav">
                    <nav class="navbar navbar-expand-sm navbar-dark bg-black">
                        <%-- Make menu collapsable --%>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div id="collapseNavbar" class="collapse navbar-collapse">
                            <ul class="navbar-nav align-bottom">
                                <li class="nav-item"><a href="Home.aspx" class="nav-link">HOME</a></li>
                                <li class="nav-item"><a href="AboutUs.aspx" class="nav-link">ABOUT US</a></li>
                                <li class="nav-item"><a href="MEDIA.aspx" class="nav-link">MEDIA</a></li>
                                <li class="nav-item"><a href="Apply.aspx" class="nav-link">APPLY</a></li>
                                <li class="nav-item"><a href="DriverRegistration.aspx" class="nav-link">DRIVER REGISTRATION</a></li>
                                <li class="nav-item"><a id="LoginMenuItem" runat="server" href="Login.aspx" class="nav-link">LOGIN</a></li>
                                <li class="nav-item"><a id="LogoutMenuItem" runat="server" href="Login.aspx" class="nav-link">LOGOUT</a></li>
                                <li class="nav-item"><a id="AdminMenuItem" runat="server" href="Admin.aspx" class="nav-link">ADMIN</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <hr />
            <%-- News Article Carousel --%>
            <div id="newsCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#newsCarousel" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1" class="active">
                    </button>
                    <button type="button" data-bs-target="#newsCarousel" data-bs-slide-to="1" aria-current="true" aria-label="Slide 2">
                    </button>
                    <button type="button" data-bs-target="#newsCarousel" data-bs-slide-to="2" aria-current="true" aria-label="Slide 3">
                    </button>
                    <button type="button" data-bs-target="#newsCarousel" data-bs-slide-to="3" aria-current="true" aria-label="Slide 4">
                    </button>
                    <button type="button" data-bs-target="#newsCarousel" data-bs-slide-to="4" aria-current="true" aria-label="Slide 5">
                    </button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <a href="NewsArticle1.aspx">
                            <img src="Images/News/news1.jpg" alt="race track" class="news-image" /></a>
                        <div class="carousel-caption d-none d-md-block">
                            <h5><a href="NewsArticle1.aspx">News Article 1</a></h5>
                            <p>Sample text from article.....</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <a href="Articles/NewsArticle2.aspx">
                            <img src="Images/News/news2.jpg" alt="driver in car" class="news-image" /></a>
                        <div class="carousel-caption d-none d-md-block">
                            <h5><a href="NewsArticle2.aspx">News Article 2</a></h5>
                            <p>Sample text from article.....</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <a href="NewsArticle3.aspx">
                            <img src="Images/News/news3.jpg" alt="car on track" class="news-image" /></a>
                        <div class="carousel-caption d-none d-md-block">
                            <h5><a href="NewsArticle3.aspx">News Article 3</a></h5>
                            <p>Sample text from article.....</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <a href="NewsArticle4.aspx">
                            <img src="Images/News/news4.jpg" alt="flags" class="news-image" /></a>
                        <div class="carousel-caption d-none d-md-block">
                            <h5><a href="NewsArticle4.aspx">News Article 4</a></h5>
                            <p>Sample text from article.....</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <a href="NewsArticle5.aspx">
                            <img src="Images/News/news5.jpg" alt="back of car" class="news-image" /></a>
                        <div class="carousel-caption d-none d-md-block">
                            <h5><a href="NewsArticle5.aspx">News Article 5</a></h5>
                            <p>Sample text from article.....</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#newsCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Prev</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#newsCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <hr />
            <%-- Info Tiles --%>
            <div class="row home-tiles">
                <div class="col-sm-4 home-1">
                    <h4 class="">Interested in getting started with iRacing?</h4>
                    <a class="btn btn-dark" href="https://www.iracing.com/" target="_blank">Sign Up at iRacing.com</a>
                    <ul>
                        <li>World's premier motorsport racing simulation</li>
                        <li>Officially licensed car replicas</li>
                        <li>Laser-scanned tracks</li>
                        <li>The best online racing multiplayer</li>
                        <li>Special events</li>
                    </ul>
                </div>
                <div class="col-sm-4 upcoming">
                    <h3>Upcoming Events:</h3>
                    <ul>
                        <li>iRacing Sebring 12 (IMSA) - March 25</li>
                        <li>iRacing Nürburgring 24 (GT3//GT4//TCR//PCUP) - April 8</li>
                        <li>iRacing Indy 500 Fixed (IndyCar) - May 13</li>
                        <li>iRacing Indy 500 (IndyCar) - May 20</li>
                        <li>iRacing Coke 600 (NASCAR) - May 24</li>
                    </ul>
                </div>
                <div class="col-sm-4 team-login">
                    <h4>Team Members <br /> Login Here:</h4>
                    <asp:Button ID="btnTeamLoginGo" runat="server" Text="Go To Login" OnClick="btnTeamLoginGo_Click" class="btn-close-white"/>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-sm-12">
                    <footer id="footer">
                        <p>
                            Copyright  &copy;
                            <script>document.write(new Date().getFullYear())</script>
                            || Powershift Racing
                        </p>
                    </footer>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
