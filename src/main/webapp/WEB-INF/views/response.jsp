<!DOCTYPE html>
<html>
<head>
    <title>Card Application Response</title>
    <style>
        body {
            background-color: #e0e6f5;
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .response-container {
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px #aaa;
            border-radius: 10px;
            display: inline-block;
        }
        .response-message {
            font-size: 20px;
            color: #2c3e50;
        }
        .response-status {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
        }
        .success {
            color: green;
        }
        .failure {
            color: red;
        }
    </style>
</head>
<body>
    <div class="response-container">
        <div class="response-message">${output.message}</div>
        <div class="response-status ${output.status.toLowerCase()}">${output.status}</div>
    </div>
</body>
</html>
