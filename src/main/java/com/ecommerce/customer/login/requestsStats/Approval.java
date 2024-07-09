package com.ecommerce.customer.login.requestsStats;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Approval {
    private int approvalId;
    private int requestId;
    private String approvalStatus;
    private String approvalDate;
    private String approvedAmount;
}
