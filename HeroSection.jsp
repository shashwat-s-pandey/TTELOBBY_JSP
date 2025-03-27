<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hero Section - TTE Lobby</title>
    <link rel="stylesheet" href="styles.css"> <!-- Ensure styles are linked -->
    
    <!-- Add Tailwind CSS CDN (Optional) -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        window.onload = function () {
            updateDateTime(); // Run immediately
            setInterval(updateDateTime, 1000); // Update every second
        };

        function updateDateTime() {
            let now = new Date();
            let lang = localStorage.getItem("selectedLanguage") || "en"; // Get selected language from localStorage

            let options = { 
                weekday: 'short', year: 'numeric', month: 'short', day: 'numeric', 
                hour: '2-digit', minute: '2-digit', second: '2-digit'
            };

            // Set language dynamically
            let locale = lang === "hi" ? "hi-IN" : "en-IN";

            document.getElementById("dateTime").textContent = now.toLocaleString(locale, options);
        }
    </script>
</head>
<body>

<jsp:include page="sidebar.jsp"/>
<section class="animate-fadeIn bg-transparent text-center flex flex-col justify-center min-h-[40vh]">
    <p id="dateTime" class="mr-5 mb-5 text-white font-semibold text-right"></p>
    <h1 id="welcome" class="lg:text-4xl md:text-2xl sm:text-2xl text-2xl font-bold bg-gradient-to-r from-blue-100 to-yellow-400 text-transparent bg-clip-text">
        <span class="text-[40px]">W</span>
        <span class="-ml-[10px]">elcome to the Traveling Ticket Examiner Lobby Application</span>
    </h1>
    
    <!-- Include Features Section -->
     <div class="flex justify-center items-center">
        <jsp:include page="Features.jsp" />
     </div>
</section>

</body>
</html>
