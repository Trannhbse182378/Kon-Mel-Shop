

<%@page import="java.util.List"%>
<%@page import="DTO.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 3px;
                font-size: 14px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .modal .form-control {
                border-radius: 2px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 2px;
                min-width: 100px;
            }
            .modal form label {
                font-weight: normal;
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

            /* Style for image container */
            .stuff-image-container {
                position: relative;
                width: 250px;
                height: 150px;
                overflow: hidden;
                border-radius: 10px;
                box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            }

            /* Style for image */
            .stuff-image {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.3s ease-in-out;
            }

            /* Hover effect for image */
            .stuff-image-container:hover .stuff-image {
                transform: scale(1.05);
            }

            .quantity-button-adding:hover {
                background-color: #4ca8a6;
            }

            /* FontAwesome icon style */
            .quantity-button-adding i {
                margin-right: 5px;
            }

            /* Add animation */
            .image-container {
                transition: transform 0.3s ease-in-out;
            }

            /* Add hover effect */
            .image-container:hover {
                transform: scale(1.05);
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
                outline: none;
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

            .container {
                max-width: 1200px;
                margin: 0 auto;
                padding: 10px 40px 30px 40px;
                display: flex;
                text-align: center;
                justify-content: center;
            }

            header {
                text-align: center;
                margin-bottom: 20px;
            }

            header h1 {
                font-size: 36px;
                color: #fff; /* White text color */
            }

            header a {
                color: #fff;
                text-decoration: none;
                font-size: 20px;
            }

            main {
                padding: 20px;
            }

            .section-title {
                font-size: 28px;
                display: flex;
                text-align: center;
                justify-content: center;
                margin-bottom: 20px;
                margin-top: 30px;
            }

            .rowTitle{
                display: flex;
                text-align: center;
                justify-content: center;
                font-size: 40px; /* Increase font size */
                transition: color 0.3s ease, transform 0.3s ease; /* Smooth transition on hover */
                animation: pulse 1s infinite alternate; /* Add animation */
            }


            .stuff-card {
                background-color: #fff;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: box-shadow 0.3s ease;
            }

            .stuff-card:hover {
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            }

            .card {
                overflow: hidden;
            }

            .login-icon {
                position: absolute;
                top: 25.5px;
                right: 72px;
                z-index: 9999;
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
                transform: scale(1.1);
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

            .image-container {
                position: relative;
                width: 100%; /* Đảm bảo rằng ảnh sẽ đầy đủ chiều rộng của container */
                height: 0; /* Đặt chiều cao là 0 để sử dụng phần trăm cho padding-bottom */
                padding-bottom: 100%; /* Tạo thành hình vuông (cùng chiều rộng và chiều cao) */
                overflow: hidden; /* Ẩn bất kỳ phần nào của hình ảnh vượt ra khỏi phần tử */
            }

            .image-container img {
                position: absolute;
                width: 100%; /* Đảm bảo ảnh đầy đủ chiều rộng của phần tử cha */
                height: auto; /* Tự động tính toán chiều cao dựa trên chiều rộng */
                top: 0;
                left: 0;
                bottom: 0;
                right: 0;
                display: block; /* Loại bỏ khoảng trắng dư thừa */
                margin: auto; /* Căn giữa hình ảnh */
            }

            .footer {
                width: 100%;
                margin-top: 40px;
                color: #564846;
                padding-top: 30px;
                display: flex;
                justify-content: space-around;
            }

            body {
                margin: 0;
                padding: 0;
                border: 10px solid #edc9a3;
                background-color: white;
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
                justify-content: space-between;
                margin: 10px 60px 5px 60px;
            }

            .navbar h1{
                font-size: 100%;
                margin-top: 7px;
                margin-bottom: 9px;
            }

            .container {
                display: flex;
                justify-content: space-between;
            }

            .container img {
                width: 30%; /* Set width of images */
                height: auto; /* Maintain aspect ratio */
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
                outline: none;
            }

            .form-group button:hover{
                background-color: #44709d;
                outline: none;
            }

            .form-group input {
                font-size: 12px;
                height: 43px;
                padding-top: 5px; /* Khoảng cách với phần tử trên */
                padding-bottom: 5px;
                transition: background-color 0.3s ease; 
            }

            .fixed-icon {
                width: 60px;
                position: fixed;
                top: 140px; /* Điều chỉnh vị trí theo ý của bạn */
                right: -10px; /* Điều chỉnh vị trí theo ý của bạn */
                background-color: #518ac7; /* Màu nền xanh Facebook */
                color: white; /* Màu chữ trắng */
                padding: 7px; /* Điều chỉnh khoảng cách giữa biểu tượng và chữ */
                border-radius: 5px; /* Để biểu tượng trở nên bo tròn */
                transition: width 0.3s ease-in-out; /* Hiệu ứng chuyển động */
                z-index: 9999; /* Đảm bảo nó luôn nằm trên cùng */
                display: flex;
                align-items: center;
                cursor: pointer;
            }

            .fixed-icon-top {
                width: 60px;
                position: fixed;
                top: 100px; /* Điều chỉnh vị trí theo ý của bạn */
                right: -10px; /* Điều chỉnh vị trí theo ý của bạn */
                background-color: #4267B2; /* Màu nền xanh Facebook */
                color: white; /* Màu chữ trắng */
                padding: 7px; /* Điều chỉnh khoảng cách giữa biểu tượng và chữ */
                border-radius: 5px; /* Để biểu tượng trở nên bo tròn */
                transition: width 0.3s ease-in-out; /* Hiệu ứng chuyển động */
                z-index: 9999; /* Đảm bảo nó luôn nằm trên cùng */
                display: flex;
                align-items: center;
                cursor: pointer;
            }

            .fixed-icon:hover {
                width: 160px; /* Điều chỉnh chiều rộng khi di chuột vào */
            }

            .fixed-icon-top:hover{
                width: 160px;
            }

            .fixed-icon i{
                margin-top: 0.3px;
                margin-bottom: 0.3px;
                font-size: 20px; /* Kích thước biểu tượng Facebook */
            }

            .fixed-icon-top i{
                margin-top: 0.3px;
                margin-bottom: 0.3px;
                font-size: 20px; /* Kích thước biểu tượng Facebook */
            }

            .fixed-icon .text{
                display: none; /* Ẩn văn bản 'Facebook' ban đầu */
                margin-left: 25px; /* Điều chỉnh khoảng cách giữa biểu tượng và văn bản */
            }

            .fixed-icon-top .text{
                display: none; /* Ẩn văn bản 'Facebook' ban đầu */
                margin-left: 25px; /* Điều chỉnh khoảng cách giữa biểu tượng và văn bản */
            }

            .fixed-icon:hover .text {
                display: inline; /* Hiển thị văn bản 'Facebook' khi di chuột vào */
                font-size: 13px;
            }

            .fixed-icon-top:hover .text {
                display: inline; /* Hiển thị văn bản 'Facebook' khi di chuột vào */
                font-size: 13px;
            }

            .container-info {
                display: flex;
                flex-direction: row;
                margin: 50px 60px 0 60px;
            }
            .left-column {
                flex: 1;
                padding-right: 15px;
            }
            .right-column {
                flex: 1;
                padding-left: 15px;
                text-align: center;
                padding-top: 30px;
            }

            .right-column h3{
                color: #45719e;  
                padding-bottom: 5px;
            }

            .right-column p{
                font-size: 90%;
                color: #564846;
            }

            .left-column img {
                width: 100%;
                height: 90%;
            }

            .col-lg-3 {
                -ms-flex: 0 0 25%;
                flex: 0 0 25%;
                width: 550px;
            }

            .container-xl {
                margin-left: auto; /* Căn lề phải */
                margin-right: auto; /* Căn lề trái */
                max-width: 1185px; /* Đặt kích thước tối đa */
                width: 100%; /* Đảm bảo container mở rộng hết chiều rộng của màn hình */
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

            /* Add your custom CSS styles here */
            .slider {
                position: relative;
                display: block;
                overflow: hidden;
                /* Thêm width và height cho slider */
                width: 100%;
                height: auto; /* hoặc bạn có thể thiết lập chiều cao cố định */
            }

            .slider-container {
                position: relative;
                display: inline-block; /* Đảm bảo container chỉ chiếm không gian cần thiết */
            }

            .prev, .next {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
                padding: 16px;
                color: red;
                font-weight: bold;
                font-size: 20px;
                transition: 0.6s ease;
                border-radius: 0 3px 3px 0;
            }

            .prev {
                left: 0;
            }

            .next {
                right: 0;
            }

            .dots {
                position: absolute;
                bottom: 8px;
                width: 100%;
                text-align: center;
            }

            .dot {
                position: relative; /* Đảm bảo các pseudo-elements sẽ được đặt trong phạm vi của dot */
                cursor: pointer;
                height: 10px;
                width: 10px;
                margin: 0 2px;
                background-color: transparent; /* Để phần trong suốt */
                border: 2px solid white; /* Màu đỏ cho border */
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }

            .dot::before {
                content: '';
                position: absolute;
                top: -2px; /* Điều chỉnh vị trí của phần pseudo-element */
                left: -2px; /* Điều chỉnh vị trí của phần pseudo-element */
                width: calc(100% + 4px); /* Kích thước của pseudo-element lớn hơn dot để tạo border màu đỏ */
                height: calc(100% + 4px); /* Kích thước của pseudo-element lớn hơn dot để tạo border màu đỏ */
                border: 2px solid transparent; /* Màu trong suốt cho border */
                border-radius: 50%; /* Làm tròn cho pseudo-element */
                transition: border-color 0.6s ease;
            }

            .dot:hover::before {
                border-color: white; /* Màu đỏ cho border khi hover */
            }

            .active::before {
                border-color: white; /* Màu đỏ cho border khi dot được kích hoạt */
            }

            .active, .dot:hover {
                background-color: white; /* Màu nền khi hover hoặc dot được kích hoạt */
            }

            .slider-container img{
                width: 530px;
                height: 330px;
            }
            .container-relative {
                position: fixed; /* Đảm bảo phần tử ở vị trí cố định trên màn hình */
                bottom: 2px; /* Điều chỉnh khoảng cách từ container đến bottom */
                right: 20px; /* Điều chỉnh khoảng cách từ container đến left */
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

            .container-sample {
                display: flex;
                justify-content: space-around; /* Căn giữa theo chiều ngang */
                margin: 19px 10px 10px 50px; /* Khoảng cách từ top */
            }

            /* Container cho mỗi ảnh */
            .sample-container {
                position: relative;
                width: 500px; /* Thay thế bằng kích thước thực của ảnh */
                height: 350px;
                margin: 0 10px 0 10px; /* Margin giữa các ảnh */
                overflow: hidden;
            }

            .sample-container img{
                width: 335px; /* Thay thế bằng kích thước thực của ảnh */
                height: 335px;
            }

            /* Ảnh phía sau */
            .back-image {
                position: absolute;
                top: 0;
                left: 0;
                opacity: 1; /* Ban đầu không làm mờ */
                transition: opacity 0.3s ease-in-out; /* Thêm transition */
            }

            /* Ảnh phía trước */
            .front-image {
                position: absolute;
                top: 0;
                left: 0;
                opacity: 0; /* Ban đầu làm mờ */
                transition: opacity 0.3s ease-in-out; /* Thêm transition */
            }

            /* Hover effect */
            .sample-container:hover .back-image {
                opacity: 0; /* Khi hover, làm mờ ảnh phía sau */
            }

            .sample-container:hover .front-image {
                opacity: 1; /* Khi hover, làm sáng ảnh phía trước */
            }

        </style>

    </head>
    <body>
        <div class="fixed-icon">
            <i class="fab fa-facebook-f"></i>
            <span class="text">Facebook</span>
        </div>
        <div class="fixed-icon" style="top: 180px; background-color: #cf4fb4">
            <i class="fab fa-instagram"></i>
            <span class="text">Instagram</span>
        </div>
        <div class="fixed-icon-top" style="top: 220px; background-color: #25d366;">
            <i class="fas fa-chevron-up"></i>
            <span class="text">Top</span>
        </div>
        <div class="container-relative">
            <p class="messenger-icon"><i class="fab fa-facebook-messenger"></i></p>
        </div>

        <div class="header-container">
            <div>
                <img class="logo" src="image/logo.png">
            </div>
            <div class="login-icon">
                <i class="fas fa-user-circle"></i>
                <a href="login.jsp">LOGIN</a>
            </div>
        </div>


        <div class="navbar-menu" style="background-color: white;">
            <a href="#" style="color: #bf8649">HOME PAGE</a>
            <a href="#" onclick="scrollToAboutUs()">ABOUT US</a>
            <a href="#" onclick="scrollToContact()">CONTACT</a>
            <a href="#" onclick="scrollToLogin()">ALL THINGS</a>
            <div class="stuff-type">
                <a href="#" onclick="scrollToLogin()">STUFF CATEGORY</a>
                <i class="fas fa-chevron-down"></i>
                <div class="stuff-dropdown">
                    <a href="#" onclick="scrollToLogin()">Super cute</a>
                    <a href="#" onclick="scrollToLogin()">Big size</a>
                    <a href="#" onclick="scrollToLogin()">With blanket</a>
                </div>
            </div>
        </div>


        <div class="navbar">
            <h1 style="text-align: center; flex: 1; color: white; width: auto; height: 13px; font-size: 14px;">Free shipping for order with bill more than 800k</h1> 
        </div>

        <div class="container-sample" id="sample">
            <div class="sample-container">
                <img class="back-image" src="image/long.jpeg" alt="Back Image">
                <img class="front-image" src="image/long2.jpeg" alt="Front Image">
            </div>
            <div class="sample-container">
                <img class="back-image" src="image/s1.webp" alt="Back Image">
                <img class="front-image" src="image/s222.webp" alt="Front Image">
            </div>
            <div class="sample-container">
                <img class="back-image" src="image/s3.webp" alt="Back Image">
                <img class="front-image" src="image/s33.webp" alt="Front Image">
            </div>
        </div>

    </body>

    <div id="loginHeading" class="container-xl">
        <div class="table-responsive">
            <div class="container-xl">
                <div class="rowTitle">
                    <!-- Thêm class text-center để căn giữa theo chiều ngang -->
                    <h3 class="section-title" style="color: #44709d;">♡ LOGIN TO CHECK OUT THESE CUTE STUFFED ANIMAL ♡</h3>
                </div>
                <div class="row">
                    <c:forEach items="${stuffList}" var="m">
                        <div class="col-lg-3 col-md-12 mb-12 mb-lg-4">
                            <div class="card h-100 stuff-card">
                                <div class="image-container clickable-row" 
                                     data-stuff-id="${m.stuffId}" 
                                     data-stuff-name="${m.stuffName}" 
                                     data-description="${m.description}"
                                     data-price="${m.price}" 
                                     data-year-of-production="${m.yearOfProduction}" 
                                     data-quantity="${m.quantity}" 
                                     data-not-sale="${m.notSale}" 
                                     data-image="${m.image}">
                                    <img src="./asset/image/${m.image}" class="card-img-top" alt="Stuff Image">
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <div id="imageSlider" class="container-info">
        <div class="left-column">
            <div class="slider-container">
                <img class="slide" src="image/shop.webp" alt="Shop Image">
                <img class="slide" src="image/shopp.jpg" alt="Shop Image">
                <img class="slide" src="image/shopjpg.jpg" alt="Shop Image">
                <a class="prev" onclick="plusSlides(-1)" style="color: white;">&#10094;</a>
                <a class="next" onclick="plusSlides(1)" style="color: white;">&#10095;</a>
                <div class="dots">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
            </div>

        </div>
        <div class="right-column">
            <h3>LET'S LET YOUR LIFE BE FULL OF CUTE!!!</h3>
            <p>
                Dear little souls. Have you heard about the famous story of the old lady who liked the color green in America? Have you ever seen colorful houses in Venice? Or simply encounter a person wearing a full set of pink flowers on the street. Colorful life is created by our own hands.
            </p>
            <p>
                Our Kon Mel team, with hearts passionate about cuteness, always tries to bring color to like-minded souls. With all our enthusiasm, the products present at Kon Mel always take the criterion of LOVELY IS NUMBER 1, along with novelty and usefulness that is not found everywhere! If you need to give love, please remember Kon Mel. Love forever ❤.
            </p>
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
                    <button type="button" class="btn btn-primary" style=" box-shadow: none; position: absolute; right: 7.5px; top: 5.3px; height: 75%;">Submit</button>
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
<!-- Đoạn mã JavaScript -->

<script>
                        // Lắng nghe sự kiện khi người dùng nhấn vào nút "Top"
                        document.querySelector('.fixed-icon-top').addEventListener('click', function (event) {
                            event.preventDefault(); // Ngăn chặn hành động mặc định của thẻ <a>

                            // Tính toán vị trí hiện tại của trang web
                            const currentPosition = window.pageYOffset || document.documentElement.scrollTop;
                            const targetPosition = 0; // Điều chỉnh vị trí đích đến

                            // Tính toán khoảng cách cần cuộn
                            const distance = targetPosition - currentPosition;

                            // Thời gian cuộn (tính theo milliseconds)
                            const duration = 1000; // 1 giây

                            // Thực hiện cuộn mượt lên đầu trang
                            scrollToTop(distance, duration);
                        });

                        // Hàm thực hiện cuộn mượt
                        function scrollToTop(distance, duration) {
                            const start = window.pageYOffset || document.documentElement.scrollTop;
                            let currentTime = 0;
                            const increment = 20; // Thời gian cập nhật cuộn

                            function easeInOutQuad(t, b, c, d) {
                                t /= d / 2;
                                if (t < 1)
                                    return c / 2 * t * t + b;
                                t--;
                                return -c / 2 * (t * (t - 2) - 1) + b;
                            }

                            function animateScroll() {
                                currentTime += increment;
                                const val = easeInOutQuad(currentTime, start, distance, duration);
                                window.scrollTo(0, val);
                                if (currentTime < duration) {
                                    requestAnimationFrame(animateScroll);
                                }
                            }

                            animateScroll();
                        }
</script>

<script>
    function smoothScrollTo(targetElement) {
        const targetPosition = targetElement.offsetTop;
        const startPosition = window.pageYOffset || document.documentElement.scrollTop;
        const distance = targetPosition - startPosition;
        const duration = 1000; // Thời gian cuộn (milliseconds)
        let start = null;

        function step(timestamp) {
            if (!start)
                start = timestamp;
            const progress = timestamp - start;
            window.scrollTo(0, easeInOutQuad(progress, startPosition, distance, duration));
            if (progress < duration)
                window.requestAnimationFrame(step);
        }

        window.requestAnimationFrame(step);
    }

    function easeInOutQuad(t, b, c, d) {
        t /= d / 2;
        if (t < 1)
            return c / 2 * t * t + b;
        t--;
        return -c / 2 * (t * (t - 2) - 1) + b;
    }

    function scrollToLogin() {
        const loginHeading = document.getElementById('loginHeading');
        smoothScrollTo(loginHeading);
    }

    function scrollToAboutUs() {
        const imageSlider = document.getElementById('imageSlider');
        smoothScrollTo(imageSlider);
    }

    function scrollToContact() {
        const contactSection = document.getElementById('contactSection');
        smoothScrollTo(contactSection);
    }

</script>

<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        const slides = document.getElementsByClassName("slide");
        const dots = document.getElementsByClassName("dot");
        if (n > slides.length) {
            slideIndex = 1;
        }
        if (n < 1) {
            slideIndex = slides.length;
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }

</script>

</html>
