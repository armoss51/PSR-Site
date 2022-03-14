<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="PSR_Site.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
                <div class="col-sm-6">
                    <h3>Our Team:</h3>
                    <p>
                        Founded in 2020, Powershift Racing is a race team that races cars. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore 
                        magna aliqua. Bibendum neque egestas congue quisque egestas diam. Et ultrices neque ornare aenean euismod elementum nisi. Tellus mauris a diam maecenas sed enim. Consequat mauris 
                        nunc congue nisi vitae suscipit tellus. Rutrum quisque non tellus orci ac auctor augue.
                    </p>
                    <p>
                        Vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean. Nec ultrices dui sapien eget. Ipsum a arcu cursus vitae. Pharetra magna ac placerat vestibulum lectus mauris ultrices 
                        eros. Commodo nulla facilisi nullam vehicula ipsum a arcu. Leo a diam sollicitudin tempor id. Et egestas quis ipsum suspendisse ultrices gravida dictum.
                    </p>
                </div>
                <div class="col-sm-6">
                    <h3>Our Values:</h3>
                    <ol>
                        <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</li>
                        <li>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</li>
                        <li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</li>
                        <li>Epsum factorial non deposit quid pro quo hic escorol.</li>
                        <li>Souvlaki ignitus carborundum e pluribus unum.</li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div id="aboutUsCarousel" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#aboutUsCarousel" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1" class="active">
                            </button>
                            <button type="button" data-bs-target="#aboutUsCarousel" data-bs-slide-to="1" aria-current="true" aria-label="Slide 2">
                            </button>
                            <button type="button" data-bs-target="#aboutUsCarousel" data-bs-slide-to="2" aria-current="true" aria-label="Slide 3">
                            </button>
                            <button type="button" data-bs-target="#aboutUsCarousel" data-bs-slide-to="3" aria-current="true" aria-label="Slide 4">
                            </button>
                            <button type="button" data-bs-target="#aboutUsCarousel" data-bs-slide-to="4" aria-current="true" aria-label="Slide 5">
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
                        <button class="carousel-control-prev" type="button" data-bs-target="#aboutUsCarousel" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Prev</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#aboutUsCarousel" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row drivers">
                <h2>DRIVERS:</h2>
                <div class="col-sm-6 matt">
                    <h4>Matt Bean</h4>
                    <h5>Co-Founder // Driver</h5>
                    <img src="Images/MattPic.jpg" alt="Matt Bean with Bob Pockrass" class="profile-pic"/>
                    <ul class="MattBullets">
                        <li>Born // Tulsa, OK</li>
                        <li>Residence // Tulsa, OK</li>
                        <li>Twitter // <a href="https://twitter.com/Bean3O" target="_blank">bean3O</a></li>
                        <li>Twitch // <a href="https://www.twitch.tv/bean3o" target="_blank">Bean3O</a></li>
                    </ul>
                    <p class="MattBio">
                        Matt Bean is a simracer who does things like mi proin sed libero. Turpis tincidunt id aliquet risus feugiat in ante metus dictum. Magna fermentum iaculis eu non diam. 
                        Gravida dictum fusce ut placerat orci nulla pellentesque. Curabitur vitae nunc sed velit dignissim sodales ut eu sem. Habitasse platea dictumst vestibulum rhoncus.
                    </p>
                    <br />
                    <p class="MattBio">Accomplishments include:</p>
                    <ul class="accomplishments">
                        <li>2019 NiS Open Daytona 500 winner</li>
                        <li>2020 Season 4 IndyCar Time Trial Championship – 2nd place</li>
                        <li>P6 finish – 2022 Daytona 24</li>
                    </ul>
                </div>
                <div class="col-sm-6 aaron">
                    <h4>Aaron Moss</h4>
                    <h5>Co-Founder // Driver</h5>
                    <img src="Images/AaronPic.jpg" alt="Aaron Moss" class="profile-pic"/>
                    <ul class="AaronBullets">
                        <li>Born // Shreveport, LA, USA</li>
                        <li>Residence // Broken Arrow, OK, USA</li>
                        <li>Twitter // <a href="https://twitter.com/Aaron_Moss_" target="_blank">Aaron_Moss_</a></li>
                        <li>Twitch // <a href="https://www.twitch.tv/mossinatorr" target="_blank">Mossinatorr</a></li>
                    </ul>
                    <p class="AaronBio">
                        Up and coming driver Aaron Moss joined iRacing in early 2020 and has a passion for all things motorsport. You can find him racing in all the different types of series in 
                        iRacing including NASCAR, dirt sprint cars, open wheel, and GT3 as well. Aaron regularly streams races on his Twitch channel.
                    </p>
                    <br />
                    <p class="AaronBio">Accomplishments include:</p>
                    <ul class="accomplishments">
                        <li>P6 finish – 2022 Daytona 24</li>
                    </ul>
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
