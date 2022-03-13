<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PSR_Site.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
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
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <a href="Home.aspx">
                        <img src="Images/PSRlogo.png" alt="PSR Logo" class="headerLogo" />
                    </a>
                </div>
                <div class="col-sm-8 header-nav">
                    <nav class="navbar-expand-sm">
                        <ul class="navbar-nav align-bottom">
                            <li class="nav-item"><a href="Home.aspx" class="nav-link">HOME</a></li>
                            <li class="nav-item"><a href="AboutUs.aspx" class="nav-link">ABOUT US</a></li>
                            <li class="nav-item"><a href="Gallery.aspx" class="nav-link">GALLERY</a></li>
                            <li class="nav-item"><a href="Apply.aspx" class="nav-link">APPLY</a></li>
                            <li class="nav-item"><a href="CreateAccount.aspx" class="nav-link">CREATE ACCOUNT</a></li>
                            <li class="nav-item"><a href="Login.aspx" class="nav-link">LOGIN</a></li>
                            <li class="nav-item"><a href="Admin.aspx" class="nav-link">ADMIN</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
