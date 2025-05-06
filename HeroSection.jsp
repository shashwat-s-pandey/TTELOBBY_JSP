<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hero Section - TTE Lobby</title>

    <!-- CSS -->
    <link rel="stylesheet" href="homepage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery (required for Bootstrap) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <!-- Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- DateTime Script -->
    <script>
        window.onload = function () {
            updateDateTime();
            setInterval(updateDateTime, 1000);
        };

        function updateDateTime() {
            const now = new Date();
            const lang = localStorage.getItem("selectedLanguage") || "en";
            const options = {
                weekday: 'short', year: 'numeric', month: 'short', day: 'numeric',
                hour: '2-digit', minute: '2-digit', second: '2-digit'
            };
            const locale = lang === "hi" ? "hi-IN" : "en-IN";
            document.getElementById("dateTime").textContent = now.toLocaleString(locale, options);
        }
    </script>

    <!-- Gradient Text Styling -->
    <style>
        .text-gradient {
            background: linear-gradient(to right, #bfdbfe, #facc15);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .min-vh-40 {
            min-height: 40vh;
        }
    </style>
</head>

<body>

    <!-- Sidebar Include -->
    <jsp:include page="sidebar.jsp" />

    <!-- Hero Section -->
    <section class="text-center d-flex flex-column justify-content-center align-items-center min-vh-40 bg-transparent">
        
        <div class="container">
            <div class="row">
                <div class="col text-right">
                    <p id="dateTime" class="text-white font-weight-bold mb-2"></p>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <h1 data-key="welcome" id="heading1" class="font-weight-bold text-gradient">
                        <span class="d-inline-block" style="font-size: 48px; margin-right: -12px;">W</span>
                        <span>elcome to the Traveling Ticket Examiner Lobby Application</span>
                    </h1>
                </div>
            </div>

            <!-- Features Include -->
            <div class="row justify-content-center align-items-center mt-4">
                <jsp:include page="Features.jsp" />
            </div>
        </div>
    </section>

</body>
</html>
