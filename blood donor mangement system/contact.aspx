<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            padding: 0;
            background: #121212;
            color: white;
        }

        .contact-header {
            text-align: center;
            padding: 40px 20px 20px;
        }

        .contact-header h1 {
            font-size: 36px;
            margin: 0;
            color: #007bff;
        }

        .contact-header p {
            margin: 10px 0 0;
            font-size: 18px;
            color: #b3b3b3;
        }

        .contact-container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding: 50px;
            margin-top: 30px;
            gap: 30px;
        }

        .contact-info {
            flex: 1;
            max-width: 400px;
            padding: 20px;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        .contact-info h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #00bcd4;
        }

        .contact-info .icon {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .contact-info .icon img {
            width: 40px;
            height: 40px;
            margin-right: 15px;
        }

        .contact-info p {
            font-size: 16px;
            color: #d3d3d3;
        }

        .contact-form {
            flex: 2;
            background: white;
            color: black;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.4);
        }

        .contact-form h2 {
            margin-bottom: 25px;
            font-size: 28px;
            color: #007bff;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group input, 
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group textarea {
            resize: none;
            height: 120px;
        }

.form-group1 {
    background-color: #069494; /* Initial blue color */
    color: white; /* Text color */
    text-align: center;
    font: 100;
    padding: 12px 25px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}

.form-group1:hover {
    background-color: #057575; /* Darker shade of blue on hover */
    color: white; /* Change text color on hover (optional) */
}

    </style>

    <div class="contact-header">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you! Send us a message and we'll get back to you shortly.</p>
    </div>

    <div class="contact-container">
        <!-- Contact Information -->
        <div class="contact-info">
            <h2>Contact Information</h2>
            <div class="icon">
                <img src="img/Address.png" alt="Address">
                <p>4671 Sugar Camp Road, Owatonna, Minnesota, 55060
                <a href="https://www.google.com/maps/place/Vivekananda+Complex,+Khadki+Faliya,+Vankaneda,+Chalthan,+Gujarat+394305/@21.1549066,72.9572765,17z/data=!3m1!4b1!4m6!3m5!1s0x3be05b3a9a5fb151:0x6d3c2e2c105d5bbb!8m2!3d21.1549016!4d72.9598514!16s%2Fg%2F11f4lcf5tq?entry=ttu&g_ep=EgoyMDI1MDEyMi4wIKXMDSoASAFQAw%3D%3D" target="_blank" style="color: #00bcd4; text-decoration: none; font-size:16px;">
                    Map
                </a>
            </p>

            </div>
            <div class="icon">
                <img src="img/contactPhone.png" alt="Phone">
                <p>571-457-2321</p>
            </div>
            <div class="icon">
                <img src="img/email2.png" alt="Email">
                <p>ntamerrwael@mifano.ga</p>
            </div>
        </div>

        <!-- Contact Form -->
        <div class="contact-form">
            <h2>Send Message</h2>
            <div class="form-group">
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-group" Placeholder="Full Name" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-group" Placeholder="Email" TextMode="Email" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-group" TextMode="MultiLine" Placeholder="Type your Message..." Required="true"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnSubmit" runat="server" CssClass="form-group1" Text="Send" OnClick="btnSubmit_Click" Width="100%" />
            </div>
        </div>
    </div>
    </a>
</asp:Content>