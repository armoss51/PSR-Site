<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PSR_Site.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News Article 1</title>
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
                    <article id="article-1">
                        <h3>News Article 1</h3>
                        <p><time class="entry-date" date="2022-03-13">March 13, 2022</time></p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Praesent elementum facilisis leo vel fringilla est ullamcorper eget. Tempor nec feugiat nisl pretium fusce id velit ut tortor. Ultrices eros in cursus turpis massa tincidunt dui. Senectus et netus et malesuada. Tristique senectus et netus et. Cras pulvinar mattis nunc sed blandit libero volutpat sed. Facilisi cras fermentum odio eu feugiat pretium nibh ipsum consequat. Gravida neque convallis a cras semper auctor. Neque sodales ut etiam sit amet nisl. Eu lobortis elementum nibh tellus molestie nunc non blandit. Bibendum neque egestas congue quisque egestas diam in arcu cursus. Viverra maecenas accumsan lacus vel facilisis volutpat. Leo duis ut diam quam. Nulla facilisi morbi tempus iaculis urna id. Nulla porttitor massa id neque aliquam vestibulum. Porta nibh venenatis cras sed felis eget velit aliquet. Orci dapibus ultrices in iaculis nunc sed augue lacus viverra. At urna condimentum mattis pellentesque id nibh tortor id aliquet. Aliquam sem et tortor consequat id porta.</p>
                        <p>Sapien eget mi proin sed libero. Pretium nibh ipsum consequat nisl vel pretium. Ullamcorper malesuada proin libero nunc consequat. Mattis molestie a iaculis at erat. Tellus in hac habitasse platea dictumst vestibulum rhoncus est. Pharetra sit amet aliquam id diam. Sed viverra ipsum nunc aliquet bibendum. Velit ut tortor pretium viverra suspendisse potenti. Congue quisque egestas diam in arcu cursus euismod. Quam viverra orci sagittis eu volutpat odio facilisis. Ac turpis egestas sed tempus urna et. Nisl nunc mi ipsum faucibus vitae aliquet nec. Magna fermentum iaculis eu non diam phasellus. Sed turpis tincidunt id aliquet risus feugiat in ante.</p>
                        <p>Lacus vestibulum sed arcu non odio euismod lacinia. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Sed tempus urna et pharetra pharetra massa massa ultricies mi. Ut lectus arcu bibendum at. Vel eros donec ac odio tempor. Pulvinar sapien et ligula ullamcorper malesuada proin libero. Dui sapien eget mi proin sed libero enim sed faucibus. Ultricies tristique nulla aliquet enim tortor. Neque sodales ut etiam sit. Amet nulla facilisi morbi tempus iaculis urna. Quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Cras tincidunt lobortis feugiat vivamus at augue. Elit scelerisque mauris pellentesque pulvinar pellentesque. Id porta nibh venenatis cras sed felis. Pellentesque adipiscing commodo elit at imperdiet dui. Ultrices eros in cursus turpis massa tincidunt. Augue interdum velit euismod in pellentesque massa placerat duis.</p>
                    </article>
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
