<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar</title>

    <!-- Bootstrap 4.5.2 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    
    <link rel="stylesheet" href="homepage.css">

    <script>
        function checkLoginStatus() {
            var username = localStorage.getItem("uid");
            if (!username) {
                window.location.href = "index.jsp";
            } else {
                document.getElementById("welcomeMessage").innerText = "Welcome, " + username;
            }
        }

        function logout() {
            localStorage.removeItem("uid");
            window.location.href = "index.jsp";
        }
    </script>
</head>
<body onload="checkLoginStatus()">

    <!-- Sidebar -->
    <div class="sidebar" id="d_sidebar">
        <ul class="list-unstyled p-3">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="assets/irlogo.svg" alt="IR Logo" width="60" height="60" class="mr-2">
                <span class="font-weight-semibold dashboard-text">Dashboard</span>
            </a>
            <span id="welcomeMessage" class="font-weight-bold mt-3 ml-3 mr-3 d-block"></span>
            <li><a href="#"><i class="fa fa-user"></i><span class="text ml-2">Profile</span></a></li>
            <li><a href="#"><i class="fa fa-cog"></i><span class="text ml-2">Settings</span></a></li>
            <li><a href="#"><i class="fa fa-bell"></i><span class="text ml-2">Alerts</span></a></li>
            <li><a href="#"><i class="fa-solid fa-question"></i><span class="text ml-2">Help</span></a></li>
            <li><a href="#"><i class="fa fa-sign-out-alt"></i><span onclick="logout()" class="text ml-2">Logout</span></a></li>
        </ul>
    </div>

    <!-- JavaScript -->
    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById("d_sidebar");
            var navbar = document.querySelector(".navbar");
            var content = document.getElementById("content-container");
            var welcome = document.getElementById("welcomeMessage");
            var screenWidth = window.innerWidth;

            if (screenWidth <= 768) {
                sidebar.classList.toggle("sidebar-open");
                return;
            }

            var isCollapsed = sidebar.classList.contains("collapsed");

            if (isCollapsed) {
                sidebar.classList.remove("collapsed");

                if (screenWidth > 992) {
                    navbar.style.left = "250px";
                    navbar.style.width = "calc(100% - 250px)";
                    content.style.marginLeft = "250px";
                } else {
                    navbar.style.left = "200px";
                    navbar.style.width = "calc(100% - 200px)";
                    content.style.marginLeft = "200px";
                }

                var username = localStorage.getItem("uid");
                if (username) welcome.innerText = "Welcome, " + username;
                welcome.classList.add("ml-3");

            } else {
                sidebar.classList.add("collapsed");

                navbar.style.left = "80px";
                navbar.style.width = "calc(100% - 80px)";
                content.style.marginLeft = "80px";

                var username = localStorage.getItem("uid");
                if (username) welcome.innerText = username;
                welcome.classList.remove("ml-3");
            }
        }

        window.addEventListener("resize", function () {
            var sidebar = document.getElementById("d_sidebar");
            var navbar = document.querySelector(".navbar");
            var content = document.getElementById("content-container");
            var welcome = document.getElementById("welcomeMessage");
            var screenWidth = window.innerWidth;
            var username = localStorage.getItem("uid");

            if (screenWidth <= 768) {
                navbar.style.left = "0";
                navbar.style.width = "100%";
                content.style.marginLeft = "0";
                if (username) welcome.innerText = username;
                return;
            }

            if (sidebar.classList.contains("collapsed")) {
                navbar.style.left = "80px";
                navbar.style.width = "calc(100% - 80px)";
                content.style.marginLeft = "80px";
                if (username) welcome.innerText = username;
                welcome.classList.remove("ml-3");
            } else {
                if (screenWidth > 992) {
                    navbar.style.left = "250px";
                    navbar.style.width = "calc(100% - 250px)";
                    content.style.marginLeft = "250px";
                } else {
                    navbar.style.left = "200px";
                    navbar.style.width = "calc(100% - 200px)";
                    content.style.marginLeft = "200px";
                }

                if (username) welcome.innerText = "Welcome, " + username;
                welcome.classList.add("ml-3");
            }
        });

        document.addEventListener("click", function (e) {
            var sidebar = document.getElementById("d_sidebar");
            var toggleButton = document.getElementById("sidebarToggleBtn");
            var screenWidth = window.innerWidth;

            if (screenWidth <= 768) {
                var clickedOutsideSidebar = !sidebar.contains(e.target);
                var clickedOutsideToggleBtn = !toggleButton || !toggleButton.contains(e.target);

                if (clickedOutsideSidebar && clickedOutsideToggleBtn) {
                    if (sidebar.classList.contains("sidebar-open")) {
                        sidebar.classList.remove("sidebar-open");

                        var navbar = document.querySelector(".navbar");
                        var content = document.getElementById("content-container");

                        navbar.style.left = "0";
                        navbar.style.width = "100%";
                        content.style.marginLeft = "0";
                    }
                }
            }
        });
    </script>

    <!-- Bootstrap 4.5.2 JS + jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
