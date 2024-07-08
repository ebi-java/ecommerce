
package com.ecommerce.ws.account;

import jakarta.jws.Oneway;
import jakarta.jws.WebMethod;
import jakarta.jws.WebParam;
import jakarta.jws.WebService;
import jakarta.jws.soap.SOAPBinding;
import jakarta.xml.bind.annotation.XmlSeeAlso;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.3.2
 * Generated source version: 2.2
 * 
 */
@WebService(name = "AccountApproval_BPEL", targetNamespace = "http://xmlns.oracle.com/AccountApproval_Application/AccountApproval_Project/AccountApproval_BPEL")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface AccountApprovalBPEL {


    /**
     * 
     * @param payload
     */
    @WebMethod(action = "process")
    @Oneway
    public void process(
        @WebParam(name = "RequestsCollection", targetNamespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", partName = "payload")
        RequestsCollection payload);

}