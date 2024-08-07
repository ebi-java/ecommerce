
package com.ecommerce.ws.certificateCalculation;

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
@WebServiceClient(name = "calculate_client_ep", targetNamespace = "http://xmlns.oracle.com/CertificateCalculation/CertificateCalc/calculate", wsdlLocation = "http://localhost:8001/soa-infra/services/default/CertificateCalc/calculate_client_ep?WSDL")
public class CalculateClientEp
    extends Service
{

    private final static URL CALCULATECLIENTEP_WSDL_LOCATION;
    private final static WebServiceException CALCULATECLIENTEP_EXCEPTION;
    private final static QName CALCULATECLIENTEP_QNAME = new QName("http://xmlns.oracle.com/CertificateCalculation/CertificateCalc/calculate", "calculate_client_ep");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8001/soa-infra/services/default/CertificateCalc/calculate_client_ep?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        CALCULATECLIENTEP_WSDL_LOCATION = url;
        CALCULATECLIENTEP_EXCEPTION = e;
    }

    public CalculateClientEp() {
        super(__getWsdlLocation(), CALCULATECLIENTEP_QNAME);
    }

    public CalculateClientEp(WebServiceFeature... features) {
        super(__getWsdlLocation(), CALCULATECLIENTEP_QNAME, features);
    }

    public CalculateClientEp(URL wsdlLocation) {
        super(wsdlLocation, CALCULATECLIENTEP_QNAME);
    }

    public CalculateClientEp(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, CALCULATECLIENTEP_QNAME, features);
    }

    public CalculateClientEp(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public CalculateClientEp(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns Calculate
     */
    @WebEndpoint(name = "calculate_pt")
    public Calculate getCalculatePt() {
        return super.getPort(new QName("http://xmlns.oracle.com/CertificateCalculation/CertificateCalc/calculate", "calculate_pt"), Calculate.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns Calculate
     */
    @WebEndpoint(name = "calculate_pt")
    public Calculate getCalculatePt(WebServiceFeature... features) {
        return super.getPort(new QName("http://xmlns.oracle.com/CertificateCalculation/CertificateCalc/calculate", "calculate_pt"), Calculate.class, features);
    }

    private static URL __getWsdlLocation() {
        if (CALCULATECLIENTEP_EXCEPTION!= null) {
            throw CALCULATECLIENTEP_EXCEPTION;
        }
        return CALCULATECLIENTEP_WSDL_LOCATION;
    }

}
