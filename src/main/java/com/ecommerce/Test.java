package com.ecommerce;

import com.ecommerce.ws.account.AccountApprovalBPEL;
import com.ecommerce.ws.account.AccountapprovalBpelClientEp;
import com.ecommerce.ws.account.Requests;
import com.ecommerce.ws.account.RequestsCollection;
import jakarta.xml.bind.JAXBElement;

import javax.xml.namespace.QName;
import java.math.BigDecimal;

public class Test {
    public static void main(String[] args) {
        AccountapprovalBpelClientEp client = new AccountapprovalBpelClientEp();
        AccountApprovalBPEL bpel = client.getAccountApprovalBPELPt();

        RequestsCollection requests = new RequestsCollection();
        Requests request = new Requests();
        request.setCustomerid(new JAXBElement<>(new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "customerid"), BigDecimal.class, new BigDecimal(1)));

        requests.getRequests().add(request);
        bpel.process(requests);
    }
}
