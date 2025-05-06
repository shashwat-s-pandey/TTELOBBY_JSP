<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Qlik Dashboard</title>
    <!-- Bootstrap 4.5.2 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
    
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="homepage.css">

    <!-- JavaScript for Typing Effect -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const text = "TTE Lobby";
            let index = 0;
            const heading = document.getElementById("typing-text");

            function typeText() {
                if (index < text.length) {
                    heading.innerHTML = text.slice(0, index + 1);
                    index++;
                    setTimeout(typeText, 50);
                }
            }

            const bodytext = `The TTE Lobby Application is a digital system developed by CRIS to streamline the management of Traveling Ticket Examiners (TTEs) in Indian Railways. It automates key tasks such as duty allocation, sign-on/sign-off processes, train assignments, and reporting, making TTE operations more efficient. The application reduces paperwork and improves communication between railway divisions, ensuring smooth record-keeping and proper duty management.

The system includes several key modules. The Admin Module allows administrators to manage TTEs, assign teams, update duty rosters, allocate coaches, and oversee sign-on/off activities. The Master Module focuses on data management, handling interchange points, EFT booklets, and complaint records. The MIS Reports Module provides insights into TTE performance, duty compliance, earnings from excess fare tickets, and overall lobby performance.

For TTEs, the User Module offers features like marking attendance, filling duty reports, viewing assigned duties, and submitting complaints. Additional utilities include checking PNR status, train inquiries, fare calculations, and password management. Overall, the TTE Lobby Application is designed to enhance efficiency, accuracy, and transparency in managing TTE duties, making the system more reliable for both railway staff and passengers.`;

            let index2 = 0;
            const bdy = document.getElementById("typing-text2");

            function typeBody() {
                if (index2 < bodytext.length) {
                    bdy.innerHTML = bodytext.slice(0, index2 + 1);
                    index2++;
                    setTimeout(typeBody, 1)
                }
            }

            typeText();
            setTimeout(typeBody, 500); // Delay body typing effect slightly
        });
    </script>
</head>
<body>
    <!-- Background Image -->
    <div class="background-container">
        <img src="assets/irly.jpg" alt="Background">
    </div>
    <div>
        <div class="border-bottom border-secondary text-white">
            <div style="background-color: black;" class="d-flex justify-content-end">
                <!-- Language Selector -->
                <select id="languageSelector" onchange="changeLanguage()" class="btn btn-dark text-white mr-2">
                    <option value="en">English</option>
                    <option value="hi">हिन्दी</option>
                </select>
            
                <!-- Font Size Controls -->
                <button onclick="changeFontSize(1)" class="btn btn-primary mr-2">A+</button>
                <button onclick="changeFontSize(-1)" class="btn btn-primary">A-</button>
            </div>
            <div class="d-flex justify-content-start align-items-center">
                <div>
                    <img id="irlogo" class="pl-3" src="assets/irlogo.svg" alt="IR Logo" width="90" height="90">
                </div>

                <div class="d-flex justify-content-start align-items-center">
                    <!-- Typing Effect Heading -->
                    <h1 id="typing-text" class="px-4 font-weight-bold gradient-text" style="font-family: 'Big Shoulders Display', sans-serif;"></h1>
        
                    <div class="d-flex align-items-center list-unstyled" id="headlinks">
                        <li class="px-3"><a href="index.jsp" class="text-white font-weight-bold glow">Home</a></li>
                    </div>
                </div>
        
                <div id="logoparent" class="d-flex w-100 justify-content-end">
                    <a id="crislogo" href="https://www.cris.org.in">
                        <img src="assets/cris_logo.png" alt="CRIS Logo" width="150" height="70" style="margin-right: 15px;">
                    </a>
                </div>
            </div>
        </div>

        <h2 id="typing-text2" class="px-4 font-weight-bold" style="font-family: 'Big Shoulders Display', sans-serif;"></h2>

    </div>

    <!-- Include Footer -->
    <div style="bottom: 0;" class="position-fixed w-100">
        <jsp:include page="Footer.jsp" />
    </div>

    <!-- Bootstrap 4.5.2 JS (with Popper & Bootstrap JS only) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
