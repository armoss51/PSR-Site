<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="PSR_Site.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gallery</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="PSR-CSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="top-bar col-sm-12">
                    <nav class="navbar navbar-expand-sm navbar-dark bg-black">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapseSocial">
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
            <div class="row">
                <div class="col-sm-4">
                    <a href="Home.aspx" class="navbar-brand">
                        <img src="Images/PSRlogo.png" alt="PSR Logo" class="headerLogo" />
                    </a>
                </div>
                <div class="col-sm-8 header-nav">
                    <nav class="navbar navbar-expand-sm navbar-dark bg-black">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapseNavbar">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div id="collapseNavbar" class="collapse navbar-collapse">
                            <ul class="navbar-nav align-bottom">
                                <li class="nav-item"><a href="Home.aspx" class="nav-link">HOME</a></li>
                                <li class="nav-item"><a href="AboutUs.aspx" class="nav-link">ABOUT US</a></li>
                                <li class="nav-item"><a href="Gallery.aspx" class="nav-link">GALLERY</a></li>
                                <li class="nav-item"><a href="Apply.aspx" class="nav-link">APPLY</a></li>
                                <li class="nav-item"><a href="CreateAccount.aspx" class="nav-link">CREATE ACCOUNT</a></li>
                                <li class="nav-item"><a href="Login.aspx" class="nav-link">LOGIN</a></li>
                                <li class="nav-item"><a href="Admin.aspx" class="nav-link">ADMIN</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-sm-12">
                    <h4>Example Album</h4>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="exAlbum2" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#exAlbum2" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1" class="active">
                                </button>
                                <button type="button" data-bs-target="#exAlbum2" data-bs-slide-to="1" aria-current="true" aria-label="Slide 2">
                                </button>
                                <button type="button" data-bs-target="#exAlbum2" data-bs-slide-to="2" aria-current="true" aria-label="Slide 3">
                                </button>
                                <button type="button" data-bs-target="#exAlbum2" data-bs-slide-to="3" aria-current="true" aria-label="Slide 4">
                                </button>
                                <button type="button" data-bs-target="#exAlbum2" data-bs-slide-to="4" aria-current="true" aria-label="Slide 5">
                                </button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="Images/PSRlogo.png" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/car1.PNG" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/car2.PNG" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/car3.PNG" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/Car4.jpg" />
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#exAlbum2" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Prev</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#exAlbum2" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-12">
                    <h4>Example Album</h4>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="exAlbum1" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#exAlbum1" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1" class="active">
                                </button>
                                <button type="button" data-bs-target="#exAlbum1" data-bs-slide-to="1" aria-current="true" aria-label="Slide 2">
                                </button>
                                <button type="button" data-bs-target="#exAlbum1" data-bs-slide-to="2" aria-current="true" aria-label="Slide 3">
                                </button>
                                <button type="button" data-bs-target="#exAlbum1" data-bs-slide-to="3" aria-current="true" aria-label="Slide 4">
                                </button>
                                <button type="button" data-bs-target="#exAlbum1" data-bs-slide-to="4" aria-current="true" aria-label="Slide 5">
                                </button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="Images/PSRlogo.png" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/car1.PNG" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/car2.PNG" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/car3.PNG" />
                                </div>
                                <div class="carousel-item">
                                    <img src="Images/AboutUsCarousel/Car4.jpg" />
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#exAlbum1" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Prev</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#exAlbum1" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
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
