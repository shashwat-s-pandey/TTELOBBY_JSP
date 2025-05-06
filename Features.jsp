<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Features</title>

    <!-- Bootstrap 4.5.2 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery, Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Custom Styles -->
    <link rel="stylesheet" href="homepage.css">
</head>
<body>

<section class="bg-transparent py-4">
    <div class="container text-center">
        <h1 data-key="benefits" class="text-white fw-semibold" style="font-family: 'Big Shoulders', sans-serif; font-size: 35px;">
            BENEFITS TO TTEs
        </h1>

        <div class="row pt-4 g-3 justify-content-center">
            <!-- Card 1 -->
            <div class="col-lg-3 col-md-6 col-sm-12 card-feature mb-4">
                <div class="rounded-lg custom-gradient-blue shadow-lg d-flex flex-column justify-content-center align-items-center p-3 text-center w-100" style="height: 180px;">
                    <img src="assets/feature1.png" alt="Drawing Links" class="mb-2" width="80" height="80">
                    <button data-key="draw_links" class="btn btn-link text-dark font-weight-bold text-decoration-none">
                        Drawing out of TTE links.
                    </button>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="col-lg-3 col-md-6 col-sm-12 card-feature mb-4">
                <div class="rounded-lg custom-gradient-yellow shadow-lg d-flex flex-column justify-content-center align-items-center p-3 text-center w-100" style="height: 180px;">
                    <img src="assets/feature2.png" alt="Accountal" class="mb-2" width="80" height="80">
                    <button data-key="accountal" class="btn btn-link text-dark font-weight-bold text-decoration-none">
                        Accountal of duty hours.
                    </button>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="col-lg-3 col-md-6 col-sm-12 card-feature mb-4">
                <div class="rounded-lg custom-gradient-yellow shadow-lg d-flex flex-column justify-content-center align-items-center p-3 text-center w-100" style="height: 180px;">
                    <img src="assets/feature3.png" alt="TA Preparation" class="mb-2" width="80" height="80">
                    <button data-key="ta" class="btn btn-link text-dark font-weight-bold text-decoration-none">
                        Preparation of TA/night duty allowance bills.
                    </button>
                </div>
            </div>

            <!-- Card 4 -->
            <div class="col-lg-3 col-md-6 col-sm-12 card-feature mb-4">
                <div class="rounded-lg custom-gradient-blue shadow-lg d-flex flex-column justify-content-center align-items-center p-3 text-center w-100" style="height: 180px;">
                    <img src="assets/feature4.png" alt="EFT Accountal" class="mb-2" width="80" height="80">
                    <button data-key="eft" class="btn btn-link text-dark font-weight-bold text-decoration-none">
                        EFT earning accountal.
                    </button>
                </div>
            </div>
        </div>

        <!-- Arrow and Login Button -->
        <div class="mt-4">
            <div class="bounce text-white" style="font-size: 1.75rem;">&#x2193;</div>
        </div>

    </div>
    <button data-key="login" class="btn fw-bold text-white mt-3"
            style="background: linear-gradient(to right, #FFC107, #FF9800); padding: 10px 20px; border-radius: 10px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);"
            onclick="openModal('loginModal')">
            Login
        </button>
</section>

</body>
</html>
