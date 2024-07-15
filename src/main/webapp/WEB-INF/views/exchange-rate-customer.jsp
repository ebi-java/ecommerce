<!DOCTYPE html>
<html>
<head>
    <style>

        table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .header {
            display: flex;
            align-items: center;
        }

        .back-button {
            border-radius: 8px;
            text-decoration: none;
            background-color: #871e35;
            color: white;
            padding: 12px;
            margin-left: 10px; /* Adjust margin as needed */
        }



        .slider-container {
            height: 100%;
            margin-top: 100px;
            /* Adjust this value to your preference */
            overflow: hidden;
            /* Hide overflow content */
        }
        /* Ensure swiper container takes full height */

        .swiper {
            height: 100%;
        }

        .category {
            margin: 50px auto;
            max-width: 800px;
        }

        .heading {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .currency-converter {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .currency-selector {
            margin-bottom: 10px;
        }

        label {
            margin-right: 5px;
            font-size: 18px;
        }

        select,
        input[type="number"] {
            width: 300px;
            padding: 10px;
            font-size: 18px;
            margin-right: 10px;
        }

        button {
            padding: 12px 30px;
            font-size: 20px;
            background-color: #871e35;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #871e35;
        }

        .result {
            margin-top: 20px;
            font-size: 20px;
        }

        .result input {
            width: 350px;
            padding: 10px;
            font-size: 18px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="header" style="margin-bottom: 20px">
     <a href="${pageContext.request.contextPath}/customer/home" style="margin-left: 1470px; margin-top: 20px; width: 120px; text-align: center" class="back-button">Back</a>
</div>


<table id="exchangeRatesTable">
    <tr>
        <th>Currency</th>
        <th>Buying Rate (EGP)</th>
        <th>Selling Rate (EGP)</th>
    </tr>
</table>



<section class="category">

    <h1 class="heading" style="font-size: 40px; margin-bottom: 45px;">Exchange Rates </h1>

    <div class="currency-converter">
        <div class="currency-selector">
            <label for="fromCurrency">From:</label>
            <select id="fromCurrency">
                <option value="USD">US Dollar (USD)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="SAR">saudi arabian riyal(EGP)</option>
                <option value="AED">United Arab Emirates Dirham (AED)</option>
                <option value="QAR">Qatari Riyal (QAR)</option>
                <option value="OMR">Omani Rial (OMR)</option>
                <option value="BHD">Bahraini Dinar (BHD)</option>
                <option value="KWD">Kuwaiti Dinar (KWD)</option>
                <option value="JOD">Jordanian Dinar (JOD)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="IQD">Iraqi Dinar (IQD)</option>
                <option value="YER">Yemeni Rial (YER)</option>
                <option value="SDG">Sudanese Pound (SDG)</option>


            </select>
        </div>
        <div class="currency-selector">
            <label for="toCurrency">To:</label>
            <select id="toCurrency">
                <option value="USD">US Dollar (USD)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="SAR">saudi arabian riyal(EGP)</option>
                <option value="AED">United Arab Emirates Dirham (AED)</option>
                <option value="QAR">Qatari Riyal (QAR)</option>
                <option value="OMR">Omani Rial (OMR)</option>
                <option value="BHD">Bahraini Dinar (BHD)</option>
                <option value="KWD">Kuwaiti Dinar (KWD)</option>
                <option value="JOD">Jordanian Dinar (JOD)</option>
                <option value="EGP">Egyptian Pound (EGP)</option>
                <option value="IQD">Iraqi Dinar (IQD)</option>
                <option value="YER">Yemeni Rial (YER)</option>
                <option value="SDG">Sudanese Pound (SDG)</option>

            </select>
        </div>
        <div class="amount-input">
            <label for="amount">Amount:</label>
            <input type="number" id="amount" placeholder="Enter amount">
        </div>
        <button onclick="convertCurrency()" style="margin-top: 10px;">Convert</button>
        <div class="result">
            <label for="convertedAmount">Result:</label>
            <input type="text" id="convertedAmount" readonly>
        </div>
    </div>
</section>


<script>
    function convertCurrency() {
        var amount = parseFloat(document.getElementById("amount").value);
        var fromCurrency = document.getElementById("fromCurrency").value;
        var toCurrency = document.getElementById("toCurrency").value;

        // Fetch exchange rates for the selected currencies
        fetch('https://api.exchangerate-api.com/v4/latest/' + fromCurrency)
            .then(response => response.json())
            .then(data => {
                var toCurrencyRate = data.rates[toCurrency];
                var convertedAmount = amount * toCurrencyRate;
                document.getElementById("convertedAmount").value = convertedAmount.toFixed(2) + " " + toCurrency;
            })
            .catch(error => console.error('Error fetching data:', error));
    }

    fetch('https://api.exchangerate-api.com/v4/latest/egp')
        .then(response => response.json())
        .then(data => {
            const rates = data.rates;
            const table = document.getElementById('exchangeRatesTable');

            const currencies = {
                "EGP": "Egyptian Pound(EGP)",
                "SAR": "Saudi Arabian Riyal (SAR)",
                "AED": "United Arab Emirates Dirham (AED)",
                "QAR": "Qatari Riyal (QAR)",
                "OMR": "Omani Rial (OMR)",
                "BHD": "Bahraini Dinar (BHD)",
                "KWD": "Kuwaiti Dinar (KWD)",
                "JOD": "Jordanian Dinar (JOD)",
                "EGP": "Egyptian Pound (EGP)",
                "IQD": "Iraqi Dinar (IQD)",
                "YER": "Yemeni Rial (YER)",
                "SDG": "Sudanese Pound (SDG)"
            };

            for (const currency in currencies) {
                const row = table.insertRow();
                const currencyCell = row.insertCell(0);
                const buyingRateCell = row.insertCell(1);
                const sellingRateCell = row.insertCell(2);

                currencyCell.textContent = currencies[currency];
                buyingRateCell.textContent = rates[currency].toFixed(3); // Displaying rates up to 3 decimal places
                sellingRateCell.textContent = (1 / rates[currency]).toFixed(3); // Displaying rates up to 3 decimal places
            }
        })
        .catch(error => console.error('Error fetching exchange rates:', error));

</script>

</body>
</html>
