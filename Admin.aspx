<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PSR_Site.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/PSR-CSS.css" rel="stylesheet" />
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
                                <li class="nav-item"><a href="Login.aspx" class="nav-link">LOGIN</a></li>
                                <li class="nav-item"><a href="Admin.aspx" class="nav-link">ADMIN</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <hr />
            <%-- Admin panel --%>
            <div class="row">
                <div class="col-sm-12 jumbotron application">
                    <h3>Admin Panel</h3>
                </div>
                <div class="row">
                    <%-- Add a region --%>
                    <div class="col-sm-4 application">

                        <asp:Label ID="lblAddRegion" runat="server" Text="Add Region:"></asp:Label>
                        <asp:TextBox ID="adminRegionName" runat="server" placeholder="Region Name" ValidationGroup="1" class="mt-2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddRegion" runat="server" ErrorMessage="* required" ControlToValidate="adminRegionName" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <br />
                        <div class="admin-buttons">
                            <asp:Button ID="btnAddRegion" runat="server" Text="Submit" OnClick="btnAddRegion_Click" class="btn-close-white" ValidationGroup="1" />
                            <asp:Button ID="btnRegionClear" runat="server" Text="Clear" class="btn-close-white" OnClick="btnRegionClear_Click" ValidationGroup="1" />
                        </div>
                        <asp:Label ID="lblRegionMessage" runat="server" Text=""></asp:Label>
                    </div>
                    <%-- Add a car --%>
                    <div class="col-sm-4 application">
                        <asp:Label ID="lblAddCar" runat="server" Text="Add Car:"></asp:Label>
                        <asp:TextBox ID="addCar" runat="server" placeholder="Car Name" ValidationGroup="2" class="mt-2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddCar" runat="server" ValidationGroup="2" ErrorMessage="* reuired" ControlToValidate="addCar" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <br />
                        <div class="admin-buttons">
                            <asp:Button ID="btnAddCar" runat="server" Text="Submit" OnClick="btnAddCar_Click" class="btn-close-white" ValidationGroup="2" />
                            <asp:Button ID="btnCarClear" runat="server" Text="Clear" class="btn-close-white" OnClick="btnCarClear_Click" ValidationGroup="2" />
                        </div>
                        <asp:Label ID="lblCarMessage" runat="server" Text=""></asp:Label>
                    </div>
                    <%-- Add an approved email --%>
                    <div class="col-sm-4 application">
                        <asp:Label ID="lblAddNewMember" runat="server" Text="Add New Member Email:"></asp:Label>
                        <asp:TextBox ID="tboxAddNewMember" runat="server" placeholder="Email" ValidationGroup="3" class="mt-2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddNewMember" runat="server" ValidationGroup="3" ErrorMessage="* required" ControlToValidate="tboxAddNewMember" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regxAddMember" runat="server" ValidationGroup="3" ErrorMessage="* Enter a valid email" ControlToValidate="tboxAddNewMember" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <div class="admin-buttons">
                            <asp:Button ID="btnAddNewMember" runat="server" ValidationGroup="3" Text="Submit" OnClick="btnAddNewMember_Click" class="btn-close-white" />
                            <asp:Button ID="btnNewMemberClear" runat="server" Text="Clear" class="btn-close-white" CausesValidation="False" OnClick="btnNewMemberClear_Click" />
                        </div>
                        <asp:Label ID="lblNewMemberMessage" runat="server" Text=""></asp:Label>
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
    </form>
</body>
</html>
