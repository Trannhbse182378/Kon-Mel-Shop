<%-- 
    Document   : staff
    Created on : Jan 22, 2024, 9:12:16 PM
    Author     : ptd
--%>

<%@page import="DTO.Account"%>
<%@page import="DAO.UserDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel ="icon" href ="image/tab.jpg" type ="image/x-icon">
        <title>Kon Mel - Staff</title>
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
        <style>
            body {
                overflow-y: scroll;
            }
            *{
                font-family: 'poppins',sans-serif;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                background: #fff;
                padding: 20px 25px;
                border-radius: 6px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
                border: #44709d solid 2px;
            }
            .table-title {        
                padding-bottom: 15px;
                background: #44709d;
                color: #fff;
                padding: 14.5px 30px 16px;
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
                background-color: #ededed;
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
                border-radius: 5px;
            }
            .modal-footer >input{
                border-radius: 5px;
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
                0% {transform: skew(0deg,0deg);}
                25% {transform: skew(5deg, 5deg);}
                75% {transform: skew(-5deg, -5deg);}
                100% {transform: skew(0deg,0deg);}
            }

            .search-container:hover{
                animation: hoverShake 0.15s linear 3;
            }

            login-icon {
                position: absolute;
                top: 25.5px;
                right: 75px;
                z-index: 1;
                margin-right: 10px;
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
                color: #44709d; 
                text-decoration: none; /* Remove underline on hover */
            }

            .header-container {
                display: flex;
                justify-content: space-between;
                margin: 30px 79px 10px 0;
            }

            .btn-addstuff{
                background-color: white;
            }

            .tr  td, .tr  th{
                color: #564846;
            }


            .luxury-form-container {
                display: flex;
                /*justify-content: flex-end;*/
                margin-left: 20px;
                margin-top: 10px;
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

            .form-group{
                color:#564846;
            }

            .manage{
                color: white;
                cursor: pointer;
            }

            .manage a{
                text-decoration: none;
                color: white;
                font-weight: bold;
            }

            .btn-stuff, .btn-user, .btn-order{
                width: 105px;
                border-radius: 4px;
                padding: 3px 30px 3px 17px;
                margin-top: 0px;
                margin-bottom: 2px;
                font-size: 21px;
                border: white solid 2px;
                color: white;
                background-color: #44709d;
                font-weight: bold;
            }

            .btn-stuff:hover,  .btn-user:hover{
                border: white solid 2px;
                color: #44709d;
                background-color: white;
            }

            .btn-user,  .btn-order{
                margin-left: 20px;
                padding-right: 22px;
            }

            .btn-order{
                background-color: white;
                color: #44709d;
            }

        </style>


    </head>
    <body>
        <div class="header-container">
            <div class="luxury-form-container">
                <form action="MainController" method="GET" class="luxury-form" style="position: absolute; top: 19px; left: 73px;">
                    <input type="hidden" name="action" value="SearchAndRedirectOrder">
                    <div style="position: relative;">
                        <i class="fas fa-search" style="position: absolute; left: 10px; top: 50%; transform: translateY(-50%); padding-left: 10px; color: #666666; font-size: 14px;"></i>
                        <input type="text" name="searchOrder" placeholder="Search by order id" class="luxury-input" style="padding-left: 40px;">
                    </div>
                    <input type="submit" value="Lookup" class="luxury-button"/>
                </form>
            </div>
            <div class="login-icon">
                <i class="fas fa-user-circle"></i>
                <a href="MainController?action=Logout">LOGOUT</a>
            </div>
        </div>

        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6 manage">
                                <form action="MainController" method="get">
                                    <input type="hidden">
                                    <h2><a href="staff.jsp" class="btn-stuff" type="button"> STUFF</a> 
                                        <button name="action" value="ViewUsers" class="btn-user" type="submit"> USER</button>
                                        <button name="action" value="ViewOrder" class="btn-order" type="submit">ORDER</button>
                                    </h2>
                                </form>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr class="tr" style="text-align: center;">
                                <th style="width: 50px;">No</th>
                                <th style="width: 70px;">Order ID</th>
                                <th style="width: 170px;">User ID</th>
                                <th style="width: 100px;">Phone Number</th>
                                <th style="width: 200px;">Address</th>
                                <th style="width: 100px;">Total Price</th>
                                <!--<th style="width: 100px;">Action</th>-->
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${sessionScope.ORDER_LIST}" var="m">
                            <c:set var="counter" value="${counter + 1}"/>
                            <tr class="tr" style="text-align: center;">
                                <td>${counter}</td>
                                <td>${m.orderId}</td>
                                <td>${m.userId}</td>
                                <td>${m.phone}</td>                         
                                <td>${m.address}</td>
                                <td>${m.total}</td>
<!--                                <td>
                                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal" data-user-id="${m.userId}"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>-->
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>        
        </div>

        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="MainController" method="POST">
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete User</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body" style="color: #564846;">					
                            <p>Are you sure you want to delete this user?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <!-- Other modal content... -->
                        <input type="hidden" id="userId" name="userId" value="">
                        <div class="modal-footer">
                            <input style="border: #44709d solid 2px; color: #44709d;" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input  style="color: white; background-color: #44709d;" type="submit" class="btn btn-add" value="DeleteUser" name="action">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script>
        $(document).ready(function () {
            // Activate tooltip
            $('[data-toggle="tooltip"]').tooltip();

            // Select/Deselect checkboxes
            var checkbox = $('table tbody input[type="checkbox"]');
            $("#selectAll").click(function () {
                if (this.checked) {
                    checkbox.each(function () {
                        this.checked = true;
                    });
                } else {
                    checkbox.each(function () {
                        this.checked = false;
                    });
                }
            });
            checkbox.click(function () {
                if (!this.checked) {
                    $("#selectAll").prop("checked", false);
                }
            });
        });
        $(document).ready(function () {
            $('.delete').on('click', function () {
                var userId = $(this).data('user-id');
                $('#userId').val(userId);
            });
        });
        $(document).ready(function () {
            $('.edit').on('click', function () {

                var stuffId = $(this).data('update-stuff-id');
                $('#updateId').val(stuffId);
                var description = $(this).data('update-stuff-description');
                $('#updateDescription').val(description);
                var price = $(this).data('update-stuff-price');
                $('#updatePrice').val(price);
                var quantity = $(this).data('update-stuff-quantity');
                $('#updateQuantity').val(quantity);


                // Extract data from the clicked link and log it
                var notSale = $(this).data('update-stuff-notsale');

                // Check if notSale is undefined and handle accordingly
                if (typeof notSale === 'undefined') {
                    console.error('notSale is undefined');
                    // Handle undefined case here, e.g., uncheck the checkbox or show an error
                } else {
                    // Set the checkbox state
                    $('#stuffNotSale').prop('checked', notSale === 'true' || notSale === true);
                }
            });
        });
        if (${requestScope.POSITIVE_NUMBER_ERROR != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.POSITIVE_NUMBER_ERROR}',
                icon: "error",
                button: "Ok"
            });
        }
        if (${requestScope.POSITIVE_PRICE != null}) {
            swal({
                title: "Opps!",
                text: '${requestScope.POSITIVE_PRICE}',
                icon: "error",
                button: "Ok"
            });
        }
    </script>
</html>