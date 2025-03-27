<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Features</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

<section class="bg-transparent py-10">
    <div class="container mx-auto text-center">
        <h1 class="text-white font-semibold font-['Big_Shoulders'] text-[35px]">BENEFITS TO TTEs</h1>
        
        <div class="grid grid-cols-1 md:grid-cols-4 pt-8 gap-x-[5px] gap-y-8 items-center">
            
            <div class="rounded-[40px] bg-gradient-to-r from-blue-200/80 via-white/80 to-yellow-100/80 transform hover:-translate-y-2 ease-out duration-500 
                        shadow-md flex flex-col justify-center items-center 
                        h-[200px] md:h-[180px] w-[150px] md:w-[200px] text-sm md:text-lg">
                <img src="assets/feature1.png" alt="1" class="mt-2" width="80" height="80">
                <button class="text-center text-[10px] lg:text-lg h-full md:text-[14px] font-semibold px-4">
                    Drawing out of TTE links.
                </button>
            </div>

            <div class="rounded-[40px] bg-gradient-to-r from-yellow-100/80 via-white/80 to-yellow-100/80 transform hover:-translate-y-2 ease-out duration-500 
                        shadow-md flex flex-col justify-center items-center 
                        h-[200px] md:h-[180px] w-[150px] md:w-[200px] text-sm md:text-lg">
                <img src="assets/feature2.png" alt="2" class="mt-2" width="80" height="80">
                <button class="text-center text-[10px] lg:text-lg h-full md:text-[14px] font-semibold px-4">
                    Accountal of duty hours.
                </button>
            </div>

            <div class="rounded-[40px] bg-gradient-to-r from-yellow-100/80 via-white/80 to-yellow-100/80 transform hover:-translate-y-2 ease-out duration-500 
                        shadow-md flex flex-col justify-center items-center 
                        h-[200px] md:h-[180px] w-[150px] md:w-[200px] text-sm md:text-lg">
                <img src="assets/feature3.png" alt="3" class="mt-2" width="80" height="80">
                <button class="text-center text-[10px] lg:text-lg h-full md:text-[14px] font-semibold px-4">
                    Preparation of TA/night duty allowance bills.
                </button>
            </div>

            <div class="rounded-[40px] bg-gradient-to-r from-yellow-100/80 via-white/80 to-blue-200/80 transform hover:-translate-y-2 ease-out duration-500 
                        shadow-md flex flex-col justify-center items-center 
                        h-[200px] md:h-[180px] w-[150px] md:w-[200px] text-sm md:text-lg">
                <img src="assets/feature4.png" alt="3" class="mt-2" width="80" height="80">
                <button class="text-center text-[10px] lg:text-lg h-full md:text-[14px] font-semibold px-4">
                    EFT earning accountal.
                </button>
            </div>
        </div>

        <!-- 2nd row -->

        <!-- <div class="grid grid-cols-1 md:grid-cols-3 pt-2 gap-x-[5px] gap-y-8 items-center">
            <div class="rounded-[40px] bg-gradient-to-r from-blue-300/80 to-white/80 transform hover:-translate-y-2 ease-out duration-500 
                        shadow-md flex flex-col justify-center items-center 
                        h-[200px] md:h-[180px] w-[150px] md:w-[200px] text-sm md:text-lg">
                <img src="assets/feature1.png" alt="1" class="mt-2" width="80" height="80">
                <button class="text-center text-[10px] lg:text-lg h-full md:text-[14px] font-semibold px-4">
                    Drawing out of TTE links.
                </button>
            </div>

            <div class="rounded-[40px] bg-white/80 transform hover:-translate-y-2 ease-out duration-500 
                        shadow-md flex flex-col justify-center items-center 
                        h-[200px] md:h-[180px] w-[150px] md:w-[200px] text-sm md:text-lg">
                <img src="assets/feature2.png" alt="2" class="mt-2" width="80" height="80">
                <button class="text-center text-[10px] lg:text-lg h-full md:text-[14px] font-semibold px-4">
                    Accountal of duty hours.
                </button>
            </div>

            <div class="rounded-[40px] bg-gradient-to-r from-white/80 to-yellow-100/80 transform hover:-translate-y-2 ease-out duration-500 
                        shadow-md flex flex-col justify-center items-center 
                        h-[200px] md:h-[180px] w-[150px] md:w-[200px] text-sm md:text-lg">
                <img src="assets/feature3.png" alt="3" class="mt-2" width="80" height="80">
                <button class="text-center text-[10px] lg:text-lg h-full md:text-[14px] font-semibold px-4">
                    Preparation of TA/night duty allowance bills.
                </button>
            </div>
        </div> -->

        <div class="animate-bounce drop-shadow-[0_0_3px_rgba(0,0,0,0.6)] text-[28px] mx-auto w-8 h-10 text-white mt-8">
            &#x2193; <!-- Single down arrow -->
        </div>        

        <button class="text-white text-[17px] font-bold bg-gradient-to-r from-yellow-500 to-yellow-600 
            px-6 py-3 rounded-lg shadow-lg hover:bg-blue-700 transition-transform 
            duration-300 transform hover:scale-105" 
            onclick="openModal('loginModal')">
            Login
        </button>
    </div>
</section>

</body>
</html>
