<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="javax.xml.datatype.XMLGregorianCalendar" %>
<%@ page import="javax.xml.datatype.DatatypeFactory" %>

<%!
    public Date convertXMLGregorianCalendarToDate(XMLGregorianCalendar xmlGregCal) {
        if (xmlGregCal == null) {
            return null;
        }
        return xmlGregCal.toGregorianCalendar().getTime();
    }
%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<html lang="en">
<jsp:include page="user-header-fragment.jsp"/>
<head>
    <title>Profile</title>



        <style>
            /* Define styles for different status */

        .status-blue {
            background-color: lightblue;
            color: black;
        }

        .status-green {
            background-color: lightgreen;
            color: black;
        }

        .status-red {
            color: lightcoral;
        }
        /* Animation for table rows */

        .request-row {
            animation: animateRow 0.9s ease;
        }

        @keyframes animateRow {
            0% {
                transform: translateY(-20px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 18px;
        }

        th,
        td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ccc;
            font-size: 18px;
        }

        tr.drag-over {
            background-color: #f0f0f0;
            /* Highlight when dragging over */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xl-4 col-12 mx-5 my-xl-0 my-5">
            <img src="../../resources/images/profile.png" style="width:300px;height: 300px">
        </div>
        <div class="col-xl-7 col-12" >

            <form:form action="${pageContext.request.contextPath}/customer/home"  modelAttribute="customer">
                <form:hidden path="id"/>
                <div class="mb-3">
                    <h2>Name: ${customer.userDetail.name}</h2>
                </div>

                <div class="mb-3">
                    <h2>Type: ${customer.userDetail.type} </h2>
                </div>

                <div class="mb-3">
                    <h2>Email: ${customer.userDetail.email}</h2>
                </div>

                <div class="mb-3">
                    <h2>UserName: ${customer.username}</h2>
                </div>

                <div class="mb-3">
                    <h2>phone: ${customer.userDetail.phone}</h2>
                </div>

                <div class="mb-3">
                    <h2>birthdate : ${customer.userDetail.birthDate}</h2>
                </div>
            </form:form>

        </div>  </div>



<br>
<br>
<br>

<button id="exportExcelBtn" style="margin-left: 36%;" class="btn btn-primary mt-3">Export to File</button>

    <br>
    <br>
    <br>

    <div class="table-responsive">
        <table id="requestsTable" class="table table-striped">
            <thead>
            <tr>
                <th onclick="sortTable(1)">Request ID <i id="idIcon" class="bi bi-sort"></i></th>
                <th onclick="sortTable(2)">Request Type <i id="typeIcon" class="bi bi-sort"></i></th>
                <th onclick="sortTable(3)">Request Date <i id="dateIcon" class="bi bi-sort"></i></th>
                <th onclick="sortTable(4)">Request Amount <i id="amountIcon" class="bi bi-sort"></i></th>
                <th onclick="sortTable(0)">Status <i id="statusIcon" class="bi bi-sort"></i></th>

            </tr>
            </thead>

            <tbody id="requestsData">
            <c:forEach items="${requests}" var="request">
                <tr>
                        <td>${request.getRequestid().toString()}</td>
                        <td>${request.getRequesttype().getValue()}</td>
                        <td>${request.getRequestdate().getValue()}</td>
                        <td>${request.getAmount().getValue()}</td>
                    <c:choose>

                        <c:when test="${not empty request.getApprovalCollection().getApproval() and (request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue() eq 'Approved' or request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue() eq 'approved' or request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue() eq 'APPROVE')}">
                            <td style="color: green">${request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue()}</td>
                        </c:when>
                        <c:when test="${not empty request.getApprovalCollection().getApproval() and (request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue() eq 'Rejected' or request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue() eq 'rejected' or request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue() eq 'REJECT')}">
                            <td style="color: darkred">${request.getApprovalCollection().getApproval().get(0).getApprovalstatus().getValue()}</td>
                        </c:when>
                        <c:otherwise>
                            <td style="color: darkblue">Pending</td>
                        </c:otherwise>
                    </c:choose>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <nav class="pagination">
            <ul class="pagination">
                <li class="page-item" id="prevPage">
                    <a class="page-link" href="#">Previous</a>
                </li>
                <li class="page-item" id="nextPage">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

<script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    // JavaScript functions for the home page
    function exportToExcel() {
        var table = document.getElementById('requestsTable');
        var rows = table.rows;
        var excelData = [];

        for (var i = 1; i < rows.length; i++) {
            var rowData = [];
            var cells = rows[i].cells;

            for (var j = 0; j < cells.length; j++) {
                rowData.push(cells[j].innerHTML);
            }

            excelData.push(rowData);
        }

        var ws = XLSX.utils.aoa_to_sheet(excelData);
        var wb = XLSX.utils.book_new();
        XLSX.utils.book_append_sheet(wb, ws, 'Requests');
        XLSX.writeFile(wb, 'requests.xlsx');
    }

    document.getElementById('exportExcelBtn').addEventListener('click', exportToExcel);

    var ascending = true;

    $(document).ready(function() {
        var pageSize = 5; // Number of rows per page
        var currentPage = 1; // Current page
        var totalRows = $('#requestsData tr').length; // Total number of rows

        // Function to show rows for the current page
        function showRows() {
            var startIndex = (currentPage - 1) * pageSize;
            var endIndex = startIndex + pageSize;

            // Hide all rows initially
            $('#requestsData tr').hide();

            // Show the rows for the current page
            $('#requestsData tr').slice(startIndex, endIndex).show();

            updatePaginationControls();
        }

        // Function to update pagination controls based on current page
        function updatePaginationControls() {
            var totalPages = Math.ceil(totalRows / pageSize);

            if (currentPage === 1) {
                $('#prevPage').addClass('disabled');
            } else {
                $('#prevPage').removeClass('disabled');
            }

            if (currentPage === totalPages) {
                $('#nextPage').addClass('disabled');
            } else {
                $('#nextPage').removeClass('disabled');
            }
        }

        // Initial show of rows based on the current page
        showRows();

        // Pagination click events
        $('#prevPage').on('click', function(e) {
            e.preventDefault();
            if (currentPage > 1) {
                currentPage--;
                showRows();
            }
        });

        $('#nextPage').on('click', function(e) {
            e.preventDefault();
            var totalPages = Math.ceil(totalRows / pageSize);
            if (currentPage < totalPages) {
                currentPage++;
                showRows();
            }
        });

        sortTable(0);
    });

    // Call updateRequestData initially
        updateRequestData();

        // Drag and drop functionality
        var dragged;

        function dragStart(event) {
            dragged = event.target;
            event.dataTransfer.setData('text/html', dragged.outerHTML);
            event.dataTransfer.effectAllowed = 'move';
            event.target.style.opacity = '0.5'; // Reduce opacity to indicate drag
        }

        function dragOver(event) {
            event.preventDefault();
            event.dataTransfer.dropEffect = 'move';
        }

        function dragEnter(event) {
            event.preventDefault();
            if (event.target.tagName === 'TR') {
                event.target.classList.add('drag-over');
            }
        }

        function dragLeave(event) {
            if (event.target.tagName === 'TR') {
                event.target.classList.remove('drag-over');
            }
        }

        function drop(event) {
            event.preventDefault();
            if (event.target.tagName === 'TR') {
                event.target.parentNode.insertBefore(dragged, event.target.nextSibling);
                event.target.classList.remove('drag-over');
            }
        }

        function dragEnd(event) {
            event.preventDefault();
            event.target.style.opacity = '';
        }

        var rows = document.querySelectorAll('#requestsTable tbody tr');
        rows.forEach(function(row) {
            row.addEventListener('dragstart', dragStart);
            row.addEventListener('dragover', dragOver);
            row.addEventListener('dragenter', dragEnter);
            row.addEventListener('dragleave', dragLeave);
            row.addEventListener('drop', drop);
            row.addEventListener('dragend', dragEnd);
        });

    function sortTable(columnIndex) {
        var table, rows, switching, i, x, y, shouldSwitch;
        table = document.getElementById("requestsTable");
        switching = true;

        // Check the sorting order (toggle between ascending and descending)
        ascending = !ascending;
        var icon = document.getElementById(getIconId(columnIndex));
        icon.classList.remove(ascending ? 'bi-sort-down' : 'bi-sort-up');
        icon.classList.add(ascending ? 'bi-sort-up' : 'bi-sort-down');

        while (switching) {
            switching = false;
            rows = table.rows;

            for (i = 1; i < (rows.length - 1); i++) {
                shouldSwitch = false;
                x = rows[i].getElementsByTagName("TD")[columnIndex];
                y = rows[i + 1].getElementsByTagName("TD")[columnIndex];

                // Compare based on data type (handle numbers and dates appropriately)
                if (isNaN(x.innerHTML)) {
                    shouldSwitch = ascending ? (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) : (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase());
                } else {
                    shouldSwitch = ascending ? (parseInt(x.innerHTML) > parseInt(y.innerHTML)) : (parseInt(x.innerHTML) < parseInt(y.innerHTML));
                }

                if (shouldSwitch) {
                    rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                    switching = true;
                    break;
                }
            }
        }
    }

    function getIconId(columnIndex) {
        switch (columnIndex) {
            case 0:
                return "idIcon";
            case 1:
                return "typeIcon";
            case 2:
                return "dateIcon";
            case 3:
                return "amountIcon";
            case 4:
                return "statusIcon";
            default:
                return "";
        }
    }
</script>

 </body>
</html>