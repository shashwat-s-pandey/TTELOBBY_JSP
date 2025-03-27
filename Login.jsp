<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
        generateCaptcha(); // Generate CAPTCHA immediately when the page loads
    });
        
        function openModal(modalId) {
            const modal = document.getElementById(modalId);
            const infoIcon = document.getElementById("infoicon");
            if (!modal) return;

            // Prevent scrolling
            document.body.style.overflow = "hidden";

            // Hide the info icon
            infoIcon.style.display = "none";  // 👈 Hides the icon when modal opens

            // Show modal
            modal.classList.remove("pointer-events-none", "opacity-0", "scale-95");
            modal.classList.add("opacity-100", "scale-100");
        }

        function closeModal(modalId) {
            const modal = document.getElementById(modalId);
            const infoIcon = document.getElementById("infoicon");
            if (!modal) return;

            // Allow scrolling again
            document.body.style.overflow = "auto";

            // Hide modal
            modal.classList.remove("opacity-100", "scale-100");
            modal.classList.add("opacity-0", "scale-95");

            // Show the info icon again
            infoIcon.style.display = "flex";  // 👈 Makes the icon visible again

            // Disable interactions after animation
            setTimeout(() => {
                modal.classList.add("pointer-events-none");
            }, 300);
            generateCaptcha();
        }


        // Close modal when clicking outside the modal content
        window.addEventListener("click", function (event) {
            const modal = document.getElementById("loginModal");
            if (modal && event.target === modal) {
                generateCaptcha();
                closeModal("loginModal");
            }
        });

        // Generate a random alphanumeric CAPTCHA
        function generateCaptcha() {
            const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            let captcha = "";
            for (let i = 0; i < 6; i++) {
                captcha += chars.charAt(Math.floor(Math.random() * chars.length));
            }

            let canvas = document.getElementById("captchaCanvas");
            let ctx = canvas.getContext("2d");

            // Clear previous CAPTCHA
            ctx.clearRect(0, 0, canvas.width, canvas.height);

            // Set random background color
            ctx.fillStyle = "#f8f9fa"; 
            ctx.fillRect(0, 0, canvas.width, canvas.height);

            // Apply text styles
            ctx.font = "30px Arial";
            ctx.fillStyle = getRandomColor();
            ctx.textBaseline = "middle";

            // Add slight text distortion
            let x = 10;
            for (let i = 0; i < captcha.length; i++) {
                ctx.save();
                ctx.translate(x, 30);
                ctx.rotate(Math.random() * 0.2 - 0.1); // Random tilt
                ctx.fillText(captcha[i], 0, 0);
                ctx.restore();
                x += 20;
            }

            // Save CAPTCHA text
            document.getElementById("captchaText").value = captcha;
            document.getElementById("captchaInput").value = ""; // Clear input field
        }

        // Function to generate a random color
        function getRandomColor() {
            let letters = "0123456789ABCDEF";
            let color = "#";
            for (let i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }

        function handleLogin(event) {
            event.preventDefault();

            let uid = document.getElementById("uid").value;
            let password = document.getElementById("password").value;
            let captchaInput = document.getElementById("captchaInput").value;
            let generatedCaptcha = document.getElementById("captchaText").value;

            // Hardcoded credentials
            const staticUID = "admin";
            const staticPassword = "password123";

            if (captchaInput !== generatedCaptcha) {
                document.getElementById("errorMessage").innerText = "Captcha does not match!";
                generateCaptcha();
                return;
            }

            if (uid === staticUID && password === staticPassword) {
                localStorage.setItem("token", "static_token");
                localStorage.setItem("uid", uid);
                window.location.href = "dashboard.jsp";
            } else {
                document.getElementById("errorMessage").innerText = "Invalid credentials!";
                generateCaptcha(); // Refresh CAPTCHA on failure
            }
        }

    </script>
</head>

<body">

<!-- Login Modal -->
<div id="loginModal" 
    class="fixed inset-0 bg-black bg-opacity-30 backdrop-blur-sm hidden flex justify-center items-center z-[1100] transition-opacity duration-300 ease-out">
    
    <div class="modal-content bg-white/70 p-6 rounded-lg shadow-2xl w-96 relative transform scale-95 transition-all duration-300 ease-out">
        <h2 class="text-2xl text-center text-blue-500 font-extrabold mb-4 tracking-wide drop-shadow-lg">
            Login
        </h2>        

        <form onsubmit="handleLogin(event)">
            <input 
                type="text" 
                id="uid" 
                placeholder="User ID" 
                class="w-full border border-gray-300 p-2 rounded mb-2 focus:ring-2 focus:ring-yellow-400 outline-none"
                required
            />
            <input 
                type="password" 
                id="password" 
                placeholder="Password" 
                class="w-full border border-gray-300 p-2 rounded mb-4 focus:ring-2 focus:ring-yellow-400 outline-none"
                required
            />

            <!-- CAPTCHA -->
            <div class="flex items-center mb-4">
                <canvas id="captchaCanvas" width="150" height="50" class="rounded bg-gray-200"></canvas>
                <input type="hidden" id="captchaText">
                <button type="button" onclick="generateCaptcha()" class="text-blue-500 hover:underline ml-2 mt-1">
                    Refresh
                </button>
            </div>
            <input 
                type="text" 
                id="captchaInput" 
                placeholder="Enter CAPTCHA" 
                class="w-full border border-gray-300 p-2 rounded mb-4 focus:ring-2 focus:ring-yellow-400 outline-none"
                required
            />

            <p id="errorMessage" class="text-red-500 text-sm text-center mb-2"></p>
            <p id="loadingMessage" class="text-blue-500 text-sm text-center mb-2"></p>

            <button 
                type="submit"
                class="w-full p-2 mb-2 bg-blue-500 text-white drop-shadow-lg ease-out transform hover:scale-105 transition duration-200 rounded"
            >
                Login
            </button>

            <div class="flex justify-end">
                <a class="mb-4 mt-2 text-violet-500 hover:font-semibold duration-300 inline-flex" href="#">Forgot Password?</a>
            </div>
        </form>        

        <button class="w-full drop-shadow-lg ease-out transform hover:scale-105 transition duration-200 bg-teal-500 text-white p-2 rounded" onclick="closeModal('loginModal')">Close</button>
    </div>
</div>

</body>
<script src="https://cdn.tailwindcss.com"></script>
</html>
