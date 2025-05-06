<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computerised TTE Lobby</title>
    <meta name="description" content="A JSP-based version of the Next.js header component.">
    <link rel="stylesheet" href="homepage.css"> <!-- Link to your custom CSS -->

    <!-- Bootstrap 4.5 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery and Popper.js for Bootstrap 4.5 -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- FontAwesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@700&display=swap" rel="stylesheet">

    <!-- Typing Effect -->
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

            typeText();
        });
    </script>

    <!-- Language Switching and Font Resize -->
    <script>
        const translations = {
            hi: {
                title: "टीटीई लॉबी",
                welcome: "टीटीई लॉबी एप्लीकेशन में आपका स्वागत है",
                home: "मुख्य पृष्ठ",
                about: "परिचय",
                signin: "ड्यूटी साइन ऑन",
                signoff: "ड्यूटी साइन ऑफ",
                benefits: "टीटीई को लाभ",
                logout: "लॉगआउट",
                forgot: "पासवर्ड भूल गए",
                login: "लॉगिन",
                draw_links: "टीटीई लिंक्स को निकालना।",
                accountal: "ड्यूटी घंटों का लेखा-जोखा।",
                ta: "यात्रा भत्ता/रात्रि ड्यूटी भत्ता बिल तैयार करना।",
                eft: "ईएफटी कमाई लेखा।"
            },
            en: {
                title: "TTE Lobby",
                welcome: "Welcome to TTE Lobby Application",
                home: "Home",
                about: "About ▼",
                signin: "Sign On (Duty)",
                signoff: "Sign Off (Duty)",
                benefits: "BENEFITS TO TTEs",
                logout: "Logout",
                forgot: "Forgot Password",
                login: "Login",
                draw_links: "Drawing out of TTE links.",
                accountal: "Accountal of duty hours.",
                ta: "Preparation of TA/night duty allowance bills.",
                eft: "EFT earning accountal."
            }
        };

        function changeLanguage() {
            const lang = document.getElementById("languageSelector").value;
            const selected = translations[lang];
            localStorage.setItem("selectedLanguage", lang);

            document.querySelectorAll("[data-key]").forEach(el => {
                const key = el.getAttribute("data-key");
                if (selected[key]) {
                    el.innerHTML = selected[key];
                }
            });

            const welcome = document.querySelector('#welcome');
            if (lang === "hi") {
                welcome.classList.remove("lg:text-4xl");
                welcome.classList.add("lg:text-[40px]", "p-1");
            } else {
                welcome.classList.remove("lg:text-[40px]", "p-1");
                welcome.classList.add("lg:text-4xl");
            }
        }
        
        let baseFontSize = 16; // default root font size in px

        function changeFontSize(value) {
            baseFontSize += value;

            // Set the new base font size on <html> or <body>
            document.documentElement.style.fontSize = baseFontSize + "px";
        }

    </script>
    <style>
        /* Custom navbar styles */
        #mainbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
        }

        #headlinks {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        #headlinks a {
            color: white;
            text-decoration: none;
            font-weight: 500;
        }

        #customToggle {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 24px;
            cursor: pointer;
            width: 40px; /* Fixed width */
            height: 40px; /* Fixed height */
            padding: 8px; /* Proper padding */
            position: relative; /* For absolute positioning of icon */
        }

        #customToggle i {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            text-align: center;
        }

        /* Ensure no other elements are interfering */
        #customToggle {
            z-index: 1001; /* Higher than other elements */
        }

        #customNav {
            width: 100%;
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
            position: relative;
            z-index: 1000;
            max-height: 0;
            overflow: hidden;
            padding: 0 25px; /* Increased horizontal padding */
            transition: max-height 0.2s ease-out, padding 0.2s ease-out; /* Faster transition */
        }

        #customNav.show {
            max-height: 500px;
            padding: 20px 25px; /* Increased vertical and horizontal padding */
            transition: max-height 0.2s ease-in, padding 0.2s ease-in; /*Faster transition*/
        }

        #customNav .nav-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 15px; /* Added gap between menu items */
        }

        #customNav a {
            padding: 8px 0; /* Added padding to menu items */
            color: white;
            text-decoration: none;
            font: bolder;
        }
        /* Add this to ensure smooth transition with content below */
        .header-container {
            position: relative;
            z-index: 1000; /* Ensure header stays above other content */
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Responsive styles */
        @media (max-width: 790px) {
            #customToggle {
                display: block;
            }
            
            #headlinks {
                display: none;
            }
        }

        @media (min-width: 791px) and (max-width: 992px) {
            #headlinks a {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<div class="header-container">
    <div class="border-bottom border-secondary text-white">
        <div class="d-flex bg-dark justify-content-end">
            <select id="languageSelector" onchange="changeLanguage()" class="btn btn-dark text-white mr-2">
                <option value="en">English</option>
                <option value="hi">हिन्दी</option>
            </select>
            <button onclick="changeFontSize(1)" class="btn btn-primary mr-2">A+</button>
            <button onclick="changeFontSize(-1)" class="btn btn-primary">A-</button>
        </div>

        <div id="mainbar">
            <div>
                <img id="irlogo" src="assets/irlogo.svg" alt="IR Logo" width="90" height="90">
            </div>

            <ul style="display: flex; align-items: center; list-style: none; margin: 0;">
                <h1 data-key="title" class="font-weight-bold pr-4 gradient-text" id="typing-text" style="font-family: 'Big Shoulders Display', sans-serif; margin-right: 20px;"></h1>

                <!-- Hamburger button -->
                <button id="customToggle">
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Desktop navigation -->
                <div id="headlinks">
                    <a data-key="about" class="glow" href="About.jsp">About ▼</a>
                    <a data-key="home" class="glow" href="index.jsp">Home</a>
                    <a data-key="signin" class="glow" href="#" onclick="openModal('loginModal')">
                        <img src="assets/log-in.png" width="20" height="20" style="vertical-align: middle;">
                        Sign On (Duty)
                    </a>
                    <a data-key="signoff" class="glow" href="#" onclick="openModal('loginModal')">
                        <img src="assets/exit.png" width="20" height="20" style="vertical-align: middle;">
                        Sign Off (Duty)
                    </a>
                </div>
            </ul>

            <div id="logoparent">
                <a id="crislogo" href="https://www.cris.org.in">
                    <img src="assets/cris_logo.png" alt="CRIS Logo" width="150" height="70">
                </a>
            </div>
        </div>

        <div id="customNav">
            <div class="nav-content">
                <a class="glow" href="About.jsp">About ▼</a>
                <a class="glow" href="index.jsp">Home</a>
                <a class="glow" href="#" onclick="openModal('loginModal')">
                    <!-- <img src="assets/log-in.png" width="20" height="20" style="vertical-align: middle;"> -->
                    Sign On (Duty)
                </a>
                <a class="glow" href="#" onclick="openModal('loginModal')">
                    <!-- <img src="assets/exit.png" width="20" height="20" style="vertical-align: middle;"> -->
                    Sign Off (Duty)
                </a>
            </div>
        </div>
    </div>
</div>
  
<jsp:include page="helpSidebar.jsp"/>
<jsp:include page="Login.jsp" />

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const toggleButton = document.getElementById("customToggle");
        const customNav = document.getElementById("customNav");
        const navContent = customNav.querySelector(".nav-content");
        const icon = toggleButton.querySelector("i");
        
        // Initialize
        customNav.style.maxHeight = "0";
        customNav.style.padding = "0 25px";

        // Smooth toggle with instant visual response
        toggleButton.addEventListener("click", function(e) {
            e.stopPropagation();
            const isOpen = customNav.classList.contains("show");
            
            if (isOpen) {
                // INSTANT COLLAPSE
                customNav.classList.remove("show");
                customNav.style.maxHeight = "0";
                customNav.style.padding = "0 25px";
                icon.classList.replace("fa-times", "fa-bars");
            } else {
                // INSTANT EXPAND
                customNav.classList.add("show");
                customNav.style.maxHeight = "500px"; // Adjust height if needed
                customNav.style.padding = "20px 25px";
                icon.classList.replace("fa-bars", "fa-times");
            }
        });
        
        customNav.querySelectorAll("a").forEach(link => {
            link.addEventListener("click", function() {
                // INSTANT COLLAPSE (like the main toggle)
                customNav.classList.remove("show");
                customNav.style.maxHeight = "0";
                customNav.style.padding = "0 25px";
                icon.classList.replace("fa-times", "fa-bars");
            });
        });
        
        function handleResponsive() {
            if (window.innerWidth > 790) {
                customNav.classList.remove("show");
                customNav.style.maxHeight = "";
                customNav.style.padding = "";
                icon.classList.replace("fa-times", "fa-bars");
            }
        }
        
        window.addEventListener("resize", handleResponsive);
    });
</script>


</body>
</html>
