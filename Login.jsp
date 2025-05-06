<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Modal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 4.5.2 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Script -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            generateCaptcha();
        });

        function generateCaptcha() {
            const chars = "ABCDEFGHJKMNPQRTUVWXYZ2346789"; // No O, 0, i, I, l, L, 1, 5, S, small letters; all caps
            let captcha = "";
            for (let i = 0; i < 6; i++) {
                captcha += chars.charAt(Math.floor(Math.random() * chars.length));
            }

            const canvas = document.getElementById("captchaCanvas");
            canvas.width = 180;  // Increased width
            canvas.height = 60;
            const ctx = canvas.getContext("2d");

            ctx.clearRect(0, 0, canvas.width, canvas.height);
            ctx.fillStyle = "#f8f9fa";
            ctx.fillRect(0, 0, canvas.width, canvas.height);

            ctx.font = "30px Arial";
            ctx.fillStyle = "#6c757d"; // Gray fill
            ctx.strokeStyle = "#000000"; // Black outline
            ctx.lineWidth = 1;
            ctx.textBaseline = "middle";

            let x = 15;
            for (let i = 0; i < captcha.length; i++) {
                ctx.save();
                ctx.translate(x, 30);
                ctx.rotate(Math.random() * 0.2 - 0.1);
                ctx.fillText(captcha[i], 0, 0);
                ctx.strokeText(captcha[i], 0, 0); // Add outline
                ctx.restore();
                x += 25; // More spacing
            }

            document.getElementById("captchaText").value = captcha;
            document.getElementById("captchaInput").value = "";
        }

        function handleLogin(event) {
            event.preventDefault();

            const uid = document.getElementById("uid").value;
            const password = document.getElementById("password").value;
            const captchaInput = document.getElementById("captchaInput").value;
            const generatedCaptcha = document.getElementById("captchaText").value;

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
                generateCaptcha();
            }
        }
    </script>
</head>

<body>

    <!-- Login Modal -->
    <div id="loginModal">
        <div>
            <h2 class="text-center text-primary font-weight-bold mb-4 text-uppercase" style="letter-spacing: 0.05em;">
                Login
            </h2>

            <form onsubmit="handleLogin(event)">
                <input type="text" id="uid" placeholder="User ID" class="form-control mb-2" required />
                <input type="password" id="password" placeholder="Password" class="form-control mb-4" required />

                <!-- CAPTCHA -->
                <div class="d-flex align-items-center mb-4">
                    <canvas id="captchaCanvas" width="180" height="50" class="rounded bg-secondary"></canvas>
                    <input type="hidden" id="captchaText">
                    <a href="#" onclick="generateCaptcha()" class="text-primary ml-2 mt-1">Refresh</a>
                </div>

                <input type="text" id="captchaInput" placeholder="Enter CAPTCHA" class="form-control mb-4" required />

                <p id="errorMessage" class="text-danger small text-center mb-2"></p>
                <p id="loadingMessage" class="text-primary small text-center mb-2"></p>

                <button type="submit" class="btn btn-primary btn-block mb-2">Login</button>

                <div class="text-right">
                    <a href="#" class="text-primary">Forgot Password?</a>
                </div>
            </form>

            <button class="btn btn-info btn-block mt-3" onclick="closeModal('loginModal')">Close</button>
        </div>
    </div>

</body>
<script>
    function openModal(modalId) {
        const modal = document.getElementById(modalId);
        if (!modal) return;

        // Show modal with transition
        modal.style.display = "block";
        setTimeout(() => {
            modal.classList.add("active");
        }, 10); // allow paint before adding class

        // Close on outside click
        function outsideClickHandler(e) {
            if (!modal.querySelector('div').contains(e.target)) {
                closeModal(modalId);
                modal.removeEventListener('click', outsideClickHandler);
            }
        }

        modal.addEventListener('click', outsideClickHandler);
    }

    function closeModal(modalId) {
        const modal = document.getElementById(modalId);
        if (!modal) return;

        modal.classList.remove("active");

        // Delay hiding to match CSS transition
        setTimeout(() => {
            modal.style.display = "none";
        }, 300);

        generateCaptcha(); // refresh CAPTCHA on close
    }
</script>
</html>
