// script.js

function fetchCpuUsage() {
    fetch('http://127.0.0.1:5000/cpu')
        .then(response => response.json())
        .then(data => {
            document.getElementById('cpu-usage').textContent = data.cpu + '%';
        })
        .catch(error => console.error('Error fetching CPU usage:', error));
}

// Call fetchCpuUsage initially and set interval for periodic updates
fetchCpuUsage();
setInterval(fetchCpuUsage, 5000);  // Update every 5 seconds
