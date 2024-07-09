<!DOCTYPE html>
<html>
<head>
    <title>Card Application Form</title>



    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Card.css">

</head>
<body>
<div class="container">
    <div class="header">Card Application Form</div>
    <img src="../../resources/images/6086.jpg" alt="Card Image" class="card-image">
    <div class="progress-bar">
        <div class="progress-bar-fill">0%</div>
    </div>
    <form id="cardApplicationForm" action="/card/apply" method="post" enctype="multipart/form-data" onsubmit="handleSubmit(event);">
        <div class="form-group">
            <label for="customerID">Customer ID:</label>
            <input type="text" id="customerID" name="customerID" required>
        </div>
        <div class="form-group">
            <label for="cardType">Card Type:</label>
            <select id="cardType" name="cardType">
                <option value="credit">Credit</option>
                <option value="debit">Debit</option>
            </select>
        </div>
        <div class="form-group">
            <label for="limit">Credit Limit:</label>
            <input type="number" id="limit" name="limit" required>
        </div>
        <div class="form-group">
            <label for="documentType">Document Type:</label>
            <input type="text" id="documentType" name="documentType" required>
        </div>
        <div class="form-group">
            <label for="fileUpload">Upload Files:</label>
            <input type="file" id="fileUpload" name="fileUpload" multiple required>
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
</body>
</html>
