<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About initiative.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            background-image: url('/221.jpg'); /* Update with the actual background image path */
            background-size: cover;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
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
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
