
package com.ecommerce.ws.loanws;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import jakarta.xml.ws.Service;
import jakarta.xml.ws.WebEndpoint;
import jakarta.xml.ws.WebServiceClient;
import jakarta.xml.ws.WebServiceException;
import jakarta.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.3.2
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "processloan_asyncv03_client_ep", targetNamespace = "http://xmlns.oracle.com/LoanCycleIntegration/InsertLoan/processLoan_AsyncV03", wsdlLocation = "http://localhost:8001/soa-infra/services/default/InsertLoan/processloan_asyncv03_client_ep?WSDL")
public class ProcessloanAsyncv03ClientEp
    extends Service
{

    private final static URL PROCESSLOANASYNCV03CLIENTEP_WSDL_LOCATION;
    private final static WebServiceException PROCESSLOANASYNCV03CLIENTEP_EXCEPTION;
    private final static QName PROCESSLOANASYNCV03CLIENTEP_QNAME = new QName("http://xmlns.oracle.com/LoanCycleIntegration/InsertLoan/processLoan_AsyncV03", "processloan_asyncv03_client_ep");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8001/soa-infra/services/default/InsertLoan/processloan_asyncv03_client_ep?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        PROCESSLOANASYNCV03CLIENTEP_WSDL_LOCATION = url;
        PROCESSLOANASYNCV03CLIENTEP_EXCEPTION = e;
    }

    public ProcessloanAsyncv03ClientEp() {
        super(__getWsdlLocation(), PROCESSLOANASYNCV03CLIENTEP_QNAME);
    }

    public ProcessloanAsyncv03ClientEp(WebServiceFeature... features) {
        super(__getWsdlLocation(), PROCESSLOANASYNCV03CLIENTEP_QNAME, features);
    }

    public ProcessloanAsyncv03ClientEp(URL wsdlLocation) {
        super(wsdlLocation, PROCESSLOANASYNCV03CLIENTEP_QNAME);
    }

    public ProcessloanAsyncv03ClientEp(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, PROCESSLOANASYNCV03CLIENTEP_QNAME, features);
    }

    public ProcessloanAsyncv03ClientEp(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public ProcessloanAsyncv03ClientEp(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns ProcessLoanAsyncV03
     */
    @WebEndpoint(name = "processLoan_AsyncV03_pt")
    public ProcessLoanAsyncV03 getProcessLoanAsyncV03Pt() {
        return super.getPort(new QName("http://xmlns.oracle.com/LoanCycleIntegration/InsertLoan/processLoan_AsyncV03", "processLoan_AsyncV03_pt"), ProcessLoanAsyncV03.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link jakarta.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns ProcessLoanAsyncV03
     */
    @WebEndpoint(name = "processLoan_AsyncV03_pt")
    public ProcessLoanAsyncV03 getProcessLoanAsyncV03Pt(WebServiceFeature... features) {
        return super.getPort(new QName("http://xmlns.oracle.com/LoanCycleIntegration/InsertLoan/processLoan_AsyncV03", "processLoan_AsyncV03_pt"), ProcessLoanAsyncV03.class, features);
    }

    private static URL __getWsdlLocation() {
        if (PROCESSLOANASYNCV03CLIENTEP_EXCEPTION!= null) {
            throw PROCESSLOANASYNCV03CLIENTEP_EXCEPTION;
        }
        return PROCESSLOANASYNCV03CLIENTEP_WSDL_LOCATION;
    }

}
