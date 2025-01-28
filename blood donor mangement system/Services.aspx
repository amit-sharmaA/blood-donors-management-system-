<%@ Page Title="Blood Donation Services" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .intro-section {
            background-color: #b71c1c;
            color: white;
            height: 50vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin-top:60px;
        }
        .intro-section img {
            width: 100px;
            margin-bottom: 20px;
        }
        .intro-section h1 {
            font-size: 24px;
        }
        .carousel-section {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            overflow-x: auto;
            background-color: #f9f9f9;
        }
        .carousel-card {
            flex: 0 0 auto;
            width: 300px;
            margin: 0 10px;
            text-align: center;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
        }
        .carousel-card img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }
        .carousel-card p {
            margin-top: 15px;
            font-size: 16px;
            color: #333;
        }
        .continue-button {
            background-color: #b71c1c;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin: 20px auto;
            display: block;
        }
        .continue-button:hover {
            background-color: #d32f2f;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="intro-section">
        <img src="./img/service.jpg" alt="Blood Donation Icon" />
        <h1>Blood Donation</h1>
    </div>

    <div class="carousel-section">
        <div class="carousel-card">
            <img src="./img/ser1.jpg" alt="Doctors Consulting" />
            <p>Every day more than 12,000 people in India die due to the lack of donated blood.</p>
        </div>
        <div class="carousel-card">
            <img src="./img/ser2.jpg" alt="Blood Regeneration" />
            <p>Your body will regenerate blood in just a few weeks.</p>
        </div>
        <div class="carousel-card">
            <img src="./img/ser3.jpg" alt="Save Lives" />
            <p>Your donated blood can save a life and be part of the chain of life.</p>
        </div>
    </div>

    <button class="continue-button" onclick="window.location.href='NextPage.aspx'">Continue</button>
</asp:Content>
