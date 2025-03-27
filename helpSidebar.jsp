<!-- Help Sidebar -->
<div id="helpSidebar" class="fixed top-[200px] right-0 w-[20rem] h-full bg-blue-100/80 text-black shadow-lg transform translate-x-full transition-transform duration-300 z-[1000] ease-in-out rounded-t-xl">
    <div class="flex justify-between items-center bg-blue-600/80 p-4 rounded-t-xl">
        <h2 class="text-lg text-white rounded-t-lg font-semibold">Help & Support</h2>
        <button id="closeHelpBtn" class="text-white hover:scale-125 duration-300">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
            </svg>
        </button>
    </div>

    <div class="p-4 space-y-3 font-semibold">
        <p class="text-gray-700">Need assistance? Here are some common topics:</p>
        <ul class="space-y-2">
            <li class="hover:bg-gray-700 duration-300 hover:text-white p-2 rounded cursor-pointer">&#8594; Unable to Log in</li>
            <li class="hover:bg-gray-700 duration-300 hover:text-white p-2 rounded cursor-pointer">&#8594; Invalid Captcha</li>
            <li class="hover:bg-gray-700 duration-300 hover:text-white p-2 rounded cursor-pointer">&#8594; Contact</li>
            <li class="hover:bg-gray-700 duration-300 hover:text-white p-2 rounded cursor-pointer">&#8594; FAQs</li>
        </ul>
    </div>
</div>

<!-- Help Button -->
<button id="openHelpBtn" class="animate-fadeIn fixed bottom-8 w-[150px] h-[50px] text-center right-8 bg-blue-600 text-white text-lg px-4 py-2 rounded shadow-lg hover:bg-blue-700 z-[1000]">
    Need Help?
</button>

<!-- JavaScript for Sidebar -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const helpSidebar = document.getElementById("helpSidebar");
        const openBtn = document.getElementById("openHelpBtn"); // Help button
        const closeBtn = document.getElementById("closeHelpBtn"); // Close button

        function toggleHelpSidebar() {
            if (helpSidebar.classList.contains("translate-x-full")) {
                helpSidebar.classList.remove("translate-x-full");
                helpSidebar.classList.add("translate-x-0");
            } else {
                helpSidebar.classList.remove("translate-x-0");
                helpSidebar.classList.add("translate-x-full");
            }
        }

        function closeHelpSidebar() {
            helpSidebar.classList.add("translate-x-full");
            helpSidebar.classList.remove("translate-x-0");
        }

        // Toggle sidebar on button click
        openBtn.addEventListener("click", function (event) {
            event.stopPropagation(); // Prevent event from bubbling to window click listener
            toggleHelpSidebar();
        });

        // Close sidebar when close button (✖) is clicked
        closeBtn.addEventListener("click", function () {
            closeHelpSidebar();
        });

        // Close sidebar when clicking outside
        document.addEventListener("click", function (event) {
            if (!helpSidebar.contains(event.target) && !openBtn.contains(event.target)) {
                closeHelpSidebar();
            }
        });

        // Prevent clicks inside the sidebar from closing it
        helpSidebar.addEventListener("click", function (event) {
            event.stopPropagation();
        });
    });

</script>
