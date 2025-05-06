<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traveling Ticket Examiner Lobby</title>

    <!-- Bootstrap 4.5.2 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders:opsz,wght@10..72,100..900&display=swap" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="homepage.css">

    <!-- jQuery (required for Bootstrap 4.5) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <!-- Popper.js (required for Bootstrap 4.5) -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Bootstrap 4.5.2 JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        function checkLoginStatus() {
            let username = localStorage.getItem("uid");
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

        function toggleSidebar() {
            document.querySelector(".sidebar").classList.toggle("active");
        }
    </script>
</head>

<body onload="checkLoginStatus()">
    <div class="background-container">
        <img src="assets/irly.jpg" alt="Background">
    </div>

    <div class="d-flex flex-column">
        <div class="d-flex">
            <!-- Sidebar -->
            <jsp:include page="d_sidebar.jsp" />

            <div class="w-100">
                <!-- Navbar -->
                <nav class="navbar shadow-sm top-0" style="height: 60px; z-index: 1000;">
                    <div class="d-flex justify-content-between align-items-center h-100 px-3 w-100">
                        <!-- Left: Hamburger Button -->
                        <button id="sidebarToggleBtn" class="btn btn-light" onclick="toggleSidebar()">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Right: Other Navbar Items -->
                        <div class="d-flex align-items-center">
                            <!-- Optional Welcome Message -->
                            <!-- <span id="welcomeMessage" class="fw-semibold me-3"></span> -->
                            <a href="https://www.cris.org.in">
                                <img src="assets/cris_logo2.png" alt="CRIS Logo" width="120" height="50">
                            </a>
                        </div>
                    </div>
                </nav>

                <!-- Cards Section -->
                <div id="content-container">
                    <!-- <jsp:include page="d_card.jsp" /> -->
                </div>

                <iframe class="qlik ml-auto d-block"
                        src="https://osivamh5v2wvbf2.in.qlikcloud.com/single/?appid=470b16cd-1aff-4d3d-979e-5d27f63c7356&sheet=nkjjJj&theme=horizon&opt=ctxmenu,currsel"
                        style="border: none; padding-right: 10px; width: 80%; height: 600px;">
                </iframe>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp" />
</body>
</html>
