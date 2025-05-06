<!-- AdminLTE CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.1.0/dist/css/adminlte.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<!-- jQuery & jQuery UI (For Dragging & Sorting) -->
<link rel="stylesheet" href="homepage.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Leaflet CSS -->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<!-- Leaflet JS -->
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<!-- <div class="container mt-4">
    <div class="row justify-content-end">
        <div class="col-lg-3 col-md-6">
            <div class="card shadow-sm border-0">
                <div class="card-body d-flex align-items-center">
                    <div class="mr-3">
                        <i class="fas fa-chart-line fa-2x text-primary"></i>
                    </div>
                    <div>
                        <h5 class="font-weight-bold mb-1">1,200</h5>
                        <p class="text-muted mb-0">New Orders</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6">
            <div class="card shadow-sm border-0">
                <div class="card-body d-flex align-items-center">
                    <div class="mr-3">
                        <i class="fas fa-user-plus fa-2x text-success"></i>
                    </div>
                    <div>
                        <h5 class="font-weight-bold mb-1">530</h5>
                        <p class="text-muted mb-0">New Users</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6">
            <div class="card shadow-sm border-0">
                <div class="card-body d-flex align-items-center">
                    <div class="mr-3">
                        <i class="fas fa-chart-pie fa-2x text-warning"></i>
                    </div>
                    <div>
                        <h5 class="font-weight-bold mb-1">65%</h5>
                        <p class="text-muted mb-0">Bounce Rate</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6">
            <div class="card shadow-sm border-0">
                <div class="card-body d-flex align-items-center">
                    <div class="mr-3">
                        <i class="fas fa-indian-rupee-sign fa-2x text-danger"></i>
                    </div>
                    <div>
                        <h5 class="font-weight-bold mb-1">&#8377;20L</h5>
                        <p class="text-muted mb-0">Revenue</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->

<!-- <div class="container mt-4">
    <div class="row">
        <div id="sortable-container" class="col-12">
            <div class="card draggable-card" id="pieCard">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="fas fa-chart-pie"></i> Freight Revenue by Commodity
                    </h3>
                </div>
                <div class="card-body">
                    <canvas id="pieChart"></canvas>
                </div>
            </div>

            <div class="card draggable-card" id="barCard">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="fas fa-chart-bar"></i> Top Source Stations
                    </h3>
                </div>
                <div class="card-body">
                    <canvas id="barChart"></canvas>
                </div>
            </div>

            <div class="card draggable-card" id="lineCard">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="fas fa-chart-line"></i> Train Arrivals by Time Slot
                    </h3>
                </div>
                <div class="card-body">
                    <canvas id="lineChart"></canvas>
                </div>
            </div>

            <div class="card draggable-card" id="mapCard">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="fas fa-map"></i> Train Incidents by State
                    </h3>
                </div>
                <div class="card-body">
                    <div id="map" style="height: 300px;"></div>
                </div>
            </div>
        </div>
    </div>
</div> -->

<script>
    $(function () {
        $("#sortable-container").sortable({
            items: ".draggable-card",
            handle: ".card-header", // Only drag from the header
            placeholder: "ui-sortable-placeholder",
            tolerance: "pointer",
            revert: 200,
            stop: function () {
                saveCardPositions();
            }
        });

        $("#sortable-container").disableSelection();

        // Save card order in localStorage
        function saveCardPositions() {
            let order = $("#sortable-container").sortable("toArray");
            localStorage.setItem("cardOrder", JSON.stringify(order));
        }

        // Restore card order from localStorage
        function loadCardPositions() {
            let order = localStorage.getItem("cardOrder");
            if (order) {
                order = JSON.parse(order);
                order.forEach(id => $("#" + id).appendTo("#sortable-container"));
            }
        }

        loadCardPositions();
    });

</script>

<script>
    // Pie Chart (Freight Revenue)
    var ctxPie = document.getElementById('pieChart').getContext('2d');
    new Chart(ctxPie, {
        type: 'pie',
        data: {
            labels: ['Coal', 'Cement', 'Food Grains', 'Iron Ore', 'Other'],
            datasets: [{
                data: [68080, 64460, 38676, 118587, 50000],
                backgroundColor: ['#ff6384', '#36a2eb', '#ffcd56', '#4bc0c0', '#9966ff']
            }]
        },
        options: { responsive: true, maintainAspectRatio: false }
    });

    // Bar Chart (Top Source Stations)
    var ctxBar = document.getElementById('barChart').getContext('2d');
    new Chart(ctxBar, {
        type: 'bar',
        data: {
            labels: ['HOWRAH JN.', 'SEALDAH', 'CST-MUMBAI'],
            datasets: [{
                label: 'Departures',
                data: [7980, 7060, 5000],
                backgroundColor: ['#28a745', '#17a2b8', '#ffc107']
            }]
        },
        options: { responsive: true, maintainAspectRatio: false }
    });

    // Line Chart (Train Arrivals)
    var ctxLine = document.getElementById('lineChart').getContext('2d');
    new Chart(ctxLine, {
        type: 'line',
        data: {
            labels: ['00:00:00', '11:06:00', '11:26:00', '11:51:00'],
            datasets: [{
                label: 'Arrivals',
                data: [2002, 101, 101, 101],
                borderColor: '#007bff',
                backgroundColor: 'rgba(0, 123, 255, 0.2)',
                fill: true
            }]
        },
        options: { responsive: true, maintainAspectRatio: false }
    });

    // Map (Train Incidents by State)
    var map = L.map('map').setView([22.3511, 78.6677], 5);
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);
    
    var locations = [
        { coords: [28.7041, 77.1025], state: "Delhi", cases: 500 },
        { coords: [19.0760, 72.8777], state: "Mumbai", cases: 700 },
        { coords: [22.5726, 88.3639], state: "Kolkata", cases: 600 }
    ];

    locations.forEach(loc => {
        L.marker(loc.coords).addTo(map).bindPopup(`<b>${loc.state}</b><br>Cases: ${loc.cases}`);
    });
</script>
