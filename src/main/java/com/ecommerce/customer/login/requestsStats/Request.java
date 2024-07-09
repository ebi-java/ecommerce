package com.ecommerce.customer.login.requestsStats;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Request {
    private int requestId;
    private int customerId;
    private String requestType;
    private String requestDate;
    private int amount;
    private String additionalInfo;
    private String status;
}
