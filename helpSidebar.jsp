<!-- Help Sidebar -->
<div id="helpSidebar" class="position-fixed bg-light text-black shadow-lg d-none"
    style="width: 20rem; top: 200px; right: 0; height: 100vh; transform: translateX(100%); transition: transform 0.3s ease-in-out; z-index: 1030; border-top-left-radius: 0.5rem; border-bottom-left-radius: 0.5rem;">
    
    <div class="d-flex justify-content-between align-items-center bg-primary p-3" style="border-top-left-radius: 0.5rem;">
        <h2 class="text-white font-weight-semibold mb-0">Help & Support</h2>
        <button id="closeHelpBtn" class="btn btn-sm text-white">
            <i class="fa fa-times"></i> <!-- Using Font Awesome as Bootstrap 4.5 doesn't support Bootstrap Icons by default -->
        </button>
    </div>

    <div class="p-4 font-weight-semibold">
        <p class="text-dark">Need assistance? Here are some common topics:</p>
        <ul class="list-unstyled">
            <li class="p-2 text-dark" style="cursor: pointer;">&#8594; Unable to Log in</li>
            <li class="p-2 text-dark" style="cursor: pointer;">&#8594; Invalid Captcha</li>
            <li class="p-2 text-dark" style="cursor: pointer;">&#8594; Contact</li>
            <li class="p-2 text-dark" style="cursor: pointer;">&#8594; FAQs</li>
        </ul>
    </div>
</div>

<!-- Help Button -->
<button id="openHelpBtn" class="position-fixed btn btn-primary shadow-lg"
    style="bottom: 1rem; right: 1rem; z-index: 1030;">
    Need Help?
</button>

<!-- JavaScript for Sidebar -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const helpSidebar = document.getElementById("helpSidebar");
        const openBtn = document.getElementById("openHelpBtn");
        const closeBtn = document.getElementById("closeHelpBtn");

        function toggleHelpSidebar() {
            if (helpSidebar.classList.contains("d-none")) {
                helpSidebar.classList.remove("d-none");
                setTimeout(() => {
                    helpSidebar.style.transform = "translateX(0)";
                }, 10);
            } else {
                helpSidebar.style.transform = "translateX(100%)";
                setTimeout(() => {
                    helpSidebar.classList.add("d-none");
                }, 300);
            }
        }

        function closeHelpSidebar() {
            helpSidebar.style.transform = "translateX(100%)";
            setTimeout(() => {
                helpSidebar.classList.add("d-none");
            }, 300);
        }

        openBtn.addEventListener("click", function (event) {
            event.stopPropagation();
            toggleHelpSidebar();
        });

        closeBtn.addEventListener("click", function () {
            closeHelpSidebar();
        });

        document.addEventListener("click", function (event) {
            if (!helpSidebar.contains(event.target) && !openBtn.contains(event.target)) {
                closeHelpSidebar();
            }
        });

        helpSidebar.addEventListener("click", function (event) {
            event.stopPropagation();
        });
    });
</script>
