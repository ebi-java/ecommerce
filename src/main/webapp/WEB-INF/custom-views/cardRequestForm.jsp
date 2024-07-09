<!DOCTYPE html>
<html>
<head>
    <title>Card Application Form</title>
    <style>
        body {
            background-color: #e0e6f5;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 400px;
            margin: auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px #aaa;
            border-radius: 10px;
            text-align: center;
        }
        .title {
            font-size: 24px;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            font-size: 14px;
            color: #34495e;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        .button-group button {
            width: 48%;
            padding: 10px;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .button-submit {
            background-color: #ff6666;
            color: white;
        }
        .button-submit:hover {
            background-color: #ff4d4d;
        }
        .button-reset {
            background-color: #66b3ff;
            color: white;
        }
        .button-reset:hover {
            background-color: #3399ff;
        }
        .card-image {
            width: 100%;
            height: auto;
            margin-bottom: 20px;
        }
        .header {
            background-color: #30475e;
            color: white;
            padding: 10px;
            border-radius: 10px 10px 0 0;
        }
        .progress-bar {
            width: 100%;
            background-color: #f3f3f3;
            border-radius: 5px;
            overflow: hidden;
            margin-top: 20px;
        }
        .progress-bar-inner {
            height: 20px;
            width: 0;
            background-color: #4caf50;
            text-align: center;
            line-height: 20px;
            color: white;
            transition: width 0.5s;
        }
    </style>
    <script>
        function showProgressBar() {
            var progressBarInner = document.getElementById("progress-bar-inner");
            progressBarInner.style.width = "100%";
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="header">Card Application Form</div>
        <img src="card-image.png" alt="Card Image" class="card-image">
        <div class="title">Card Application Form</div>
        <form action="/card/apply" method="post" onsubmit="showProgressBar()">
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
                <label for="filePath">File Path:</label>
                <input type="text" id="filePath" name="filePath" required>
            </div>
            <div class="button-group">
                <button type="submit" class="button-submit">Submit</button>
                <button type="reset" class="button-reset">Reset</button>
            </div>
            <div class="progress-bar">
                <div id="progress-bar-inner" class="progress-bar-inner">Loading...</div>
            </div>
        </form>
    </div>
</body>
</html>
