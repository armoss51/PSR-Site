<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DriverRegistration.aspx.cs" Inherits="PSR_Site.DriverRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DRIVER REGISTRATION</title>
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
                <div class="col-sm-4">
                    <asp:Label ID="lblRegisterMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-sm-4 register">
                    <h3>Driver Registration</h3>
                    <p>Your Member ID will be provided to you once your application has been accepted</p>
                    <asp:TextBox ID="RegisterName" runat="server" placeholder="Name" class="mt-5"></asp:TextBox>
                    <asp:TextBox ID="RegisterEmail" runat="server" placeholder="Email" class="mt-2"></asp:TextBox>
                    <asp:TextBox ID="RegisterCode" runat="server" placeholder="Member ID" class="mt-2"></asp:TextBox>
                    <asp:TextBox ID="RegisterPassword1" runat="server" placeholder="Password" class="mt-2"></asp:TextBox>
                    <asp:TextBox ID="RegisterPassword2" runat="server" placeholder="Re-Enter Password" class="mt-2"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblRegSelectRegion" runat="server" Text="Select Your Region:"></asp:Label>
                    <asp:RadioButtonList ID="rblRegisterRegion" runat="server" DataSourceID="sdsPSR" DataTextField="RegionName" DataValueField="RegionID"></asp:RadioButtonList>
                    <asp:SqlDataSource ID="sdsPSR" runat="server" ConnectionString="<%$ ConnectionStrings:S22_ksarmossConnectionString %>" SelectCommand="spGetRegion" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    <asp:Label ID="lblRegSelectCar" runat="server" Text="Select Your Primary Car Type:"></asp:Label>
                    <asp:RadioButtonList ID="rblRegisterPrimaryCar" runat="server" DataSourceID="sdsGetCar" DataTextField="CarName" DataValueField="CarID"></asp:RadioButtonList>
                    <asp:SqlDataSource ID="sdsGetCar" runat="server" ConnectionString="<%$ ConnectionStrings:S22_ksarmossConnectionString %>" SelectCommand="spGetCar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" class="btn-close-white"/>
                    <asp:Button ID="btnRegClear" runat="server" Text="Clear" class="btn-close-white mt-2"/>
                    <asp:Label ID="lblRegMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:RequiredFieldValidator ID="rfvRegisterName" runat="server" ErrorMessage="* required" ControlToValidate="RegisterName" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterEmail" runat="server" ErrorMessage="* required" ControlToValidate="RegisterEmail" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regxRegisterEmail" runat="server" ErrorMessage="* please enter valid email" ControlToValidate="RegisterEmail" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterCode" runat="server" ErrorMessage="* required" ControlToValidate="RegisterCode" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <%--Code validator of some sort here?--%>
                    <asp:RequiredFieldValidator ID="rfvRegisterPassword1" runat="server" ErrorMessage="* required" ControlToValidate="RegisterPassword1" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regxRegisterPassword" runat="server" ErrorMessage="Requirements: minimum of 8 characters, at least 1 upper and 1 lower case letter, at least 1 special character, at least 1 number" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate="RegisterPassword1" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="cvRegisterPassword2" runat="server" ErrorMessage="* passwords must match" ControlToValidate="RegisterPassword2" ControlToCompare="RegisterPassword1" ValueToCompare="RegisterPassword2" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterRegion" runat="server" ErrorMessage="* required" ControlToValidate="rblRegisterRegion" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvRegisterCar" runat="server" ErrorMessage="* required" ControlToValidate="rblRegisterPrimaryCar" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic"></asp:RequiredFieldValidator>
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
