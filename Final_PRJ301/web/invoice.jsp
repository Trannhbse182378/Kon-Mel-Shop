<%-- 
    Document   : home
    Created on : Jan 21, 2024, 11:41:20 AM
    Author     : ptd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DTO.Order"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel ="icon" href ="image/tab.jpg" type ="image/x-icon">
        <title>Kon Mel - Gift & Cute Stuff</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
        <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>

            *{
                font-family: 'poppins',sans-serif;
            }

            div {
                overflow-x: hidden;  
            }
            .logo{
                margin: auto;
                height: 200px;
                width: 350px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 15px;
            }

            body {
                margin: 0;
                padding: 0;
                border: 10px solid #edc9a3;
                background-color: white;
            }


            .search-container{

                margin-top: 2rem;
                width: 300px;
                background: #fff;
                height: 30px;
                border-radius: 30px;
                padding: 10px 20px;
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer;
                transition: 0.8s;
                /*box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                inset -7px -7px 10px 0px rgba(0,0,0,.1),
               7px 7px 20px 0px rgba(0,0,0,.1),
               4px 4px 5px 0px rgba(0,0,0,.1);
               text-shadow:  0px 0px 6px rgba(255,255,255,.3),
                          -4px -4px 6px rgba(116, 125, 136, .2);
              text-shadow: 2px 2px 3px rgba(255,255,255,0.5);*/
                box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
                    -4px -4px 6px 0 rgba(116, 125, 136, .2),
                    inset -4px -4px 6px 0 rgba(255,255,255,.2),
                    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
            }

            .search-container:hover > .search-input{
                width: 400px;
            }

            .search-container .search-input {
                background: transparent;
                border: none;
                outline:none;
                width: 0px;
                font-weight: 500;
                font-size: 16px;
                transition: 0.8s;

            }

            .search-container .search-btn .fas{
                color: #5cbdbb;
            }

            @keyframes hoverShake {
                0% {
                    transform: skew(0deg,0deg);
                }
                25% {
                    transform: skew(5deg, 5deg);
                }
                75% {
                    transform: skew(-5deg, -5deg);
                }
                100% {
                    transform: skew(0deg,0deg);
                }
            }

            .search-container:hover{
                animation: hoverShake 0.15s linear 3;
            }

            .luxury-form-container {
                display: flex;
                /*justify-content: flex-end;*/
                margin-left: 20px;
            }

            .luxury-form {
                display: flex;
                justify-content: center;
            }

            .luxury-input {
                border-radius: 20px;
                padding: 15px;
                width: 250px;
                height: 35px;
                margin: 5px;
                border: 1px solid #ccc; /* Add a border for input fields */
                font-size: 15px;
                box-shadow: none;
                outline: none; /* Remove outline */
            }

            .luxury-button {
                border-radius: 200px;
                margin-top: 5.5px;
                background-color: #5e90c4;
                color: #fff;
                border: none;
                cursor: pointer;
                transition: background-color 0.3s ease;
                width: 90px;
                height: 35px;
                font-size: 13px;
            }

            .luxury-button:hover {
                background-color: #44709d; /* Adjust the hover background color */
            }

            *{
                font-family: 'poppins',sans-serif;
            }

            div {
                overflow-x: hidden;  
            }

            /* Custom checkbox */
            .custom-checkbox {
                position: relative;
            }
            .custom-checkbox input[type="checkbox"] {
                opacity: 0;
                position: absolute;
                margin: 5px 0 0 3px;
                z-index: 9;
            }
            .custom-checkbox label:before{
                width: 18px;
                height: 18px;
            }
            .custom-checkbox label:before {
                content: '';
                margin-right: 10px;
                display: inline-block;
                vertical-align: text-top;
                background: white;
                border: 1px solid #bbb;
                border-radius: 2px;
                box-sizing: border-box;
                z-index: 2;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                content: '';
                position: absolute;
                left: 6px;
                top: 3px;
                width: 6px;
                height: 11px;
                border: solid #000;
                border-width: 0 3px 3px 0;
                transform: inherit;
                z-index: 3;
                transform: rotateZ(45deg);
            }
            .custom-checkbox input[type="checkbox"]:checked + label:before {
                border-color: #03A9F4;
                background: #03A9F4;
            }
            .custom-checkbox input[type="checkbox"]:checked + label:after {
                border-color: #fff;
            }
            .custom-checkbox input[type="checkbox"]:disabled + label:before {
                color: #b8b8b8;
                cursor: auto;
                box-shadow: none;
                background: #ddd;
            }

            @keyframes hoverShake {
                0% {
                    transform: skew(0deg,0deg);
                }
                25% {
                    transform: skew(5deg, 5deg);
                }
                75% {
                    transform: skew(-5deg, -5deg);
                }
                100% {
                    transform: skew(0deg,0deg);
                }
            }

            .search-container:hover{
                animation: hoverShake 0.15s linear 3;
            }

            @keyframes slideIn {
                from {
                    opacity: 0;
                    transform: translateY(-50px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .form-group input[type="text"],
            .form-group input[type="email"],
            .form-group textarea {
                display: block;
                padding-top: 5px; /* Khoảng cách với phần tử trên */
                padding-bottom: 5px;
                width: 100%;
                padding: 10px;
                box-shadow: none;
                border: none;
                border-radius: 500px;
            }

            /* Add margin to top for the form */
            .form-container {
                margin-top: 50px;
            }

            /* Add animation for the background */
            @keyframes backgroundAnimation {
                from {
                    background-position: 0 0;
                }
                to {
                    background-position: 100% 0;
                }
            }

            main {
                padding: 20px;
            }
            .login-icon {
                position: absolute;
                top: 25.5px;
                right: 72px;
                z-index: 1;
            }

            .login-icon a {
                text-decoration: none;
                color: #666666; /* Subdued color for the link */
                font-size: 21px; /* Increase font size */
                transition: color 0.3s ease, transform 0.3s ease; /* Smooth transition on hover */  
            }

            .login-icon i {
                color: #564846;
                margin-right: 5px;
                font-size: 20px;
            }

            .login-icon a:hover {
                color: #c38c51; 
                text-decoration: none; /* Remove underline on hover */
            }
            @keyframes pulse {
                0% { transform: scale(1); }
                100% { transform: scale(1.1); }
            }

            .login_button a{
                text-decoration: none;
            }


            @keyframes pulse {
                from {
                    transform: scale(1);
                }
                to {
                    transform: scale(1.05);
                }
            }

            @keyframes slideInFromRight {
                0% {
                    transform: translateX(100%);
                    opacity: 0;
                }
                100% {
                    transform: translateX(0);
                    opacity: 1;
                }
            }

            .footer {
                width: 100%;
                margin-top: 40px;
                color: #564846;
                padding-top: 30px;
                display: flex;
                justify-content: space-around;
            }

            .logo{
                margin: auto;
                height: 190px;
                width: 330px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 15px;
                cursor: pointer;
            }

            .navbar{
                background-color: #edc9a3; 
                display: flex;
                justify-content: flex-start;
                margin: 10px 60px 5px 60px;
            }

            .navbar a{
                font-size: 100%;
                margin: 5.5px 0 9.5px 15px;
                color: #5a4d4b;
            }

            .navbar a:hover{
                color: #5e90c4;
                text-decoration: none;

            }

            .navbar > #homepage::after {
                content: "|"; /* Nội dung của pseudo-element */
                margin: 0 9px 0 20px; /* Khoảng cách giữa chữ và dấu gạch dọc */
                color: #5a4d4b; /* Màu của dấu gạch dọc */
            }

            .footer-content p{
                color: #6e615f;
                font-size: 13px;
            }

            .point {
                cursor: pointer; /* Hiển thị con trỏ pointer khi di chuột vào */
                transition: color 0.3s ease; /* Tạo hiệu ứng màu khi di chuột qua */
            }

            .point:hover {
                color:  #5e90c4; /* Thay đổi màu chữ thành đỏ khi di chuột vào */
            }


            .copyright{
                display: flex;
                justify-content: center;
                color: #6e615f;
                font-size: 15px;
                padding-top: 15px;
            }

            .social {
                display: flex;
                justify-content: center;
                background-color: #edc9a3;
            }

            .social p {
                display: inline-block;
                width: 35px;
                height: 35px;
                border-radius: 50%;
                background-color: white;/* Màu nền trắng */
                text-align: center;
                line-height: 35px;
                font-size: 15px;
                margin-top: 10px;
                margin-right: 10px; /* Điều chỉnh khoảng cách giữa các icon */
                text-decoration: none !important;
                color: #5e90c4;
                cursor: pointer; /* Hiển thị con trỏ pointer khi di chuột vào */
                transition: background-color 0.3s ease; /* Optional: add transition effect */
            } 

            .social p:hover {
                color: #e5bc90; 
                transform: scale(1.1);
                color: white;
                background-color: #5e90c4;
            }

            .form-group button {
                border-radius: 500px; /* Đặt bán kính bo góc */
                border: none; /* Thêm viền cho phần nhập liệu */
                background-color: #5e90c4;
                font-size: 12px;
            }

            .form-group button:hover{
                background-color: #44709d;
            }

            .form-group input {
                font-size: 12px;
                height: 43px;
                padding-top: 5px; /* Khoảng cách với phần tử trên */
                padding-bottom: 5px;
                transition: background-color 0.3s ease; 
            }

            .container-relative {
                position: fixed; /* Đảm bảo phần tử ở vị trí cố định trên màn hình */
                bottom: 2px; 
                right: 20px;
                z-index: 9998; /* Đảm bảo hiển thị trên các phần tử khác */
                padding: 10px;
            }

            .messenger-icon i {
                cursor: pointer;
                font-size: 40px;
                color: white;
                background-color: #5e90c4;
                padding: 11px 14px 10px 13px;
                border-radius: 50%;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                transition: transform 0.3s ease; /* Add transition for smooth scaling */
            }

            .messenger-icon i:hover {
                transform: scale(1.1); /* Scale the icon to 110% on hover */
            }

            .navbar-menu{
                margin: 25px 0 15px 0;
                display: flex;
                justify-content: center;
            }

            .navbar-menu a {
                color: #564846;
                text-decoration: none;
                margin: 0 30px; 
                font-weight: bold;
            }

            .navbar-menu a:hover {
                color: #bf8649; 
            }

            .stuff-type:hover {
                color: #bf8649;
            }

            .stuff-type a {
                margin-right: 5px; /* Điều chỉnh khoảng cách giữa chữ và icon */
            }

            .stuff-type i {
                transition: transform 0.3s ease; /* Điều chỉnh thời gian và kiểu chuyển động */
                font-size: 13px;
            }

            /* Quay icon mũi tên đi lên */
            .stuff-type:hover > i {
                transform: rotate(-180deg);
            }
            .stuff-dropdown {
                opacity: 0; /* Ẩn dropdown menu ban đầu */
                transition: opacity 0.3s ease, max-height 0.3s ease; /* Áp dụng transition cho hiệu ứng fade-in và kéo xuống từ từ */
                position: absolute;
                background-color: white;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                z-index: 1;
                border: 1px solid #6e615f;
                right: 20.80%;
                border-radius: 5px;
                max-height: 0; /* Đặt chiều cao tối đa ban đầu là 0 */
                overflow: hidden; /* Ẩn nội dung vượt ra khỏi dropdown menu */
            }

            .stuff-type:hover .stuff-dropdown {
                opacity: 1; /* Hiển thị dropdown menu khi hover */
                max-height: 200px; /* Đặt chiều cao tối đa khi hiển thị */
            }


            .stuff-dropdown a {
                margin: 5px 15px 5px 10px;
                display: block; /* Hiển thị các mục trong dropdown menu dạng block để chúng nằm dọc */
                padding: 5px 10px 5px 10px; /* Khoảng cách giữa các mục */
                text-decoration: none; /* Loại bỏ gạch chân */
                color: #6e615f; /* Màu chữ */
                border-bottom: 1px solid #6e615f; /* Đường kẻ phân cách */
                font-weight: 400;
            }

            .stuff-dropdown a:last-child {
                border-bottom: none; /* Loại bỏ đường kẻ phân cách ở mục cuối cùng */
            }

            .stuff-dropdown a:hover {
                color: #bf8649; /* Hiển thị màu nền khi hover vào mục */
            }

            .view-cart-icon {
                z-index: 1;
            }

            .view-cart-icon a {
                text-decoration: none;
                font-size: 20.7px; /* Increase font size */
                overflow: hidden; /* Loại bỏ thanh cuộn */
                cursor: pointer;
                color: #666666;
                transition: color 0.3s ease, transform 0.3s ease; /* Smooth transition on hover */  
            }

            .view-cart-icon i {
                color: #564846;
                margin-right: 4.5px;
                font-size: 18.9px;
            }

            .view-cart-icon a:hover {
                color: #c38c51; 
                text-decoration: none; 
            }

            /*DUOI NAVBAR*/
            .cart-list{
                margin: 30px 60px 30px 60px;

            }
            .cart-list table {
                width: 100%; /* Đảm bảo bảng chiếm toàn bộ chiều rộng */
            }

            .cart-list table th {
                text-align: center; /* Căn giữa nội dung trong các ô */
                vertical-align: middle; /* Căn giữa theo chiều dọc */
                padding: 30px;
                color: #564846;
                width: 100px; 
            }
            .cart-list table td{
                text-align: center; /* Căn giữa nội dung trong các ô */
                vertical-align: middle; /* Căn giữa theo chiều dọc */
                padding: 15px;
                color: #564846;
            }

            .cart-list table td{
                height: 50%;
            }

            /*CHINH NUT X*/
            .cart-list table .btn-primary {
                font-size: 15px;
                padding: 9px 17px 9px 17px;
                color: #fff;
                background-color: #5e90c4;
                border-color: #5e90c4;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
                box-shadow: none;
            }

            .cart-list table .btn-primary:hover {
                background-color: #45719e;
                border-color: #45719e;
                transform: translateY(-3px); /* Nảy lên 3px */
                box-shadow: 0 5px 8px rgba(0, 0, 0, 0.2); /* Shadow */
            }


            /*CHINH NUT - +*/
            .cart-list table .js-btn-minus,
            .cart-list table .js-btn-plus {
                font-size: 15px;  
                color: #5e90c4;  
                border-color: #5e90c4;  
                margin-top: 12px;
                outline: none !important;
                box-shadow: none !important;
            }

            .cart-list table .js-btn-minus:hover,
            .cart-list table .js-btn-plus:hover {
                background-color: #5e90c4; 
                border-color: #5e90c4; 
                color: white;
            }

            /*DUOI TABLE CART*/
            .container-table{
                margin: 0 60px 40px 60px;
            }

            /* Cập nhật CSS cho nút "Update Cart" và "Continue Shopping" */
            .below-table .btn-outline-primary {
                font-size: 15px;
                padding: 9px 17px;
                color: #5e90c4;
                border-color: #5e90c4;
                /*box-shadow: none;*/
            }

            .below-table .btn-outline-primary:hover {
                background-color: #5e90c4;
                color: white;
            }

            .below-table .btn-outline-primary:active {
                background-color: #45719e;
                border-color: #45719e;
                color: white;
            }

            /* Cập nhật CSS cho nút "Proceed To Checkout" và "Apply Coupon" */
            .below-table .btn-primary {
                font-size: 15px;
                padding: 9px 17px;
                color: #fff;
                background-color: #5e90c4;
                border-color: #5e90c4;
            }

            .below-table .btn-primary:hover {
                background-color: #45719e;
            }

            .below-table .btn-primary:active {
                background-color: #2e5078;
                border-color: #2e5078;
            }

            #apply{
                border-radius: 5px;
                background-color: #5e90c4;
                color: #fff;
                width: 150px;
                height: auto;
                font-size: 13px;
            }

            #apply:hover{
                background-color: #45719e;
            }

            #coupon, #checkout, #update, #continue, #apply, #number, .js-btn-minus, .js-btn-plus{
                outline: none;
                box-shadow: none;
            }

            #update-continue{
                margin-top: 8px;
            }

            #update {
                font-size: 15px;
                padding: 9px 17px;
                color: white;
                border-color: #5e90c4;
                box-shadow: none;
                background-color: #5e90c4;
            }

            #update:hover {
                background-color: white;
                color: #5e90c4;
            }

            #coupon-title{
                margin-top: 28px;
                margin-bottom: 20px;
            }
            #del-button{
                text-transform: uppercase;
                position: relative;
                -webkit-transition: 0.2s all ease-in-out !important;
                -o-transition: 0.2s all ease-in-out !important;
                transition: 0.2s all ease-in-out !important;
                top: 0;
                letter-spacing: .03em; 
                padding: 8px 15px 8px 15px;

            }

            .form-control:focus {
                border-color: #44709d;
                -webkit-box-shadow: none;
                box-shadow: none;
                outline: none;
                background-color: transparent;
            }
            /* Invoice Styles */
            .invoice-container {
                max-width: 600px;
                margin: 40px auto;
                padding: 20px;
                border: 3px solid #ddd;
                border-radius: 8px;
                background-color: #fff;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }

            .invoice-header {
                text-align: center;
                margin-bottom: 10px;
            }

            .invoice-header h1 {
                font-size: 24px;
                color: #333;
                font-weight: bold;
            }

            .invoice-body {
                font-size: 16px;
                line-height: 1.6;
                border: 2px solid #ddd;
                border-radius: 8px;
                padding: 20px 10px 10px 10px;
            }

            .invoice-row {
                display: flex;
                justify-content: space-between;
                margin-bottom: 10px;
            }

            .invoice-row strong {
                color: #555;
            }

        </style>


    </head>
    <body>
        <div class="luxury-form-container">
            <form action="MainController" method="GET" class="luxury-form" style="position: absolute; top: 19px; left: 68px;">
                <input type="hidden" name="action" value="SearchAndRedirect">
                <div style="position: relative;">
                    <i class="fas fa-search" style="position: absolute; left: 10px; top: 50%; transform: translateY(-50%); padding-left: 10px; color: #666666; font-size: 14px;"></i>
                    <input type="text" name="search" placeholder="Search" class="luxury-input" style="padding-left: 40px;">
                </div>
                <input type="submit" value="Lookup" class="luxury-button"/>
            </form>
        </div>

        <div class="container-relative">
            <p class="messenger-icon"><i class="fab fa-facebook-messenger"></i></p>
        </div>

        <div class="header-container">
            <div>
                <a href="home.jsp">
                    <img class="logo" src="image/logo.png">
                </a>
            </div>
            <div class="login-icon">
                <i class="fas fa-user-circle"></i>
                <a href="MainController?action=Logout">LOGOUT</a>
            </div>
        </div>

        <div class="view-cart-icon" style="position: absolute; top: 25.6px; right: 210px;">
            <i class="fas fa-shopping-cart"></i>
            <a href="cart.jsp" >CART</a>
        </div>


        <div class="navbar-menu" style="background-color: white;">
            <a href="home.jsp">HOME PAGE</a>
            <a href="#" onclick="scrollToContact()">ABOUT US</a>
            <a href="#" onclick="scrollToContact()">CONTACT</a>
            <a href="category.jsp" onclick="scrollToLogin()">ALL THINGS</a>
            <div class="stuff-type">
                <a href="category.jsp" onclick="scrollToLogin()">STUFF CATEGORY</a>
                <i class="fas fa-chevron-down"></i>
                <div class="stuff-dropdown">
                    <a href="category.jsp">Super cute</a>
                    <a href="category.jsp">Big size</a>
                    <a href="category.jsp">With blanket</a>
                </div>
            </div>
        </div>

        <div class="navbar">
            <a href="home.jsp" id='homepage' style="width: auto; height: 13px; font-size: 14px;">Home Page</a> 
            <a href="invoice.jsp" id='viewcart' style="width: auto; height: 13px; font-size: 14px;">Invoice Detail</a> 
        </div>

        <%
            Order order = (Order) session.getAttribute("RECENT_ORDER");
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        %>
        <div class="invoice-container">
            <div class="invoice-header">
                <h1>INVOICE</h1>
            </div>
            <div class="invoice-body">
                <%--<%= order.getOrderId()%>--%>
                <div class="invoice-row"><strong>Order ID:</strong> <span>41</span></div>
                <div class="invoice-row"><strong>User ID:</strong> <span><%= order.getUserId()%></span></div>
                <div class="invoice-row"><strong>Address:</strong> <span><%= order.getAddress()%></span></div>
                <div class="invoice-row"><strong>Phone Number:</strong> <span><%= order.getPhone()%></span></div>
                <div class="invoice-row"><strong>Total Price:</strong> <span><%= order.getTotal()%></span></div>
                <div class="invoice-row"><strong>Order Date:</strong> <span><%= dateFormat.format(new java.util.Date())%></span></div>
            </div>
        </div>



        <div id="contactSection" class="footer" style="background-color: #edc9a3;">
            <div class="footer-content">
                <h5>CONTACT INFO</h5>
                <hr style="border-top: 1px solid #564846;">
                <p> Address: FPT University HCM City</p>
                <p> Email: trannhbse182378@fpt.edu.vn</p>
                <p> Hotline: 0912.345.678</p>
                <p> Working hours: 8:00 a.m. - 8:30 p.m</p>
            </div>
            <div class="footer-content">
                <h5>LEGAL & QUESTION</h5>
                <hr style="border-top: 1px solid #564846;">
                <p class="point"> Introduce</p>
                <p class="point"> Return policy</p>
                <p class="point"> Privacy policy</p>
                <p class="point"> Terms of service</p>
            </div>
            <div class="footer-content">
                <h5>CATEGORY</h5>
                <hr style="border-top: 1px solid #564846;">
                <p class="point"> Best seller</p>
                <p class="point"> Popular stuff</p>
                <p class="point"> All things</p>
                <p class="point"> New stuff</p>
            </div>
            <div class="footer-content">
                <h5>SIGN UP FOR GIFT</h5>
                <hr style="border-top: 1px solid #564846;">
                <p>Register now to receive promotional <br>information and gift programs from <br> Kon Mel.</p>
                <form>
                    <div class="form-group" style="position: relative;">
                        <input type="email" class="form-control" id="emailInput" placeholder="Enter your email"> 
                        <button type="button" class="btn btn-outline-primary" style="box-shadow: none; color: white; position: absolute; right: 7.5px; top: 5.3px; height: 75%;">Submit</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="copyright" style="background-color: #edc9a3;">
            <p>Copyright © 2024 Kon Mel - Gift & Cute Stuff</p>
        </div>

        <div class="social">
            <p class="fa fa-facebook"> </p>
            <p class="fa fa-google"> </p>
            <p class="fa fa-instagram"> </p>
        </div>


    </body>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
                    function updateTotal() {
                        var totals = document.querySelectorAll('.product-total');
                        var subtotal = 0;

                        totals.forEach(function (item) {
                            var valueText = item.textContent || item.innerText;
                            // Chuyển đổi chuỗi thành số
                            var value = parseFloat(valueText.replace(/[^0-9.]/g, ''));
                            if (!isNaN(value)) {
                                subtotal += value;
                            }
                        });

                        // Định dạng số tiền và thêm "VND"
                        function formatMoney(amount) {
                            return Math.floor(amount).toFixed(0) + " VND"; // Làm tròn xuống và bỏ phần thập phân, thêm " VND"
                        }

                        // Cập nhật giá trị vào các phần tử có ID tương ứng
                        document.getElementById('cartSubtotal').textContent = formatMoney(subtotal);
                        document.getElementById('cartTotal').textContent = formatMoney(subtotal);
                    }

                    // Gọi hàm updateTotal khi trang tải xong
                    document.addEventListener('DOMContentLoaded', function () {
                        updateTotal();
                    });
    </script>

    <script>
        document.querySelectorAll('.quantity').forEach(function (item) {
            item.addEventListener('change', function () {
                updateTotal();
            });
        });
    </script>
    <script>
        if (${requestScope.POSITIVE_NUMBER_ERROR != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.POSITIVE_NUMBER_ERROR}',
                icon: "error",
                button: "Ok"
            });
        }
        if (${requestScope.QUANTITY_ERROR != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.QUANTITY_ERROR}',
                icon: "error",
                button: "Ok"
            });
        }
        if (${requestScope.INVALID_RANGE != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.INVALID_RANGE}',
                icon: "error",
                button: "Ok"
            });
        }
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var minusButtons = document.querySelectorAll('.js-btn-minus');
            var plusButtons = document.querySelectorAll('.js-btn-plus');

            minusButtons.forEach(function (button) {
                button.addEventListener('click', function () {
                    var input = this.parentNode.nextElementSibling;
                    var value = parseInt(input.value);
                    if (value > 1) {
                        input.value = value - 1;
                    }
                });
            });

            plusButtons.forEach(function (button) {
                button.addEventListener('click', function () {
                    var input = this.parentNode.previousElementSibling;
                    var value = parseInt(input.value);
                    input.value = value + 1;
                });
            });
        });
    </script>

    <script>
        function displayErrorMessage(message) {
            var errorMessageDiv = document.getElementById("errorMessage");
            errorMessageDiv.innerHTML = message;
            errorMessageDiv.style.display = "block";
        }
    </script>

</head>
</html>
