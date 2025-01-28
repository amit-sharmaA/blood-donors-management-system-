<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About initiative.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            background-image: url('/221.jpg'); /* Update with the actual background image path */
            background-size: cover;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 95%; /* Set the container width to 100% */
            padding: 0; /* Remove any padding */
            margin: 0; /* Remove any margins */
            max-width: 95%; /* Ensure the panel spans the full width */
            width: 100%; /* Set width to 100% for full coverage */
        }
        .panel-custom {
            background: rgba(255, 255, 255, 0.9); /* Light background color */
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }
        .panel-custom h3 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
            text-align: center; /* Center the title */
        }
        .panel-custom p {
            background-color: #f4f4f4; /* Set the background color for paragraphs */
            padding: 10px;
            border-radius: 5px;
        }
        .content-section {
            margin-top: 30px;
        }
        .image-side {
            margin: 15px 0;
            text-align: right; /* Align images to the right */
        }
        .image-side img {
            max-width: 100%;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .list-style {
            padding-left: 20px;
            text-align: left;
            font-size: 16px;
            color: #555;
        }
        .list-style li {
            margin-bottom: 10px;
        }
        .section-title {
            color: #d9534f;
            font-size: 20px;
            font-weight: bold;
            text-decoration: underline;
            margin-bottom: 15px;
        }
        /* Responsive styling */
        .row {
            margin-bottom: 30px;
        }
        @media (max-width: 768px) {
            .panel-custom {
                padding: 20px;
            }
            .section-title {
                font-size: 18px;
            }
            .list-style {
                font-size: 14px;
            }
            .PanelStyle {
          padding: 12px;
            }
            .Content2 {
                margin-top: 100px;
            }
            .auto-style9 {
        font-size: x-large;
        color: rgb(204, 0, 0);
        text-align: center;

    }
    .auto-style10 {
        font-size: medium;
        color: rgb(128, 0, 0);
       
    }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" BorderColor="Maroon" BorderStyle="Double" BorderWidth="2px" CssClass="PanelStyle">
        <h2 class="auto-style9" style="margin: 50px 0px 2px; padding: 0px 0px 5px 20px; font-weight: bold; background: url('http://www.blooddonorsbd.com/../images/img-thing.jpeg') no-repeat left top; font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Why Donate Blood?</h2>
        <h4 style="margin: 5px 0px; font-weight: bold; font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; padding:0px;"><span id="article_content">Donating Blood Saves Lives</span></h4>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            <span style="color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 204); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Consider the individuals in the hospital needing a blood transfusion. A gunshot or accident victim. Any person needing an ample supply of blood while in surgery. These people need us, and what they ask for is very little. Just imagine what a few pints of blood can do and how many lives it can save.</span></p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            &nbsp;</p>
        <h4 style="padding: 0px; margin: 5px 0px; font-weight: bold; font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;"><span id="article_content1">Donating Blood Increases Your Own Awareness of Cholesterol Levels</span></h4>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            <span id="article_content2">One of the added benefits of donating blood is having access to cholesterol levels. Results are readily available to you online so you can gage what you need to change in your diet, or you may just want to maintain healthy levels.</span></p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            &nbsp;</p>
        <h4 style="margin: 5px 0px; padding: 0px; font-weight: bold; font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">The Health Benefits from Donating Blood</h4>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            Donating blood has many health benefits. Not only will you help someone in need of blood, but you will also help optimize your health and wellness. Here are the top three health benefits from donating blood.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            &nbsp;</p>
        <h4 class="auto-style7" style="margin: 5px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">1.<span>&nbsp;</span><em>Protect Your Heart by Reducing Oxidative Stress</em></h4>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            Iron in your blood can oxidize resulting in damage to your cells and tissues. The increase in oxidative stress is most dangerous to your cardiovascular system.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            According to a new study published by the American Medical Association, giving blood every six months led to fewer heart attacks and strokes in test participants ages 43 to 61.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            Excessive iron is thought to contribute to heart disease, especially at its early stages. Donating blood on a regular basis reduces the iron stores in the body and this study supports the theory that reducing iron appears to preserve cardiovascular health.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            A second study of 2,682 men in Finland, reported in the<span>&nbsp;</span><em>American Journal of Epidemiology</em>, found that men who donated blood at least once a year had an 88 percent lower risk of heart attacks than non-donors.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            This same group of researchers published a follow-up study and found that men who donated blood were less likely than non-donors to show any signs of cardiovascular disease.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            &nbsp;</p>
        <h4 class="auto-style7" style="margin: 5px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">2.<span>&nbsp;</span><em>Protect Against Developing Cancer</em></h4>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            Give blood to help lower your risk of cancer. According to the Miller-Keystone Blood Center, consistent blood donation is associated with lowered risks for cancers including liver, lung, colon, stomach and throat cancers.2</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            Risk levels dropped in correlation with how often participants donated blood. The association between lower cancer risk and donating blood might also stem from reducing oxidative stress. Free radical compounds can damage your DNA. Damaged genetic material is the hallmark of all cancers.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            &nbsp;</p>
        <h4 class="auto-style7" style="margin: 5px 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">3.<span>&nbsp;</span><em>Free Blood Analysis</em></h4>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            After donating, your blood will be tested for syphilis, HIV (the virus that causes AIDS), hepatitis and other factors. The center will notify you if tests show you may be unhealthy. Your blood will not be used if it could make someone sick.</p>
        <p class="auto-style7" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            &nbsp;</p>
    </asp:Panel>

    <div class="container content-section">
        <h1 class="text-center">About Us</h1>
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="panel panel-custom">
                    <p class="section-title">Project Objectives</p>
                    <div class="d-flex">
                        <div class="content-side">
                            <ul class="list-style">
                                <li>To become the primary reference for supporting hospitals and families in the field of blood donation.</li>
                                <li>To create an easy-to-use platform where hospitals can access blood donors quickly.</li>
                                <li>To raise awareness about the importance of blood donation in the community.</li>
                                <li>To ensure that hospitals never face shortages of life-saving blood products.</li>
                                <li>To offer an efficient system for blood donors and hospitals to communicate in times of need.</li>
                                <li>To provide resources and support to families who may need blood donations urgently.</li>
                                <li>To provide transparency in the donation process by tracking blood donations.</li>
                                <li>To engage with local communities to promote and encourage regular blood donations.</li>
                                <li>To partner with medical organizations to ensure safe and regulated blood transfusions.</li>
                                <li>To develop mobile app-based access for blood donors to ensure wide-reaching access and participation.</li>
                            </ul>
                        </div>
                        <div class="image-side">
                            <img src="img/about-image1.jpg" alt="Blood Donation Support at a hospital">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-sm-12">
                <div class="panel panel-custom">
                    <p class="section-title">Project Concept</p>
                    <div class="d-flex">
                        <div class="content-side">
                            <ul class="list-style">
                                <li>To find blood donors for those in need by contacting a fixed list of donor numbers.</li>
                                <li>If specific blood types are unavailable, searches can be conducted in hospitals for nearby donors.</li>
                                <li>To store and manage blood type inventories across multiple hospitals through a centralized database.</li>
                                <li>To allow donors to register their information and make themselves available for donation drives.</li>
                                <li>To facilitate communication between hospitals, donors, and blood donation organizations to coordinate efforts.</li>
                                <li>To create partnerships with blood banks and medical institutions to ensure safe, regulated blood usage.</li>
                                <li>To build a database of active blood donors, including their blood type, donation history, and availability.</li>
                                <li>To maintain accurate, real-time records for emergency needs, ensuring no delay in blood supply.</li>
                                <li>To provide a seamless donation process, from registration to blood collection and distribution.</li>
                                <li>To leverage technology to simplify and streamline the donation process, ensuring efficiency and reach.</li>
                            </ul>
                        </div>
                        <div class="image-side">
                            <img src="img/ProjectObjectives.jpg" alt="Donor Database">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-custom">
                    <p class="section-title">Features of the Current Project</p>
                    <div class="d-flex">
                        <div class="content-side">
                            <ul class="list-style">
                                <li>Maintaining a donor database on a website that hospitals can access instantly.</li>
                                <li>Collaborating with charitable organizations to promote regular blood donation events.</li>
                                <li>Organizing periodic donation campaigns to ensure a consistent blood supply.</li>
                                <li>Establishing the largest centralized blood donation database to streamline efforts across different regions.</li>
                                <li>Providing real-time updates about donation needs, blood types, and campaign progress.</li>
                                <li>Implementing a tracking system that monitors each donation, ensuring all blood products are safe and used efficiently.</li>
                                <li>Providing educational resources to both donors and recipients about blood donation processes and safety protocols.</li>
                                <li>Offering a platform where donors can check their donation history and receive reminders for future donations.</li>
                                <li>Facilitating emergency blood requests through a rapid response system that notifies nearby donors.</li>
                                <li>Partnering with medical organizations to provide safe and regulated blood transfusions to patients in need.</li>
                            </ul>
                        </div>
                        <div class="image-side">
                            <img src="img/about-image3.jpg" alt="Donation Campaign">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
