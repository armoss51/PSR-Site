<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="PSR_Site.Subscribe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Apply</title>
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
                <div class="col-sm-4 AppMessageBox">
                    <asp:Label ID="lblAppMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-sm-4 application">
                    <h3>Interested in joining our team?</h3>
                    <p>Fill out our application!</p>
                    <asp:TextBox ID="ApplyName" runat="server" placeholder="Name" class="mt-5"></asp:TextBox>
                    <asp:TextBox ID="ApplyEmail" runat="server" placeholder="Email" class="mt-2"></asp:TextBox>
                    <asp:TextBox ID="ApplyIracingName" runat="server" placeholder="iRacing Name" class="mt-2"></asp:TextBox>
                    <asp:TextBox ID="ApplyDiscordName" runat="server" placeholder="Discord name" class="mt-2"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblApplySelectRegion" runat="server" Text="Select Your Region:"></asp:Label>
                    <asp:RadioButtonList ID="rblApplyRegion" runat="server" DataSourceID="sdsApplyRegion" DataTextField="RegionName" DataValueField="RegionID"></asp:RadioButtonList>
                    <asp:SqlDataSource ID="sdsApplyRegion" runat="server" ConnectionString="<%$ ConnectionStrings:S22_ksarmossConnectionString %>" SelectCommand="spGetRegion" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    <asp:Label ID="lblapplySelectCar" runat="server" Text="Select Your Primary Car Type:"></asp:Label>
                    <asp:RadioButtonList ID="rblApplyPrimaryCar" runat="server" DataSourceID="sdsApplyCar" DataTextField="CarName" DataValueField="CarID"></asp:RadioButtonList>
                    <asp:SqlDataSource ID="sdsApplyCar" runat="server" ConnectionString="<%$ ConnectionStrings:S22_ksarmossConnectionString %>" SelectCommand="spGetCar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="btnApply" runat="server" Text="Submit" OnClick="btnApply_Click" class="btn-close-white"/>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" class="btn-close-white mt-2" />
                </div>
                <div class="col-sm-4 AppValid">
                    <asp:RequiredFieldValidator ID="rfvApplyName" runat="server" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate="ApplyName" class="mt-5"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvApplyEmail" runat="server" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate="ApplyEmail" class="mt-3"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regxApplyEmail" runat="server" ErrorMessage="* Please enter valid email" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate="ApplyEmail" class="mt-3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvApplyIracingName" runat="server" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate="ApplyIracingName" class="mt-3"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvApplyDiscordName" runat="server" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate ="ApplyDiscordName" class="mt-3"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvApplyRegion" runat="server" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate="rblApplyRegion" class="mt-5"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvApplyPrimaryCar" runat="server" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True" Font-Bold="True" Display="Dynamic" ControlToValidate="rblApplyPrimaryCar" ></asp:RequiredFieldValidator>
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
