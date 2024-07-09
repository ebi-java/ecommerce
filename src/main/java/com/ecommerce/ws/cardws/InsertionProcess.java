
package com.ecommerce.ws.cardws;

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
@WebService(name = "InsertionProcess", targetNamespace = "http://xmlns.oracle.com/CardApplication/RequsetDocumentInsertion/InsertionProcess")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface InsertionProcess {


    /**
     * 
     * @param payload
     * @return
     *     returns com.ecommerce.ws.cardws.ProcessResponse
     */
    @WebMethod(action = "process")
    @WebResult(name = "processResponse", targetNamespace = "http://xmlns.oracle.com/CardApplication/RequsetDocumentInsertion/InsertionProcess", partName = "payload")
    public ProcessResponse process(
        @WebParam(name = "RequestDocumentCollectionInput", targetNamespace = "http://www.example.org/request", partName = "payload")
        RequestDocumentCollectionInput payload);

}