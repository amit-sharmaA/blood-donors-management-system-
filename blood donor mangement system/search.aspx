<%@ Page Title="Search Donors" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .btn-center {
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            border-top-left-radius: 20px;
            border-top-right-radius: 10px;
        }

        .form-group label {
            font-weight: bold;
        }

        .mb-4 {
            margin-bottom: 1.5rem !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-danger text-white">
                        <h4 class="card-title mb-0 text-center">Search Blood Donors</h4>
                    </div>
                    <div class="card-body">
                        <!-- Filters -->
                        <div class="row mb-4">
                            <!-- Country Dropdown -->
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Country</label>
                                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                                        <asp:ListItem Text="-----Select-----" Value="Select" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- State Dropdown -->
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                        <asp:ListItem Text="-----Select-----" Value="Select" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- District Dropdown -->
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>District</label>
                                    <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select District" Value="" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- Blood Group -->
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Blood Group</label>
                                    <asp:DropDownList ID="ddlBloodGroup" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Blood Group" Value="" />
                                        <asp:ListItem Text="A+" Value="A+" />
                                        <asp:ListItem Text="A-" Value="A-" />
                                        <asp:ListItem Text="B+" Value="B+" />
                                        <asp:ListItem Text="B-" Value="B-" />
                                        <asp:ListItem Text="AB+" Value="AB+" />
                                        <asp:ListItem Text="AB-" Value="AB-" />
                                        <asp:ListItem Text="O+" Value="O+" />
                                        <asp:ListItem Text="O-" Value="O-" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <!-- Search Button -->
                        <div class="row mb-4">
                            <div class="col-md-12 btn-center">
                                <asp:Button ID="btnSearch" runat="server" Text="Search Donors" CssClass="btn btn-danger px-5 py-2" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                        <!-- Donor Results -->
                        <asp:Panel ID="pnlResults" runat="server" Visible="false">
                            <h5 class="mb-3 text-center">Available Donors</h5>
                            <asp:GridView ID="gvDonors" runat="server" CssClass="table table-striped text-center" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" />
                                    <asp:BoundField DataField="Age" HeaderText="Age" />
                                    <asp:BoundField DataField="City" HeaderText="City" />
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
