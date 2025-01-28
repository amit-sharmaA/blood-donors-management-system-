<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registeration.aspx.cs" Inherits="registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  <style type="text/css">
        body {
            background-color:yellow;
            margin: 0; /* Ensure there's no default body margin */


        }

        .container1 {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px; /* Add some padding for better spacing */
            box-sizing: border-box; /* Include padding in width/height calculation */
            margin-bottom: 20px;
            margin-top: 70px;
            background-image: url("./img/regC.jpg");
            background-size: cover; /* Make the image cover the entire container */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            min-height: calc(100vh - 90px); /* Ensure it covers the viewport minus margins */
        }

        .registration-container {
            display: flex;
            background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            max-width: 900px;
            width: 100%; /* Adjust width to avoid overflow */
            margin: 0 auto;
        }

        .panel-heading-custom {
            background-color: #007bff;
            color: white;
            text-align: left;
            font-size: 20px;
            padding: 10px 15px;
        }

        .image-section {
            flex: 1;
            background: url('./img/reg.jpg') no-repeat center center;
            background-size: cover;
        }

        .form-section {
            flex:1;
            padding: 30px;
        }

        .form-heading {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
        }

        .form-control {
            border-radius: 6px;
            margin-bottom: 20px;
        }

        .btn-submit {
            background-color: #28a745;
            border-color: #28a745;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            border-radius: 6px;
            text-transform: uppercase;
        }

        .btn-submit:hover {
            background-color: #218838;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container1">
        <div class="registration-container">
            <!-- Left Image Section -->
            <div class="image-section"></div>

            <!-- Right Form Section -->
            <div class="form-section">
                <h2 class="form-heading">Blood Donor Registration</h2>
                <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="False" ForeColor="#CC0000"></asp:Label>
                <div id="registrationform" class="form-horizontal" role="form">
                    <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                    <asp:TextBox ID="Txt_FullName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>

                    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                    <asp:DropDownList ID="Drp_Gender" runat="server" CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="Label3" runat="server" Text="Date of Birth"></asp:Label>
                    <asp:TextBox ID="Txt_DOB" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="Label4" runat="server" Text="Weight (in Kg)"></asp:Label>
                    <asp:TextBox ID="Txt_Weight" runat="server" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="Label5" runat="server" Text="Blood Group"></asp:Label>
                    <asp:DropDownList ID="Drp_BloodGroup" runat="server" CssClass="form-control">
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
                    <asp:TextBox ID="Txt_Mobile" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                    <asp:TextBox ID="Txt_Address" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="Label7" runat="server" Text="Email Address"></asp:Label>
                    <asp:TextBox ID="Txt_Email" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="Txt_Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="Txt_ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                    <asp:Label ID="Label9" runat="server" Text="Previous Donations"></asp:Label>
                    <asp:DropDownList ID="Drp_PreviousDonations" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:DropDownList>

                    <asp:Button ID="Btn_Submit" runat="server" Text="Register" CssClass="btn-submit" OnClick="Btn_Submit_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
