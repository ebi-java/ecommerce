
package com.ecommerce.ws.certificateCalculation;

import jakarta.jws.WebMethod;
import jakarta.jws.WebParam;
import jakarta.jws.WebResult;
import jakarta.jws.WebService;
import jakarta.jws.soap.SOAPBinding;
import jakarta.xml.bind.annotation.XmlSeeAlso;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.3.2
 * Generated source version: 2.2
 * 
 */
@WebService(name = "calculate", targetNamespace = "http://xmlns.oracle.com/CertificateCalculation/CertificateCalc/calculate")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Calculate {


    /**
     * 
     * @param payload
     * @return
     *     returns com.ecommerce.ws.certificateCalculation.jsp.CalculateInterestRateResponse
     */
    @WebMethod(action = "process")
    @WebResult(name = "calculateInterestRateResponse", targetNamespace = "http://CertificateInterestRate/", partName = "payload")
    public CalculateInterestRateResponse process(
        @WebParam(name = "calculateInterestRate", targetNamespace = "http://CertificateInterestRate/", partName = "payload")
        CalculateInterestRate payload);

}
