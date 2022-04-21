﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PSR_Site.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
            <div class="row">
                <div class="col-sm-4">
                    <a href="Home.aspx" class="navbar-brand">
                        <img src="Images/PSRlogo.png" alt="PSR Logo" class="headerLogo" />
                    </a>
                </div>
                <div class="col-sm-8 header-nav">
                    <nav class="navbar navbar-expand-sm navbar-dark bg-black">
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
                                <li class="nav-item"><a href="Login.aspx" class="nav-link">LOGIN</a></li>
                                <li class="nav-item"><a href="Admin.aspx" class="nav-link">ADMIN</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-sm-12 jumbotron application">
                    <h3>Login</h3>
                </div>
                <div class="row">
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4 application">
                        <asp:TextBox ID="LoginEmail" runat="server" placeholder="Email" class="mt-5"></asp:TextBox>
                    </div>
                    <div class="col-sm-4 AppValid">
                        <asp:RequiredFieldValidator ID="rfvLoginEmail" runat="server" ErrorMessage="* required" ControlToValidate="LoginEmail" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" class="mt-5"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regxLoginEmail" runat="server" ErrorMessage="* please enter valid email" ControlToValidate="LoginEmail" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" class="mt-5"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4 application">
                        <asp:TextBox ID="LoginPassword" runat="server" placeholder="Password" class="mt-2" type="password"></asp:TextBox>
                    </div>
                    <div class="col-sm-4 AppValid">
                        <asp:RequiredFieldValidator ID="rfvLoginPassword" runat="server" ErrorMessage="* required" ControlToValidate="LoginPassword" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" class="mt-3"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="row mt-3">
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4 app-buttons">
                        <asp:CheckBox ID="cbRememberMe" runat="server" Text="Remember Me"/>
                    </div>
                    <div class="col-sm-4">

                    </div>
                </div>
                <br />
                <div class="row mt-3">
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4 app-buttons">
                        <asp:Button ID="btnApply" runat="server" Text="Login" OnClick="btnApply_Click" class="btn-close-white" />
                        <asp:Button ID="btnLoginClear" runat="server" Text="Clear" class="btn-close-white" CausesValidation="False" OnClick="btnLoginClear_Click"/>
                    </div>
                    <div class="col-sm-4">

                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <asp:Label ID="lblLoginMessage" runat="server" Text=""></asp:Label>
                    </div>                    
                </div>
            </div>
            <%-- <div class="row">
                <div class="col-sm-12 login">
                    <h3>Login</h3>
                    <asp:TextBox ID="LoginEmail" runat="server" placeholder="Email" class="mt-5"></asp:TextBox>
                    <asp:TextBox ID="LoginPassword" runat="server" placeholder="Password" class="mt-2"></asp:TextBox>
                    <br />
                    <asp:CheckBox ID="cbRememberMe" runat="server" Text="Remember Me"/>
                    <br />
                    <asp:Button ID="btnApply" runat="server" Text="Login" OnClick="btnApply_Click" class="btn-close-white" />
                    <asp:Button ID="btnLoginClear" runat="server" Text="Clear" class="btn-close-white mt-2"/>
                    <asp:Label ID="lblLoginMessage" runat="server" Text=""></asp:Label>
                </div>
            </div>--%>
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
