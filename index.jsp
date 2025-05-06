<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traveling Ticket Examiner Lobby</title>
    <link rel="stylesheet" href="homepage.css">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery (required for Bootstrap 4.5) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <!-- Popper.js (required for tooltips, dropdowns, etc.) -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Bootstrap 4.5.2 JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders:opsz,wght@10..72,100..900&display=swap" rel="stylesheet"/>
    
</head>
<body>

    <!-- Background Image -->
    <div class="background-container">
        <img src="assets/irly.jpg" alt="Background">
    </div>

    <div>
        
        <!-- Include Header -->
        <jsp:include page="Header.jsp" />
        
        <!-- Hero Section -->
        <div class="pt-3">
            <jsp:include page="HeroSection.jsp" />
        </div>

    </div>

    <!-- Include Footer -->
    <jsp:include page="Footer.jsp" />
</body>
</html>
