<link rel="stylesheet" href="homepage.css">

<!-- Sidebar -->
<div id="sidebar" class="position-absolute h-100 font-weight-semibold d-flex flex-column p-2 sidebar-fadeIn" style="z-index: 1030; left: 0; top: 0; display: none;">
    <!-- Sidebar Header -->
    <h2 id="quick" style="padding-left: 15px;" class="h4 font-weight-bold border-bottom border-secondary pt-1 pb-3">Quick Links</h2>

    <!-- Navigation Links -->
    <nav id="nav" class="d-flex flex-column">
        <a href="https://hrms.indianrail.gov.in/HRMS/login" class="hrms text-decoration-none py-2 px-3 rounded">HRMS</a>
        <a href="https://aims.indianrailways.gov.in/ress/" class="ress text-decoration-none py-2 px-3 rounded">RESS</a>
        <a href="https://www.hht.indianrail.gov.in/" class="hht text-decoration-none py-2 px-3 rounded">Handheld Terminal</a>
        <a href="#" class="reis text-decoration-none py-2 px-3 rounded">REIS</a>
        <a href="#" class="rbs text-decoration-none py-2 px-3 rounded">RBS</a>
        <a href="#" class="icms text-decoration-none py-2 px-3 rounded">ICMS</a>
        <a href="#" class="tms text-decoration-none py-2 px-3 rounded">TMS</a>
        <a href="#" class="nget text-decoration-none py-2 px-3 rounded">NGET</a>
        <a href="#" class="wecrs text-decoration-none py-2 px-3 rounded">WECRS</a>
        <a href="#" class="fois text-decoration-none py-2 px-3 rounded">FOIS</a>
        <a href="#" class="ndma text-decoration-none py-2 px-3 rounded">NDMA</a>
    </nav>
</div>

<!-- Toggle Button (bottom-left corner) -->
<div id="infoicon" onclick="homeSidebar()" class="animated fadeIn" style="position: fixed; bottom: 20px; left: 20px; z-index: 1030;">
    <button id="btnicon" class="rounded-circle p-2 bg-warning border-0">
        <img src="assets/info2.png" alt="Info" width="50" height="50">
    </button>
</div>

<!-- Script -->
<script>
    function homeSidebar() {
    const sidebar = document.getElementById("sidebar");
    const infoIcon = document.getElementById("infoicon");
    const btnIcon = document.getElementById("btnicon");

    const isVisible = sidebar.classList.contains("active");

    if (isVisible) {
        // Start fade-out animation
        sidebar.classList.remove("fade-in");
        sidebar.classList.add("fade-out");

        // After animation ends, fully hide the sidebar
        setTimeout(() => {
            sidebar.classList.remove("active");
            sidebar.style.display = "none";
            sidebar.classList.remove("fade-out");
        }, 200); // Match this with your CSS transition duration

        infoIcon.classList.remove("shift-right");
    } else {
        sidebar.style.display = "block";
        sidebar.classList.add("active");
        sidebar.classList.remove("fade-out");
        sidebar.classList.add("fade-in");
        infoIcon.classList.add("shift-right");
    }

    btnIcon.blur();

}

</script>
