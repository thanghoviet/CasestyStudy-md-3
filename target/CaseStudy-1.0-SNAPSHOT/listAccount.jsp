<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Tables</title>

    <!-- Fontfaces CSS-->
    <link href="./bootstrap/css/font-face.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="./bootstrap/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="./bootstrap/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet"
          media="all">
    <link href="./bootstrap/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="./bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="./bootstrap/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
<div class="page-wrapper">
    <!-- HEADER MOBILE-->
    <header class="header-mobile d-block d-lg-none">
        <div class="header-mobile__bar">
            <div class="container-fluid">
                <div class="header-mobile-inner">
                    <a class="logo" href="./bootstrap/index.html">
                        <img src="./bootstrap/images/icon/logo.png" alt="CoolAdmin"/>
                    </a>
                    <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                    </button>
                </div>
            </div>
        </div>
        <nav class="navbar-mobile">
            <div class="container-fluid">
                <ul class="navbar-mobile__list list-unstyled">
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="./bootstrap/index.html">Dashboard 1</a>
                            </li>
                            <li>
                                <a href="./bootstrap/index2.html">Dashboard 2</a>
                            </li>
                            <li>
                                <a href="./bootstrap/index3.html">Dashboard 3</a>
                            </li>
                            <li>
                                <a href="./bootstrap/index4.html">Dashboard 4</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="./bootstrap/chart.html">
                            <i class="fas fa-chart-bar"></i>Charts</a>
                    </li>
                    <li>
                        <a href="./bootstrap/table.html">
                            <i class="fas fa-table"></i>Tables</a>
                    </li>
                    <li>
                        <a href="./bootstrap/form.html">
                            <i class="far fa-check-square"></i>Forms</a>
                    </li>
                    <li>
                        <a href="./bootstrap/calendar.html">
                            <i class="fas fa-calendar-alt"></i>Calendar</a>
                    </li>
                    <li>
                        <a href="./bootstrap/map.html">
                            <i class="fas fa-map-marker-alt"></i>Maps</a>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-copy"></i>Pages</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="./bootstrap/login.html">Login</a>
                            </li>
                            <li>
                                <a href="./bootstrap/register.html">Register</a>
                            </li>
                            <li>
                                <a href="./bootstrap/forget-pass.html">Forget Password</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-desktop"></i>UI Elements</a>
                        <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                            <li>
                                <a href="./bootstrap/button.html">Button</a>
                            </li>
                            <li>
                                <a href="./bootstrap/badge.html">Badges</a>
                            </li>
                            <li>
                                <a href="./bootstrap/tab.html">Tabs</a>
                            </li>
                            <li>
                                <a href="./bootstrap/card.html">Cards</a>
                            </li>
                            <li>
                                <a href="./bootstrap/alert.html">Alerts</a>
                            </li>
                            <li>
                                <a href="./bootstrap/progress-bar.html">Progress Bars</a>
                            </li>
                            <li>
                                <a href="./bootstrap/modal.html">Modals</a>
                            </li>
                            <li>
                                <a href="./bootstrap/switch.html">Switchs</a>
                            </li>
                            <li>
                                <a href="./bootstrap/grid.html">Grids</a>
                            </li>
                            <li>
                                <a href="./bootstrap/fontawesome.html">Fontawesome Icon</a>
                            </li>
                            <li>
                                <a href="./bootstrap/typo.html">Typography</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- END HEADER MOBILE-->

    <!-- MENU SIDEBAR-->
    <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo">
            <a href="#">
                <img src="./bootstrap/images/icon/logo.png" alt="Cool Admin"/>
            </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1">
            <nav class="navbar-sidebar">
                <ul class="list-unstyled navbar__list">
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="./bootstrap/index.html">Dashboard 1</a>
                            </li>
                            <li>
                                <a href="./bootstrap/index2.html">Dashboard 2</a>
                            </li>
                            <li>
                                <a href="./bootstrap/index3.html">Dashboard 3</a>
                            </li>
                            <li>
                                <a href="./bootstrap/index4.html">Dashboard 4</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="./bootstrap/chart.html">
                            <i class="fas fa-chart-bar"></i>Charts</a>
                    </li>
                    <li class="active">
                        <a href="./bootstrap/table.html">
                            <i class="fas fa-table"></i>Tables</a>
                    </li>
                    <li>
                        <a href="./bootstrap/form.html">
                            <i class="far fa-check-square"></i>Forms</a>
                    </li>
                    <li>
                        <a href="./bootstrap/calendar.html">
                            <i class="fas fa-calendar-alt"></i>Calendar</a>
                    </li>
                    <li>
                        <a href="./bootstrap/map.html">
                            <i class="fas fa-map-marker-alt"></i>Maps</a>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-copy"></i>Pages</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="./bootstrap/login.html">Login</a>
                            </li>
                            <li>
                                <a href="./bootstrap/register.html">Register</a>
                            </li>
                            <li>
                                <a href="./bootstrap/forget-pass.html">Forget Password</a>
                            </li>
                        </ul>
                    </li>
                    <li class="has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-desktop"></i>UI Elements</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="./bootstrap/button.html">Button</a>
                            </li>
                            <li>
                                <a href="./bootstrap/badge.html">Badges</a>
                            </li>
                            <li>
                                <a href="./bootstrap/tab.html">Tabs</a>
                            </li>
                            <li>
                                <a href="./bootstrap/card.html">Cards</a>
                            </li>
                            <li>
                                <a href="./bootstrap/alert.html">Alerts</a>
                            </li>
                            <li>
                                <a href="./bootstrap/progress-bar.html">Progress Bars</a>
                            </li>
                            <li>
                                <a href="./bootstrap/modal.html">Modals</a>
                            </li>
                            <li>
                                <a href="./bootstrap/switch.html">Switchs</a>
                            </li>
                            <li>
                                <a href="./bootstrap/grid.html">Grids</a>
                            </li>
                            <li>
                                <a href="./bootstrap/fontawesome.html">Fontawesome Icon</a>
                            </li>
                            <li>
                                <a href="./bootstrap/typo.html">Typography</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <!-- END MENU SIDEBAR-->

    <!-- PAGE CONTAINER-->
    <div class="page-container">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap">
                        <form class="form-header" action="/note?action=search" method="GET">
                            <input type="hidden" name="action" value="search">
                            <input class="au-input au-input--xl" type="text" name="title" id="title"
                                   placeholder="Search for Title..."/>
                            <button class="au-btn--submit" type="submit" value="Search">
                                <i class="zmdi zmdi-search"></i>
                            </button>
                        </form>
                        <div class="header-button">
                            <div class="noti-wrap">
                                <div class="noti__item js-item-menu">
                                    <i class="zmdi zmdi-comment-more"></i>
                                    <span class="quantity">1</span>
                                    <div class="mess-dropdown js-dropdown">
                                        <div class="mess__title">
                                            <p>You have 2 news message</p>
                                        </div>
                                        <div class="mess__item">
                                            <div class="image img-cir img-40">
                                                <img src="./bootstrap/images/icon/avatar-06.jpg" alt="Michelle Moreno"/>
                                            </div>
                                            <div class="content">
                                                <h6>Michelle Moreno</h6>
                                                <p>Have sent a photo</p>
                                                <span class="time">3 min ago</span>
                                            </div>
                                        </div>
                                        <div class="mess__item">
                                            <div class="image img-cir img-40">
                                                <img src="./bootstrap/images/icon/avatar-04.jpg" alt="Diane Myers"/>
                                            </div>
                                            <div class="content">
                                                <h6>Diane Myers</h6>
                                                <p>You are now connected on message</p>
                                                <span class="time">Yesterday</span>
                                            </div>
                                        </div>
                                        <div class="mess__footer">
                                            <a href="#">View all messages</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="noti__item js-item-menu">
                                    <i class="zmdi zmdi-email"></i>
                                    <span class="quantity">1</span>
                                    <div class="email-dropdown js-dropdown">
                                        <div class="email__title">
                                            <p>You have 3 New Emails</p>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="./bootstrap/images/icon/avatar-06.jpg" alt="Cynthia Harvey"/>
                                            </div>
                                            <div class="content">
                                                <p>Meeting about new dashboard...</p>
                                                <span>Cynthia Harvey, 3 min ago</span>
                                            </div>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="./bootstrap/images/icon/avatar-05.jpg" alt="Cynthia Harvey"/>
                                            </div>
                                            <div class="content">
                                                <p>Meeting about new dashboard...</p>
                                                <span>Cynthia Harvey, Yesterday</span>
                                            </div>
                                        </div>
                                        <div class="email__item">
                                            <div class="image img-cir img-40">
                                                <img src="./bootstrap/images/icon/avatar-04.jpg" alt="Cynthia Harvey"/>
                                            </div>
                                            <div class="content">
                                                <p>Meeting about new dashboard...</p>
                                                <span>Cynthia Harvey, April 12,,2018</span>
                                            </div>
                                        </div>
                                        <div class="email__footer">
                                            <a href="#">See all emails</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="noti__item js-item-menu">
                                    <i class="zmdi zmdi-notifications"></i>
                                    <span class="quantity">3</span>
                                    <div class="notifi-dropdown js-dropdown">
                                        <div class="notifi__title">
                                            <p>You have 3 Notifications</p>
                                        </div>
                                        <div class="notifi__item">
                                            <div class="bg-c1 img-cir img-40">
                                                <i class="zmdi zmdi-email-open"></i>
                                            </div>
                                            <div class="content">
                                                <p>You got a email notification</p>
                                                <span class="date">April 12, 2018 06:50</span>
                                            </div>
                                        </div>
                                        <div class="notifi__item">
                                            <div class="bg-c2 img-cir img-40">
                                                <i class="zmdi zmdi-account-box"></i>
                                            </div>
                                            <div class="content">
                                                <p>Your account has been blocked</p>
                                                <span class="date">April 12, 2018 06:50</span>
                                            </div>
                                        </div>
                                        <div class="notifi__item">
                                            <div class="bg-c3 img-cir img-40">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <div class="content">
                                                <p>You got a new file</p>
                                                <span class="date">April 12, 2018 06:50</span>
                                            </div>
                                        </div>
                                        <div class="notifi__footer">
                                            <a href="#">All notifications</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="account-wrap">
                                <div class="account-item clearfix js-item-menu">
                                    <div class="image">
                                        <img src="./bootstrap/images/icon/avatar-01.jpg" alt="John Doe"/>
                                    </div>
                                    <div class="content">
                                        <a class="js-acc-btn" href="#">john doe</a>
                                    </div>
                                    <div class="account-dropdown js-dropdown">
                                        <div class="info clearfix">
                                            <div class="image">
                                                <a href="#">
                                                    <img src="./bootstrap/images/icon/avatar-01.jpg" alt="John Doe"/>
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h5 class="name">
                                                    <a href="#">john doe</a>
                                                </h5>
                                                <span class="email">johndoe@example.com</span>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__body">
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-account"></i>Account</a>
                                            </div>
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-settings"></i>Setting</a>
                                            </div>
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-money-box"></i>Billing</a>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__footer">
                                            <a href="#">
                                                <i class="zmdi zmdi-power"></i>Logout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- END HEADER DESKTOP-->

        <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-md-12">
                            <!-- DATA TABLE -->
                            <h3 class="title-5 m-b-35">Note Table</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md">
                                        <select class="js-select2" name="property">
                                            <option selected="selected">All Properties</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <div class="rs-select2--light rs-select2--sm">
                                        <select class="js-select2" name="time">
                                            <option selected="selected">Today</option>
                                            <option value="">3 Days</option>
                                            <option value="">1 Week</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>filters
                                    </button>
                                </div>
                                <div class="table-data__tool-right">

                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <a href="/note">
                                            Show Note Type
                                        </a>
                                    </button>
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <a href="/account?action=create">
                                            add item
                                        </a>
                                    </button>
                                    <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                        <select class="js-select2" name="type">
                                            <option selected="selected">Export</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                    <tr>
                                        <th>
                                            <label class="au-checkbox">
                                                <span class="au-checkmark"></span>
                                            </label>
                                        </th>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>User Name</th>
                                        <th>Password</th>
                                        <th>Email</th>
                                        <th>Phone Number</th>
                                        <th>Address</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <c:forEach var="account" items="${accountList}">
                                        <tbody>
                                        <tr class="spacer"></tr>
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td><c:out value="${account.id}"/></td>
                                            <td><c:out value="${account.name}"/></td>
                                            <td><c:out value="${account.use_name}"/></td>
                                            <td><c:out value="${account.password}"/></td>
                                            <td><c:out value="${account.email}"/></td>
                                            <td><c:out value="${account.phoneNumber}"/></td>
                                            <td><c:out value="${account.address}"/></td>
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top"
                                                            title="Edit">
                                                        <a href="/account?action=edit&id=${account.id}">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </a>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top"
                                                            title="Delete">
                                                        <a href="/account?action=delete&id=${account.id}"> <i
                                                                class="zmdi zmdi-delete"></i></a>
                                                        <a href="#" onclick="deleteNote(${account.id})"
                                                           class="delete" title="Delete"> <i
                                                                class="zmdi zmdi-delete"></i></a>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                            <!-- END DATA TABLE -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copyright">
                                <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a
                                        href="https://colorlib.com">Colorlib</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function deleteNote(id) {
            let showMessage = confirm("Do you want to delete this note ?");
            if (showMessage) {
                alert("Delete successfully!")
                window.location = "/note?action=delete&id=" + id;
            } else {
            }
        }
    </script>

</div>

<!-- Jquery JS-->
<script src="./bootstrap/vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="./bootstrap/vendor/bootstrap-4.1/popper.min.js"></script>
<script src="./bootstrap/vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS -->
<script src="./bootstrap/vendor/slick/slick.min.js">
</script>
<script src="./bootstrap/vendor/wow/wow.min.js"></script>
<script src="./bootstrap/vendor/animsition/animsition.min.js"></script>
<script src="./bootstrap/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="./bootstrap/vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="./bootstrap/vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="./bootstrap/vendor/circle-progress/circle-progress.min.js"></script>
<script src="./bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="./bootstrap/vendor/chartjs/Chart.bundle.min.js"></script>
<script src="./bootstrap/vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="./bootstrap/js/main.js"></script>

</body>

</html>
<!-- end document-->
