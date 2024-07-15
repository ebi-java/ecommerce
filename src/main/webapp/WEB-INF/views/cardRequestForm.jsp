<jsp:include page="user-header-fragment.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <title>Card Application Form</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Card.css">
</head>
<body>
<div class="container" style="background-color: #fff">
    <h2 class="card-header">Card Form</h2>
    <img src="../../resources/images/6086.jpg" alt="Card Image" class="card-image">
    <div class="progress-bar">
        <div class="progress-bar-fill">0%</div>
    </div>
    <form id="cardApplicationForm" action="${pageContext.request.contextPath}/customer/card/apply" method="post" enctype="multipart/form-data" onsubmit="handleSubmit(event);">
        <div class="form-group">
            <label for="cardType">Card Type:</label>
            <select id="cardType" name="cardType">
                <option value="credit">Credit</option>s
                <option value="debit">Debit</option>
            </select>
        </div>
        <div class="form-group">
            <label for="limit">Credit Limit:</label>
            <input type="number" id="limit" name="limit" min="1000" value="1000s" required>
        </div>
<%--        <div class="form-group">--%>
<%--            <label for="documentType">Document Type:</label>--%>
<%--            <select id="documentType" name="documentType" required>--%>
<%--                <option value="pdf">PDF</option>--%>
<%--                <option value="image">Image</option>--%>
<%--            </select>--%>
<%--        </div>--%>

        <div class="form-group">
            <label for="fileUpload">ID (Front and back images)</label>
            <input type="file" id="fileUpload" name="fileUpload" multiple required accept="image/*">
        </div>
        <div class="form-group">
            <label for="fileUpload2">Income Approval</label>
            <input type="file" id="fileUpload2" name="fileUpload2" accept=".pdf">
        </div>
        <div class="button-group">
            <button type="submit" class="button-submit">Submit</button>
            <button type="reset" class="button-reset" onclick="resetProgressBar()">Reset</button>
        </div>
        <div class="progress-bar">
            <div id="progress-bar-inner" class="progress-bar-inner" style="display: none;">Loading...</div>
        </div>
    </form>
    <div class="spinner"></div>
    <div class="custom-alert" style="display: none;">
        <h2>Application Submitted!</h2>
        <img src="../../resources/images/call center 19888.jpg" alt="Success Image">
        <p>Your application has been successfully submitted.</p>
        <button id="close-btn" class="close-btn">OK</button>
    </div>
</div>


<script src="../../resources/js/Card.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var formElements = document.querySelectorAll('.form-group input, .form-group select');
        formElements.forEach(el => el.addEventListener('input', updateProgressBar));
    });

    document.getElementById('close-btn').addEventListener('click', function() {
        hideCustomAlert();
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

        // Validate image files
        const imageFileInput = document.getElementById('fileUpload');
        const imageFiles = imageFileInput.files;
        for (let i = 0; i < imageFiles.length; i++) {
            const file = imageFiles[i];
            const fileType = file.type;
            if (!fileType.match('image.*')) {
                alert('Only image files are allowed for ID images.');
                return false;
            }
        }

        // Validate PDF file
        const pdfFileInput = document.getElementById('fileUpload2');
        const pdfFile = pdfFileInput.files[0];
        if (pdfFile && !pdfFile.type.match('application/pdf')) {
            alert('Only PDF files are allowed for Income Approval.');
            return false;
        }

        showSpinner();
        setTimeout(function() {
            hideSpinner();
            showCustomAlert();
        }, 2000);
    }

</script>


</body>
</html>
