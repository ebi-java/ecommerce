
package com.ecommerce.ws.loanws;

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
@WebService(name = "processLoan_AsyncV03", targetNamespace = "http://xmlns.oracle.com/LoanCycleIntegration/InsertLoan/processLoan_AsyncV03")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface ProcessLoanAsyncV03 {


    /**
     * 
     * @param payload
     */
    @WebMethod(action = "process")
    @Oneway
    public void process(
        @WebParam(name = "InputParameters", targetNamespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", partName = "payload")
        InputParameters payload);

}