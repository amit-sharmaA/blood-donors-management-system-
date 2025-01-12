<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- Carousel -->
    <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active">
                <asp:Image ID="Image1" runat="server" ImageUrl="img/Blood_Donation-3.jpg" Width="50px" Height="50px" CssClass="img-circle" />
            </li>
            <li data-target="#carousel-example-generic" data-slide-to="1">
                <asp:Image ID="Image2" runat="server" ImageUrl="img/Blood_Donation-2.jpg" Width="50px" Height="50px" CssClass="img-circle" />
            </li>
            <li data-target="#carousel-example-generic" data-slide-to="2">
                <asp:Image ID="Image3" runat="server" ImageUrl="img/Blood_Donation-1.jpg" Width="50px" Height="50px" CssClass="img-circle" />
            </li>
        </ol>

        <!-- Carousel Slides -->
        <div class="carousel-inner">
            <div class="item active one">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Donate to Save <br /> <br /> <span class="yellow">Lives</span>
                        </h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-clear btn-sm btn-min-block " NavigateUrl="~/registeration.aspx">Register as New Donor</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>

            <div class="item two">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Every <b class="yellow">three minutes</b> there is a <b class="yellow">patient</b><br /><br />
                            <span class="span">in need of a blood transfusion</span>
                        </h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/bloodtype.aspx">Find Blood Type</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/Donar.aspx">Find a Donor</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>

            <div class="item three">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Why <b class="yellow">Donate</b>?
                        </h1><br/><br/><br/><br/><br/><br/>
                        <div class="">
                            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/FAQ.aspx">FAQ</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="#services">Why Donate?</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Carousel Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>

   <!-- Service Section -->
    <section id="services" class="padding100" style="background-color: #f8f9fa;">
    <div class="text-center" style="color: #333;">
        <h1 style="font-size: 36px; color: #d9534f; font-weight: bold;">Why <b class="yellow" style="color: #f39c12;">Donate?</b></h1><br />
        <p style="font-size: 18px; line-height: 1.6; color: #555;">
            Donating blood is a simple act that can save lives. Every day, countless people around the world
            need blood transfusions due to accidents, surgeries, or medical conditions. By donating blood,
            you have the power to make a significant difference in someone's life. Your one donation can help
            save the lives of three individuals, making it a truly impactful and selfless act of kindness.
        </p>
        <p style="font-size: 18px; line-height: 1.6; color: #555;">
            Donating blood is safe, quick, and easy. It only takes a few minutes, and it could be the key
            to saving someone's life. Your contribution can help ensure that hospitals and clinics have
            a steady supply of blood available for patients in need.
        </p>
        <p style="font-size: 18px; line-height: 1.6; color: #555;">
            If you are willing to donate, contact us at the number below to learn more about donation locations
            and guidelines.
        </p>
        <p style="font-size: 20px; font-weight: bold; color: #d9534f;">
            <b>Contact Us:</b> <span style="color: #f39c12;">+91-123-456-7890</span>
        </p>
    </div>
</section>

        <!-- New Content Section for "Why Donate" -->
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Your Blood Donation Can Save Lives</h2>
                <p>Each time you donate blood, you help save the lives of up to three people. Blood is a vital part of medical treatment and is used in surgeries, emergencies, and for patients undergoing cancer treatment.</p>
                <p>Donating blood is safe, simple, and can make a huge difference. Your donation has the potential to save someone’s life. Whether you are a first-time donor or a regular one, your contribution matters!</p>
                <p>If you are interested in donating, please don't hesitate to contact us. Together, we can help those in need!</p>
                <p><strong>Contact us at:</strong></p>
                <p>Phone: <a href="tel:+1234567890">+1234567890</a> | Email: <a href="mailto:donation@blooddrive.com">donation@blooddrive.com</a></p>
            </div>
        </div>
    </section>

    <!-- Products Section -->
    <section id="products" class="products-list padding100">
        <div class="container">
            <div class="row">
                <div class="section-title col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
                    <h2 class="animated wow fadeInLeft" data-wow-delay="0.4s">
                        Every unit of blood donated can save the lives of three people
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 animated wow fadeInUp" data-wow-delay="0.6s">
                    <div id="screens" class="owl-carousel">
                        <div><img src="img/s1.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s4.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s2.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s5.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s3.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s6.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s7.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s8.jpg" class="img-responsive" alt="screens"></div>
                        <div><img src="img/s9.jpg" class="img-responsive" alt="screens"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="download" class="padding100">
        <div class="container">
            <div class="row">
                <div class="section-title col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
                    <h2 class="animated wow fadeInLeft" data-wow-delay="0.4s">
                        Looking for a <span class="common">blood type or donor?</span>
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text-center">
                    <div class="download-wrap animated wow fadeInLeft" data-wow-delay="0.4s">
                        <a href="bloodtype.aspx" class="btn btn-download app wow fadeInUp" data-wow-delay="0.2s">
                            <span style="font-family: 'Monotype Koufi'; font-size: large">Find Blood Type</span>
                        </a>
                        <a href="Donar.aspx" class="btn btn-download window wow fadeInUp" data-wow-delay="0.2s">
                            Find a Donor
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
