<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traveling Ticket Examiner Lobby</title>
    <!-- <link rel="stylesheet" href="styles.css"> -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        function checkLoginStatus() {
            let username = localStorage.getItem("uid"); // Get username from storage
            
            if (!username) {
                // Redirect to index.jsp if no user is logged in
                window.location.href = "index.jsp";
            } else {
                // Show welcome message
                document.getElementById("welcomeMessage").innerText = "Welcome, " + username;
            }
        }

        function logout() {
            localStorage.removeItem("uid"); // Clear user session
            window.location.href = "index.jsp"; // Redirect to home
        }
    </script>

    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders:opsz,wght@10..72,100..900&display=swap" rel="stylesheet"/>
</head>

<body onload="checkLoginStatus()">
    <div class="flex flex-col min-h-screen">

        <!-- Background Image -->
        <div class="railway absolute w-full h-[calc(100vh+560px)] md:h-[calc(100vh)] lg:h-[calc(100vh)]" style="opacity: 0.9; position: absolute; z-index: -1;">
            <img src="assets/irly.jpg" alt="Background" style="width: 100%; height: 100%; object-fit: cover;">
        </div>

        <div class="border-b-[0.1px] border-gray-300 animate-fadeIn">
            <div class="h-[90px] sm:h-[80px] flex justify-between items-center text-center opacity-80">
                
                <!-- Left Section -->
                <div class="flex">
                    <img class="pl-5" src="assets/irlogo.svg" alt="IR Logo" width="90" height="90">
                    <h1 class="text-white text-[30px] font-semibold py-4 items-center px-5 hover:text-white hover:text-bold">Dashboard</h1>
                </div>

                <!-- Right Section: CRIS Logo + Welcome Message -->
                <div class="flex items-center pr-8 space-x-4">
                    <span id="welcomeMessage" class="text-white font-semibold text-lg px-2"></span>
                    <button onclick="logout()" class="text-white font-semibold py-4 rounded-lg transition transform hover:scale-110 flex items-center px-5 hover:text-white hover:text-bold glow">
                        <img src="assets/exit.png" alt="Sign On" width="20" height="20">
                        <span class="pl-2">Log Out</span>
                    </button>
                    <a href="https://www.cris.org.in">
                        <img src="assets/cris_logo.png" alt="CRIS Logo" width="150" height="100">
                    </a>
                </div>
            </div>
        </div>

        <iframe src="https://osivamh5v2wvbf2.in.qlikcloud.com/single/?appid=a972b12d-666a-46ec-8a49-7dd39c6afb01&sheet=dGSNjcJ&opt=nointeraction" width="100%" height="600"></iframe>
        
        <!-- <div class="flex justify-center items-center">
            <img src="assets/railwaydashboard.png" alt="" height="1000" width="1000">
        </div> -->

        <!-- Include Footer -->
        <jsp:include page="Footer.jsp" />

    </div>

    <style>
        @keyframes neonGlow {
        0% { text-shadow: 0 0 15px rgba(255, 255, 255, 1); }
        50% { text-shadow: 0 0 15px rgba(255, 255, 255, 1); }
        100% { text-shadow: 0 0 15px rgba(255, 255, 255, 1); }
    }

    .glow {
        filter: brightness(5); /* Makes the text even brighter */
        transition: filter 0.3s ease-in-out, transform 0.3s ease-in-out;
    }

    .glow:hover {
        animation: neonGlow 0.5s ease-in-out infinite;
    }
    </style>

</body>

</html>
