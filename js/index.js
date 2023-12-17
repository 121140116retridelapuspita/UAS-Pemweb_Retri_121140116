function tampilkanData() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", 'get_data.php', true);

    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var data = JSON.parse(xhr.responseText);

            tampilkanDataDiTabel(data);
        }
    };

    xhr.send();
}

function tampilkanDataDiTabel(data) {
    var tabel = document.getElementById("TableMakanan").getElementsByTagName('tbody')[0];
    tabel.innerHTML = ""; 

    for (var i = 0; i < data.length; i++) {
        var newRow = tabel.insertRow(tabel.rows.length);
        var newRow1 = tabel.insertRow(tabel.rows.length);

        var cellImg = newRow.insertCell(0);
        cellImg.innerHTML = `<div style="text-align: center;"><img src="${data[i].foto}" alt="${data[i].nama}" style="max-width: 400px;"></div>`;
        var cellData = newRow.insertCell(1);
        cellData.innerHTML = `
        <p> ${data[i].nama}</p>
        <p>${data[i].jenis}</p>
        `;
        var cell1 = newRow1.insertCell(0);
        var cell2 = newRow1.insertCell(1);
        cell1.innerHTML = `<button onclick="tampilkanDetail(${i})">View</button>
        <div class="popup-content" id="popup${i}">
        <span class="close" onclick="tutupPopup(${i})">&times;</span>
        <img src="${data[i].foto}" alt="${data[i].nama}" style="width: 600px;">
        <p><strong>Nama:</strong> ${data[i].nama}</p>
        <p><strong>Penjelasan:</strong> ${data[i].penjelasan}</p>
        <p><strong>Jenis:</strong> ${data[i].jenis}</p>
        <p><strong>Rating:</strong> ${data[i].rating}</p>
        </div>`;
        
    }
}

function tampilkanDetail(index) {
    document.getElementById(`popup${index}`).style.display = "block";
}

function tutupPopup(index) {
    document.getElementById(`popup${index}`).style.display = "none";
}

document.addEventListener("DOMContentLoaded", function () {
    tampilkanData();
});