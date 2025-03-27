<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traveling Ticket Examiner Lobby</title>
    <!-- <link rel="stylesheet" href="styles.css"> -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders:opsz,wght@10..72,100..900&display=swap" rel="stylesheet"/>
</head>
<body>
    <div class="flex flex-col min-h-screen">

        <!-- Background Image -->
        <div class="railway absolute w-full h-[calc(100vh+560px)] md:h-[calc(100vh)] lg:h-[calc(100vh+50px)]" style="opacity: 0.9; position: absolute; z-index: -1;">
            <img src="assets/irly.jpg" alt="Background" style="width: 100%; height: 100%; object-fit: cover;">
        </div>
        
        <!-- Include Header -->
        <jsp:include page="Header.jsp" />

        <!-- Hero Section -->
        <main class="flex-grow pt-2">
            <jsp:include page="HeroSection.jsp" />
        </main>

        <!-- Include Footer -->
        <jsp:include page="Footer.jsp" />

    </div>
</body>
</html>
