<jsp:include page="user-header-fragment.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="../../resources/css/home.css">
<%--    <style>--%>

<%--        .headerone {--%>
<%--             top: 0;--%>
<%--            left: 0;--%>
<%--            right: 0;--%>
<%--            padding: 2rem 9%;--%>
<%--            z-index: 1000;--%>
<%--            display: -webkit-box;--%>
<%--            display: -ms-flexbox;--%>
<%--            display: flex;--%>
<%--            -webkit-box-align: center;--%>
<%--            -ms-flex-align: center;--%>
<%--            align-items: center;--%>
<%--        }--%>
<%--        table {--%>
<%--            margin-top: 60px;--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            border-collapse: collapse;--%>
<%--            width: 100%;--%>
<%--        }--%>

<%--        td, th {--%>
<%--            border: 1px solid #dddddd;--%>
<%--            text-align: left;--%>
<%--            padding: 8px;--%>
<%--        }--%>

<%--        tr:nth-child(even) {--%>
<%--            background-color: #f2f2f2;--%>
<%--        }--%>
<%--        .header {--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--        }--%>

<%--        .back-button {--%>
<%--            border-radius: 8px;--%>
<%--            text-decoration: none;--%>
<%--            background-color: #871e35;--%>
<%--            color: white;--%>
<%--            padding: 12px;--%>
<%--            margin-left: 10px; /* Adjust margin as needed */--%>
<%--        }--%>

<%--    </style>--%>
</head>
<body>
<div class="container">
    <div class="w-100 d-flex justify-content-space-between align-items-center">
        <h2>Exchange Rates</h2>
        <a href="${pageContext.request.contextPath}/calculator/exchangeRate" style="margin-left: 400px" class="btn p-2 px-5">Back</a>
    </div>
    <table class="mt-3 table table-striped" id="exchangeRatesTable">
        <tr>
            <th>Currency</th>
            <th>Buying Rate (EGP)</th>
            <th>Selling Rate (EGP)</th>
        </tr>
    </table>
</div>

<script>
    fetch('https://api.exchangerate-api.com/v4/latest/egp')
        .then(response => response.json())
        .then(data => {
            const rates = data.rates;
            const table = document.getElementById('exchangeRatesTable');

            for (const currency in rates) {
                const row = table.insertRow();
                const currencyCell = row.insertCell(0);
                const buyingRateCell = row.insertCell(1);
                const sellingRateCell = row.insertCell(2);

                currencyCell.textContent = currency;
                buyingRateCell.textContent = rates[currency].toFixed(3); // Displaying rates up to 3 decimal places
                sellingRateCell.textContent = (1 / rates[currency]).toFixed(3); // Displaying rates up to 3 decimal places
            }
        })
        .catch(error => console.error('Error fetching exchange rates:', error));
</script>

</body>
</html>
