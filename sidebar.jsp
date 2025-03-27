<style>
    #sidebar {
        transition: background-color 0.2s ease-in-out, color 0.1s ease-in-out;
    }

    #quick, #nav {
        opacity: 0;
        visibility: hidden;
        transition: opacity 0.2s ease-in-out, visibility 0.3s ease-in-out;
    }

    #btnicon {
        transition: background-color 0.2s ease-in-out, transform 0.3s ease-in-out;
    }

    #btnicon:hover {
        transform: scale(1.2);
    }
</style>

<div id="sidebar" class="animate-fadeIn h-[82%] w-[13%] absolute text-white font-semibold top-[112px] z-[1000] left-0 flex flex-col p-4">
    <!-- Sidebar Header -->
    <h2 id="quick" class="text-xl font-bold border-b border-gray-600 pt-5 pl-4 pb-4">Quick Links</h2>
    
    <!-- Navigation Links -->
    <nav id="nav" class="mt-4 flex flex-col space-y-4">
        <a href="https://hrms.indianrail.gov.in/HRMS/login" class="hover:bg-gradient-to-r from-blue-700 to-transparent hover:text-white hover:scale-105 duration-300 transition-all px-4 py-2 rounded">HRMS</a>
        <a href="https://aims.indianrailways.gov.in/ress/" class="hover:bg-gradient-to-r from-teal-600 to-transparent hover:text-white hover:scale-105 duration-300 px-4 py-2 rounded">RESS</a>
        <a href="https://www.hht.indianrail.gov.in/" class="hover:bg-gradient-to-r from-red-400 to-transparent hover:text-white hover:scale-105 duration-300 px-4 py-2 rounded">Handheld Terminal</a>
        <a href="https://www.indianrail.gov.in/" class="hover:bg-gradient-to-r from-blue-500 to-transparent hover:text-white hover:scale-105 duration-300 px-4 py-2 rounded">Indian Railways</a>
        <a href="https://indianrailways.gov.in/" class="hover:bg-gradient-to-r from-orange-500 to-transparent hover:text-white hover:scale-105 duration-300 px-4 py-2 rounded">Ministry of Railways</a>
    </nav>
</div>

<div id="infoicon" onclick="bgChange()" class="fixed bottom-[50px] left-[50px] z-[1000] flex justify-center items-center animate-fadeIn">
    <button id="btnicon" class="rounded-full p-[5px] bg-gradient-to-r from-yellow-500 to-yellow-200">
        <img src="assets/info2.png" alt="" width="50" height="50">
    </button>
</div>

<script>
    function bgChange() {
        let sidebar = document.getElementById("sidebar");
        let quickLinks = document.getElementById("quick");
        let navLinks = document.getElementById("nav");
        let icon = document.getElementById("btnicon")

        let isVisible = quickLinks.style.opacity === "1"; // Check if visible

        if (isVisible) {
            // Hide the links
            sidebar.classList.remove("bg-white/80");
            quickLinks.style.opacity = "0";
            quickLinks.style.visibility = "hidden";
            navLinks.style.opacity = "0";
            navLinks.style.visibility = "hidden";
        } else {
            // Show the links
            sidebar.classList.remove("bg-white/10", "text-white");
            sidebar.classList.add("bg-white/80", "text-black");
            icon.classList.remove("bg-white")
            icon.classList.add("bg-white/10")
            quickLinks.style.opacity = "1";
            quickLinks.style.visibility = "visible";
            navLinks.style.opacity = "1";
            navLinks.style.visibility = "visible";
        }
    }
</script>