<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Centered Modal</title>

  <style>
    body {
      margin: 0;
      font-family: sans-serif;
    }

    /* Modal wrapper */
    #loginModal {
      position: fixed;
      top: 0;
      left: 0;
      height: 100vh;
      width: 100vw;
      background-color: rgba(0, 0, 0, 0.5);
      display: none; /* Hidden initially */
      justify-content: center;
      align-items: center;
      z-index: 1050;
    }

    /* When modal is active */
    #loginModal.active {
      display: flex;
      animation: fadeIn 0.3s ease-out forwards;
    }

    /* Modal content box */
    .modal-content {
      background: #fff;
      padding: 30px;
      border-radius: 8px;
      width: 90%;
      max-width: 400px;
      box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
    }

    /* Animation */
    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: scale(0.95);
      }
      to {
        opacity: 1;
        transform: scale(1);
      }
    }
  </style>

  <script>
    function openModal() {
      document.getElementById('loginModal').classList.add('active');
    }

    function closeModal() {
      document.getElementById('loginModal').classList.remove('active');
    }
  </script>
</head>
<body>

  <!-- Trigger Button -->
  <div style="padding: 50px;">
    <button onclick="openModal()">Open Login Modal</button>
  </div>

  <!-- Modal -->
  <div id="loginModal">
    <div class="modal-content">
      <h2>Login</h2>
      <input type="text" placeholder="User ID" class="form-control mb-2" />
      <input type="password" placeholder="Password" class="form-control mb-2" />
      <button onclick="closeModal()">Close</button>
    </div>
  </div>

</body>
</html>
