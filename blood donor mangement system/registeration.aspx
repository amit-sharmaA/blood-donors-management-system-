<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registeration.aspx.cs" Inherits="registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         body {
            background-image: url('img/222.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            font-family: Arial, sans-serif; /* Optional for styling consistency */
        }
        .auto-style2 {
            left: -5px;
            top: 2px;
        }
        .auto-style3 {
            width: 894px;
        }
        .auto-style4 {
            width: 894px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
            text-align: left;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 894px;
            height: 30px;
        }
        .auto-style8 {
            text-align: left;
            height: 30px;
            width: 146px;
        }
        .auto-style9 {
            width: 894px;
            text-align: left;
        }
        .auto-style10 {
            width: 894px;
            height: 30px;
            text-align: left;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            width: 894px;
            text-align: left;
            height: 32px;
        }
        .auto-style13 {
            text-align: left;
            height: 32px;
            width: 146px;
        }
        .auto-style14 {
            height: 33px;
        }
        .auto-style15 {
            width: 894px;
            text-align: left;
            height: 33px;
        }
        .auto-style16 {
            text-align: left;
            height: 33px;
            width: 146px;
        }
        .auto-style17 {
            height: 39px;
        }
        .auto-style18 {
            width: 894px;
            text-align: left;
            height: 39px;
        }
        .auto-style19 {
            text-align: left;
            height: 39px;
            width: 146px;
        }
        .auto-style20 {
            height: 35px;
        }
        .auto-style21 {
            width: 894px;
            text-align: left;
            height: 35px;
        }
        .auto-style22 {
            text-align: left;
            height: 35px;
            width: 146px;
        }
        .auto-style24 {
            height: 20px;
            width: 146px;
        }
        .auto-style25 {
            text-align: left;
            width: 146px;
        }
        .auto-style26 {
            height: 23px;
        }
        .auto-style27 {
            width: 894px;
            text-align: left;
            height: 23px;
        }
        .auto-style28 {
            text-align: left;
            width: 146px;
            height: 23px;
        }
        .auto-style30 {
            width: 894px;
            height: 50px;
            text-align: left;
        }
        .auto-style31 {
            height: 50px;
        }
        .auto-style32 {
            text-align: left;
            height: 50px;
            width: 146px;
        }
        .auto-style33 {
            height: 53px;
        }
        .auto-style34 {
            width: 894px;
            text-align: left;
            height: 53px;
        }
        .auto-style35 {
            text-align: center;
            height: 56px;
            width: 146px;
        }
        .btn-success {
            text-align: center;
            display: inline-block; /* Ensure the button stays inline */
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="padding100" dir="ltr"> <!-- Change dir="rtl" to dir="ltr" -->
        <div class="container">
            <div id="loginbox" style="margin-top: 50px;">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                       New User Registration
                    </div>
                </div>

                <table style="background-color:#cef2ee" class="nav-justified" bgcolor="#FFD9BF">
                    <tr>
                        <td class="auto-style5"></td>
                        <td class="auto-style4"></td>
                        <td class="auto-style24"></td>
                    </tr>
                    <!-- Username Field -->
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style8">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:TextBox ID="Txt_UserName" runat="server" CssClass="form-group" Height="21px" Width="393px" required="required"></asp:TextBox>
                        </td>
                    </tr>
                    <!-- Gender Field -->
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style22">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Gender"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <asp:DropDownList ID="Drp_six" runat="server" Height="24px" Width="393px" CssClass="form-group">
                                <asp:ListItem>male</asp:ListItem>
                                <asp:ListItem>female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <!-- Blood Type Field -->
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style8">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Blood Type"></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:DropDownList ID="Drp_BloodType" runat="server" Height="34px" Width="393px" CssClass="form-group">
                                <asp:ListItem>O+</asp:ListItem>
                                <asp:ListItem>O-</asp:ListItem>
                                <asp:ListItem>A+</asp:ListItem>
                                <asp:ListItem>A-</asp:ListItem>
                                <asp:ListItem>B+</asp:ListItem>
                                <asp:ListItem>B-</asp:ListItem>
                                <asp:ListItem>AB+</asp:ListItem>
                                <asp:ListItem>AB-</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <!-- Age Field -->
                    <tr>
                        <td class="auto-style14"></td>
                        <td class="auto-style16">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Age"></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:TextBox ID="Txt_Age" runat="server" Width="393px" TextMode="Number" CssClass="form-group"></asp:TextBox>
                        </td>
                    </tr>
                    <!-- Mobile Number Field -->
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style25">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Mobile Number"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="Txt_firstphone" runat="server" Width="393px" TextMode="Number" required="required" CssClass="form-group"></asp:TextBox>
                        </td>
                    </tr>
                    <!-- Phone Number Field -->
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style25">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Phone Number"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="Txt_secondphone" runat="server" Width="393px" TextMode="Number" CssClass="form-group"></asp:TextBox>
                        </td>
                    </tr>
                    <!-- Contact Time Field -->
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style13">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Contact Time"></asp:Label>
                        </td>
                        <td class="auto-style12" width="393px">
                            <asp:RadioButton ID="btn_night" runat="server" GroupName="Time" Text="11:00 AM" />
                            <asp:RadioButton ID="btn_goodmorning" runat="server" GroupName="Time" Text="9:00 AM" />
                            <asp:RadioButton ID="btn_alltime" runat="server" GroupName="Time" Text="24 Hours" Checked="True" />
                        </td>
                    </tr>
                    <!-- Address Field -->
                    <tr>
                        <td class="auto-style17"></td>
                        <td class="auto-style19">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Address"></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="Txt_Address" runat="server" Width="393px" TextMode="MultiLine" Rows="5" CssClass="form-group"></asp:TextBox>
                        </td>
                    </tr>
                    <!-- Email Address Field -->
                    <tr>
                        <td class="auto-style26"></td>
                        <td class="auto-style28">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Email Address"></asp:Label>
                        </td>
                        <td class="auto-style27">
                            <asp:TextBox ID="Txt_Email" runat="server" Width="393px" CssClass="form-group" required="required" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <!-- Register Button -->
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" CssClass="btn btn-success" Width="100%" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
