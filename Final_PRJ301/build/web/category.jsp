<%-- 
    Document   : home
    Created on : Jan 21, 2024, 11:41:20 AM
    Author     : ptd
--%>

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

            *:focus {
                outline: none !important;
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
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                background: #fff;
                padding: 20px 25px;
                border-radius: 3px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {
                padding-bottom: 15px;
                background: #435d7d;
                color: #fff;
                padding: 16px 30px;
                min-width: 100%;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn-group {
                float: right;
            }
            .table-title .btn {
                color: #fff;
                float: right;
                font-size: 13px;
                border: none;
                min-width: 50px;
                border-radius: 2px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #F44336;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
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
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 100%;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal-content {
                position: relative;
                display: -ms-flexbox;
                display: flex;
                -ms-flex-direction: column;
                flex-direction: column;
                width: 100%;
                pointer-events: auto;
                background-color: #fff;
                background-clip: padding-box;
                border: 0px solid rgba(0, 0, 0, .2);
                border-radius: 0.3rem;
                outline: 0;
                padding: 20px;
                box-shadow: 0 0 50px rgba(0, 0, 0, 0.3); /* Đổ bóng */
            }

            .modal-content > span{
                cursor: pointer;
                font-size: 35px;
                margin-left: 10px;
                margin-top: -5px;
                color: #564846;
            }
            .modal-content > span:hover{
                cursor: pointer;
                color: #5e90c4;

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

            .search-container .search-input{
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

            /* The Modal (background) */

            /* The Close Button */
            .close-button {
                color: #aaa;
                float: right;
                font-size: 28px;
                font-weight: bold;
            }

            .close-button:hover,
            .close-button:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }
            .clickable-row{
                cursor: pointer;
            }

            .error-message {
                color: red;
                text-align: center;
            }
            .stuff-image-container {
                position: relative;
                width: 250px;
                height: 150px;
                overflow: hidden;
                border-radius: 10px;
                box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            }

            /* Style for shoe image */
            .stuff-image {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.3s ease-in-out;
            }

            /* Hover effect for shoe image */
            .stuff-image-container:hover .stuff-image {
                transform: scale(1.05);
            }

            /* Style for shoes info */
            .stuff-info {
                vertical-align: middle;
                font-size: 16px;
            }

            /* Style for add to cart button */
            .quantity-button-adding {
                background-color: #5cbdbb;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 8px 15px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease-in-out;
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

            .btn-primary {
                background-color: #5cb85c; /* Màu nền cho nút primary */
                border-color: #5cb85c; /* Màu viền cho nút primary */
                color: #fff; /* Màu chữ cho nút primary */
            }

            .btn-primary:hover {
                background-color: #4cae4c; /* Màu nền khi hover */
                border-color: #4cae4c; /* Màu viền khi hover */
            }

            .card {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Hiệu ứng bóng đổ */
                transition: box-shadow 0.3s ease;
            }

            .card:hover {
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Hiệu ứng bóng đổ khi hover */
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

            /* The Modal (background) */
            #addToCartModal {
                display: none; /* Hidden by default */
                position: fixed;  
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 80%; /* Full width */
                /*overflow: hidden;  Enable scroll if needed */
                margin: 130px 100px 100px 130px;
                text-align: center;
                padding: 100px;
            }

            #stuffDetailModal {
                position: fixed;  
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 70%; /* Full width */
                margin: 100px 100px 100px 190px;
                text-align: center;
                box-shadow: 0 0 50px rgba(0, 0, 0, 0.3);
            }

            .addToCartButton{
                margin-top: -3px;
                transition: transform 0.3s ease-in-out;
            }
            .addToCartButton:hover{
                transform: scale(1.03);
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
                margin-top: -20px;
                display: flex;
                text-align: center;
                /*justify-content: center;*/
                font-size: 40px; /* Increase font size */
                /*transition: color 0.3s ease, transform 0.3s ease;  Smooth transition on hover */
                /*animation: pulse 1s infinite alternate;  Add animation */
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
                z-index: 9000; /* Đảm bảo nó luôn nằm trên cùng */
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

            .card-body input{
                background-color: #5e90c4;
                color: white;
            }

            .card-body input:hover{
                background-color: #44709d;
                color: white;
                transform: scale(1.05);
                outline: none;
            }

            .card-body{
                /*display: flex;*/
                align-items: center;
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

            .show-more-button {
                padding: 10px 30px 10px 30px; /* Adjust size as needed */
                background-color: #5e90c4; /* Example blue shade, match with your lookup button */
                color: white; /* Text color */
                border: none;
                border-radius: 20px; /* Rounded corners */
                cursor: pointer; /* Hand cursor on hover */
                transition: background-color 0.3s ease, transform 0.3s ease; /* Smooth transition for hover effects */
                font-size: 14px; /* Adjust font size as needed */
                text-decoration: none; /* Remove underline from links */
                margin-left: 610px;
                outline: #44709d;
            }

            .show-more-button:hover {
                background-color: #44709d; /* Darker shade on hover */
                transform: scale(1.05); /* Slightly increase size on hover */
                outline: #44709d;
                text-decoration: none;
                color: white;
            }

            .custom-button-container {
                display: flex;
                justify-content: flex-end; /* Align button to the right */
                align-items: center; /* Center align vertically */
                padding-right: 20px; /* Adjust spacing from the right edge */
                margin-bottom: -10px; /* Adjust based on your layout to align with title */
            }

            /* Loại bỏ viền khi nhấn và focus */
            .show-more-button:focus, .show-more-button:active {
                outline: none !important;
                box-shadow: none !important;
            }


            /* Style cho container modal */
            .container-stuffDetailModal {
                display: flex;
                align-items: center; /* Căn giữa các items theo chiều dọc */
                text-align: left; /* Căn text bên trái */
                padding: 20px; /* Thêm padding cho thoải mái */
            }

            .modal-left, .modal-right {
                flex: 1; /* Chia đều không gian cho cả hai bên */
            }

            .modal-left {
                margin-right: 20px; /* Thêm khoảng cách giữa ảnh và nội dung */
            }


            .close-button {
                position: absolute;
                top: 20px;
                right: 20px;
                cursor: pointer;
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
            <a href="cart.jsp">CART</a>
            <!--data-toggle="modal" data-target="#cartModal"-->
        </div>


        <div class="navbar-menu" style="background-color: white;">
            <a href="home.jsp">HOME PAGE</a>
            <a href="#" onclick="scrollToAboutUs()">ABOUT US</a>
            <a href="#" onclick="scrollToContact()">CONTACT</a>
            <a href="category.jsp">ALL THINGS</a>
            <div class="stuff-type">
                <a href="category.jsp"  style="color: #bf8649">STUFF CATEGORY</a>
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
            <a href='category.jsp' id='viewcart' style="width: auto; height: 13px; font-size: 14px;">Category</a> 
        </div>


        <div id="loginHeading" class="table-responsive">
            <div class="container-xl">

                <div class="row">
                    <c:forEach items="${sessionScope.STUFF_DATA}" var="m">
                        <div class="col-lg-4 col-md-6 mb-4">
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
                                <div class="card-body text-center">
                                    <h4 style="color:#564846; text-transform: uppercase;" class="card-title">✿ ${m.stuffName} ✿</h4>
                                    <p style="color:#6e615f;" class="card-text">${m.price} VND</p>
                                    <p style="color:#564846;" class="card-text">${m.description}</p>
                                    <input style="width: 90%;box-shadow: none;" type="submit" class="btn btn-outline-success quantity-button-adding" value="Add to cart" data-stuff-cart-id="${m.stuffId}" />
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>


            <!--Modal for viewing cart data--> 

            <!-- Modal for each row -->

        </div>

        <!-- The Modal -->
        <div id="addToCartModal" style="display:none;">
            <div class="modal-content">
                <span style="text-align: start; width: 30px;" class="close-button-quantity">&times;</span>
                <!--<h2>Add to Cart</h2>-->
                <form method="POST" action="MainController">
                    <label style="color: #564846;" for="quantity">Enter quantity:      </label>
                    <input type="number" id="cartQuantity" name="quantity" min="1" class="luxury-input">
                    <input type="hidden" id="cartStuffId" name="stuffId">      
                    <input  type="submit" class="btn btn-primary luxury-button addToCartButton" style="width: 150px;" name="action" value="Add To Cart" />
                </form>
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

        <!-- The Modal --> <!--BẢNG NÀY LÀ BẢNG HIỆN THỊ INFO SHOES KHI TA CLICK VÀO HÌNH -->
        <div id="stuffDetailModal" style="display:none;">
            <div class="modal-content" style="color: #564846;" >
                <span style="text-align: start; width: 30px;" class="close-button">&times;</span>
                <div class="container-stuffDetailModal">
                    <!-- Bên trái: Ảnh -->
                    <div class="modal-left" style="padding-left: 30px;">
                        <img id="modalStuffImage" src="" alt="Stuff Image" style="width: 75%; height: auto;">
                    </div>
                    <!-- Bên phải: Nội dung -->
                    <div class="modal-right" style="padding-right: 30px; text-align: center;">
                        <h2 id="modalStuffName" style="text-transform: uppercase;"></h2>
                        <p><b></b> <span id="modalDescription"></span></p><br>                     
                        <p><b>Quantity:</b> <span id="modalQuantity"></span></p>
                        <p><b>Price:</b> <span id="modalPrice"></span> VND</p>
                        <p><b>Year of Production:</b> <span id="modalYearOfProduction"></span></p>
                        <input type="hidden" id="modalNotSale">      
                        <!--<p><b>Not Sale:</b> <span id="modalNotSale"></span></p>--> 
                    </div>
                </div>
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
                        <button type="button" class="btn btn-primary" style="box-shadow: none; position: absolute; right: 7.5px; top: 5.3px; height: 75%;">Submit</button>
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
        function displayErrorMessage(message) {
            var errorMessageDiv = document.getElementById("errorMessage");
            errorMessageDiv.innerHTML = message;
            errorMessageDiv.style.display = "block";
        }
    </script>
    <script>
        var quantityError = "<%= request.getAttribute("QUANTITY_ERROR")%>";
        if (quantityError && quantityError.trim() !== "") {
            displayErrorMessage(quantityError);
        }

        function displayErrorMessage(message) {
            var errorMessageDiv = document.getElementById("errorMessage");
            errorMessageDiv.innerHTML = message;
            errorMessageDiv.style.display = "block";
            setTimeout(function () {
                errorMessageDiv.style.display = "none";
            }, 3000); // Hide the message after 3 seconds
        }
    </script>
</head>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Function to open the modal and display mobile details
        const showModal = (stuffData) => {
            document.getElementById('modalStuffName').textContent = stuffData.stuffName;
            document.getElementById('modalDescription').textContent = stuffData.description;
            document.getElementById('modalPrice').textContent = stuffData.price;
            document.getElementById('modalYearOfProduction').textContent = stuffData.yearOfProduction;
            document.getElementById('modalQuantity').textContent = stuffData.quantity;
            document.getElementById('modalNotSale').textContent = stuffData.notSale;
            // Thêm dòng sau
            document.getElementById('modalStuffImage').src = "./asset/image/" + stuffData.image;

            document.getElementById('stuffDetailModal').style.display = "block";
        };

        // Function to open the modal and display mobile details
        const showQuantityModal = (stuffData) => {
            console.log('hehe', stuffData.stuffId)
            document.getElementById('cartStuffId').value = stuffData.stuffId;

            document.getElementById('addToCartModal').style.display = "block";
        };

        // Event listener for closing the modal
        document.querySelector('.close-button').addEventListener('click', function () {
            document.getElementById('stuffDetailModal').style.display = "none";
        });

        // Event listener for closing the modal
        document.querySelector('.close-button-quantity').addEventListener('click', function () {
            document.getElementById('addToCartModal').style.display = "none";
        });

        // Attach an event listener to each row
        document.querySelectorAll('.quantity-button-adding').forEach(row => {
            row.addEventListener('click', function () {
                const quantityData = {
                    stuffId: this.getAttribute('data-stuff-cart-id'),
                };

                showQuantityModal(quantityData);
            });
        });

        // Attach an event listener to each row
        document.querySelectorAll('.clickable-row').forEach(row => {
            row.addEventListener('click', function () {
                const stuffData = {
                    stuffId: this.getAttribute('data-stuff-id'),
                    stuffName: this.getAttribute('data-stuff-name'),
                    description: this.getAttribute('data-description'),
                    price: this.getAttribute('data-price'),
                    yearOfProduction: this.getAttribute('data-year-of-production'),
                    quantity: this.getAttribute('data-quantity'),
                    notSale: this.getAttribute('data-not-sale'),
                    image: this.getAttribute('data-image')
                };
                console.log(stuffData)
                showModal(stuffData);
            });
        });

//            // Prevent row click when the "Add To Cart" button is clicked
//            document.querySelectorAll('.btn-add-cart').forEach(button => {
//                button.addEventListener('click', function (e) {
//                    e.stopPropagation();
//                });
//            });
    });
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
