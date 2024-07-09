function updateProgressBar() {
    var formElements = document.querySelectorAll('.form-group input, .form-group select');
    var filledElements = Array.from(formElements).filter(el => el.value.trim() !== '');
    var progress = (filledElements.length / formElements.length) * 100;
    var progressBar = document.querySelector('.progress-bar-fill');
    progressBar.style.width = progress + '%';
    progressBar.textContent = Math.round(progress) + '%';
}

document.addEventListener('DOMContentLoaded', function() {
    var formElements = document.querySelectorAll('.form-group input, .form-group select');
    formElements.forEach(el => el.addEventListener('input', updateProgressBar));


});






document.getElementById('close-btn').addEventListener('click', function() {
    document.querySelector('.custom-alert').style.display = 'none';
    document.getElementById('cardApplicationForm').submit();
});

function resetProgressBar() {
    var progressBar = document.querySelector('.progress-bar-fill');
    progressBar.style.width = '0%';
    progressBar.textContent = '0%';
}
function showProgressBar() {
    let progressBarInner = document.getElementById("progress-bar-inner");
    progressBarInner.style.display = "block";
    progressBarInner.style.width = "100%";
}


function updateProgressBar() {
    var formElements = document.querySelectorAll('.form-group input, .form-group select');
    var filledElements = Array.from(formElements).filter(el => el.value.trim() !== '');
    var progress = (filledElements.length / formElements.length) * 100;
    var progressBar = document.querySelector('.progress-bar-fill');
    progressBar.style.width = progress + '%';
    progressBar.textContent = Math.round(progress) + '%';
}


function showSpinner() {
    var spinner = document.querySelector('.spinner');
    spinner.style.display = 'block';
}

function hideSpinner() {
    var spinner = document.querySelector('.spinner');
    spinner.style.display = 'none';
}

function showCustomAlert() {
    var customAlert = document.querySelector('.custom-alert');
    customAlert.style.display = 'block';
}

function hideCustomAlert() {
    var customAlert = document.querySelector('.custom-alert');
    customAlert.style.display = 'none';
}

function handleSubmit(event) {
    event.preventDefault();
    showSpinner();
    setTimeout(function() {
        hideSpinner();
        showCustomAlert();
    }, 2000);
}
