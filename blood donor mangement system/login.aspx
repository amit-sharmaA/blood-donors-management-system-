<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            background-image: url('img/222.jpg'); /* Use the cleaned image */
            background-size: cover; /* Ensure the image covers the entire background */
            background-position: center; /* Center the image */
            background-attachment: fixed; /* Keep the background fixed */
            background-repeat: no-repeat; /* Prevent repeating */
            filter: none; /* Ensure no blur filter is applied */
        }

        .auto-style2 {
            font-size: large;
            text-align: left;
            color: #333;
        }

        .auto-style3 {
            height: 46px;
        }

        .panel {
            border-radius: 8px;
            border: 1px solid #ccc;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            padding: 15px; /* Add padding for better spacing */
        }

        .panel-heading-custom {
            background-color: #007bff;
            color: white;
            text-align: left;
            font-size: 20px;
            padding: 10px 15px;
        }

        .form-control {
            border-radius: 6px;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
            width: 100%;
            text-align: center; /* Center text inside the button */
            display: flex; /* Ensure button behaves flexibly */
            justify-content: center; /* Horizontally center content */
            align-items: center; /* Vertically center content */
        }

        .btn-success:hover {
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
    <div class="padding100" dir="ltr">
        <div class="container2">
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        User Login
                    </div>
                    <div class="panel-body" style="padding-top: 30px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginEmail" ErrorMessage="Please enter your email*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <div id="loginform" class="form-horizontal" role="form">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox runat="server" ID="txtLoginEmail" CssClass="form-control" placeholder="Enter Email" />
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password" />
                            </div>
                            <div style="margin-top: 10px" class="form-group">
                                <div class="col-sm-12 controls">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="auto-style3">
                                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                                                <br /><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click1" />
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:Label ID="lblLog" runat="server" ForeColor="#CC0000"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="padding-top: 15px; font-size: large" class="text-left">
                                        <span class="auto-style2">Don't have an account? </span><a class="auto-style2" href="registeration.aspx" Font-Size="large">Register as a new donor</a> / <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgetpassword.aspx" Font-Size="Large">Forgot Password?</asp:HyperLink>
                                        <br /><br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="signupbox" style="display: none; margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        Sign Up
                    </div>
                    <div class="panel-body">
                        <div id="signupform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="email" class="col-md-3 control-label">Email</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="firstname" class="col-md-3 control-label">First Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">Password</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-offset-3 col-md-9">
                                    <button id="btn-signup" type="button" class="btn btn-info">Sign Up</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>