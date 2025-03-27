<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computerised TTE Lobby</title>
    <meta name="description" content="A JSP-based version of the Next.js header component.">
    <link rel="stylesheet" href="styles.css"> <!-- Ensure styles are linked -->
    
    <!-- Add Tailwind CSS CDN (If not using a build tool) -->
    <script src="https://cdn.tailwindcss.com"></script>
    
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

            typeText();
        });
    </script>
    <script>
        function changeLanguage() {
            let selector = document.getElementById("languageSelector");
            let lang = selector.value;

            // Save the selected language to localStorage
            localStorage.setItem("selectedLanguage", lang);
            
            if (lang === "hi") {

                let welcome = document.querySelector('#welcome')
                welcome.innerHTML = "टीटीई लॉबी एप्लीकेशन में आपका स्वागत है"
                welcome.classList.remove("lg:text-4xl")
                welcome.classList.add("lg:text-[40px]", "p-1")

                document.body.innerHTML = document.body.innerHTML
                    .replace(/TTE Lobby/g, "टीटीई लॉबी")
                    .replace(/Home/g, "मुख्य पृष्ठ")
                    .replace(/About/g, "परिचय")
                    .replace(/Sign On \(Duty\)/g, "ड्यूटी साइन ऑन")
                    .replace(/Sign Off \(Duty\)/g, "ड्यूटी साइन ऑफ")
                    .replace(/BENEFITS TO TTEs/g, "टीटीई को लाभ")
                    .replace(/Logout/g, "लॉगआउट")
                    .replace(/Forgot Password/g, "पासवर्ड भूल गए")
                    .replace(/Drawing out of TTE links./g, "टीटीई लिंक्स को निकालना।")
                    .replace(/Accountal of duty hours./g, "ड्यूटी घंटों का लेखा-जोखा।")
                    .replace(/Preparation of TA\/night duty allowance bills./g, "यात्रा भत्ता/रात्रि ड्यूटी भत्ता बिल तैयार करना।")
                    .replace(/Login/g, "लॉगिन");

                // Restore the selected value in the dropdown
                document.getElementById("languageSelector").value = "hi";
            } else {
                location.reload(); // Reload to reset back to English
            }
        }
    
        function changeFontSize(value) {
            let elements = document.querySelectorAll("body, body *"); // Select all elements inside body
            elements.forEach(el => {
                let currentSize = window.getComputedStyle(el).fontSize;
                let newSize = parseInt(currentSize) + value;
                el.style.fontSize = newSize + "px"; // Apply new size
            });
        }

        

    </script>
</head>
<body>

<div class="border-b-[0.1px] border-gray-300 animate-fadeIn">
    <div class="flex justify-end space-x-4 pr-[12em] bg-black bg-opacity-50 items-center text-white">
        <!-- Language Selector -->
        <select id="languageSelector" onchange="changeLanguage()" class="bg-gray-700 text-white px-3 py-1 rounded-lg">
            <option value="en">English</option>
            <option value="hi">हिन्दी</option>
        </select>
    
        <!-- Font Size Controls -->
        <button onclick="changeFontSize(1)" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-3 rounded-lg">A+</button>
        <button onclick="changeFontSize(-1)" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-3 rounded-lg">A-</button>
    </div>
    <div class="h-[90px] sm:h-[80px] flex justify-between items-center text-center opacity-80">
        
        <div class="flex justify-center items-center">
            <!-- Left Logo -->
            <img class="pl-5" src="assets/irlogo.svg" alt="IR Logo" width="90" height="90">
        </div>

        <ul class="flex font-bold text-sm lg:text-[18px] md:text-lg h-full items-center justify-center">

            <!-- Typing Effect Heading -->
            <h1 id="typing-text" class="font-['Big_Shoulders'] font-bold pr-7 lg:text-4xl text-lg font-extrabold bg-gradient-to-r from-yellow-300 to-yellow-500 text-transparent bg-clip-text"></h1>

            <button class="h-full transform hover:scale-110 hover:text-bold glow duration-300 flex items-center px-5">
                <a href="About.jsp" class="text-white font-semibold">About</a>
                <span class="w-6 h-6 text-white font-bold">▼</span> <!-- Replacing ChevronDown -->
            </button>
            <li class="h-full flex items-center px-5">
                <button href="index.jsp" class="text-white font-semibold py-4 rounded-lg transition transform hover:scale-110 flex items-center gap-2 hover:text-white hover:text-bold glow">Home</button>
            </li>
            <li class="h-full flex items-center px-5">
                <button onclick="openModal('loginModal')"
                    class="text-white font-semibold py-4 rounded-lg transition transform hover:scale-110 
                           flex items-center gap-2 hover:text-white hover:font-bold glow">
                    <img src="assets/log-in.png" alt="Sign On" width="20" height="20">
                    Sign On (Duty)
                </button>
            </li>
            
            <li class="h-full flex items-center px-5">
                <button onclick="openModal('loginModal')"
                    class="text-white font-semibold py-4 rounded-lg transition transform hover:scale-110 
                           flex items-center gap-2 hover:text-white hover:font-bold glow">
                    <img src="assets/exit.png" alt="Sign Off" width="20" height="20">
                    Sign Off (Duty)
                </button>
            </li>            
        </ul>

        <!-- Right Logo -->
        <div class="flex items-center">
            <a class="pr-8" href="https://www.cris.org.in">
                <img src="assets/cris_logo.png" alt="CRIS Logo" width="150" height="100">
            </a>
        </div>
    </div>

</div>

<jsp:include page="helpSidebar.jsp"/>

<!-- Login Modal -->
<jsp:include page="Login.jsp" />

<!-- JavaScript for Modal Handling -->
<script>
    function openModal(id) {
        document.getElementById(id).classList.remove("hidden");
    }
    function closeModal(id) {
        document.getElementById(id).classList.add("hidden");
    }
</script>

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
