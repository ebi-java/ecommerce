<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="user-header-fragment.jsp"/>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"s
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../resources/css/Card.css">
    <link rel="stylesheet" href="../../resources/css/calculator.css">
    <title>${title}</title>
</head>
<body>
    <div class="card-container" style="height: auto">
        <h1 class="card-title">${title}</h1>
        <c:if test="${type == 'loan'}">
            <form:form class="calculator-form" id="loanCalculator" action="${pageContext.request.contextPath}/calculator/loan" method="post" modelAttribute="loanCalculationResult">
                <div class="form-group">
                    <label for="loan-amount">Amount:</label>
                    <input type="number" id="loan-amount" placeholder="Enter Amount" name="amount">
                </div>
                <div class="form-group">
                    <label for="rate">Interest Rate:</label>
                    <input type="number" id="rate" min=0 placeholder="Enter Interest Rate" name="rate">
                </div>
                <div class="form-group">
                    <label for="month">Month:</label>
                    <input type="number" id="month" placeholder="Enter month" name="month">
                </div>

                <div class="button-group">
                    <button type="submit" class="button-primary" style="margin-top: 10px; width: 100%;">Calculate</button>
                </div>

                <hr>

                <div class="result">
                    <label for="loanCalculationResultId">${calculationResult}</label>
                    <input type="text" id="loanCalculationResultId" readonly>
                </div>
            </form:form>
        </c:if>
        <c:if test="${type == 'exchangeRate'}">
            <div class="form-group">
                <label for="fromCurrency">From:</label>
                <select id="fromCurrency">
                    <c:forEach var="currency" items="${currencies}">
                        <option value="${currency}">${currency}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="toCurrency">To:</label>
                <select id="toCurrency">
                    <c:forEach var="currency" items="${currencies}">
                        <option value="${currency}">${currency}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="number" id="amount" placeholder="Enter amount">
            </div>
            <div class="form-group">
                <button class="button-primary" onclick="convertCurrency()" style="margin-top: 10px; width:100%;">Convert</button>
            </div>
            <div class="form-group">
                <label class="text-center" id="convertedAmount"></label>
            </div>
            <a href="/home/exchangerate"
               style="font-size: 16px; color:white; padding: 14px; border-radius: 8px; background-color: #695c5c">Go To Exchange Rates</a>
        </c:if>
        <c:if test="${type == 'certificate'}">
            <form:form class="calculator-form" action="${pageContext.request.contextPath}/calculator/certificate" modelAttribute="request">
                <div class="form-group">
                    <label for="loan-amount">Amount:</label>
                    <form:input min="1000" path="amount" type="number" id="amount" placeholder="Enter Amount" name="amount"/>
                </div>
                <div class="form-group">
                    <label for="certificate-type">Certificate Type:</label>
                    <form:select path="type" id="certificate-type" name="type">
                        <c:forEach items="${types}" var="type">
                            <option value="${type}">${type} Year - ${type.getValue()}%</option>
                        </c:forEach>
                    </form:select>
                </div>
                <div class="button-group">
                    <button type="submit" class="button-primary" style="margin-top: 10px; width: 100%;">Calculate</button>
                </div>
                <hr>
                <c:if test="${not empty result}">
                    <div class="result">
                        <label><strong>Result: ${result}</strong></label>
                    </div>
                </c:if>
                <table class="table table-striped mt-3">
                    <tr>
                        <th>Deposit Amount</th>
                        <th>Annual Interest</th>
                    </tr>
                    <tr>
                        <td>$1,000 - $4,999</td>
                        <td>1.5%</td>
                    </tr>
                    <tr>
                        <td>$5,000 - $9,999</td>
                        <td>2.0%</td>
                    </tr>
                    <tr>
                        <td>$10,000 and above</td>
                        <td>2.5%</td>
                    </tr>
                </table>
                <hr>
                <table class="table table-striped">
                    <tr>
                        <th>Term Length</th>
                        <th>Interest</th>
                    </tr>
                    <tr>
                        <td>1 Year</td>
                        <td>+0.5%</td>
                    </tr>
                    <tr>
                        <td>3 Years</td>
                        <td>+0.75%</td>
                    </tr>
                    <tr>
                        <td>5 Years</td>
                        <td>+1.0%</td>
                    </tr>
                    <tr>
                        <td>7 Years</td>
                        <td>+1.5%</td>
                    </tr>
                </table>
                <p><strong>Total Interest Rate</strong> = Base Interest Rate + Interest from Deposit Amount Tier + Interest from Term Length
                </p>
            </form:form>
        </c:if>
    </div>

    <c:if test="${type == 'exchangeRate'}">
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
                        document.getElementById("convertedAmount").innerText= convertedAmount.toFixed(2) + " " + toCurrency;
                    })
                    .catch(error => console.error('Error fetching data:', error));
            }
        </script>
    </c:if>
</body>
</html>