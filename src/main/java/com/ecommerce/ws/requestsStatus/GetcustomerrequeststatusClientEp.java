
package com.ecommerce.ws.requestsStatus;

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
@WebServiceClient(name = "getcustomerrequeststatus_client_ep", targetNamespace = "http://xmlns.oracle.com/SelectCustomerRequest/SelectCustomerRequest/getCustomerRequestStatus", wsdlLocation = "http://localhost:8001/soa-infra/services/default/SelectCustomerRequest/getcustomerrequeststatus_client_ep?WSDL")
public class GetcustomerrequeststatusClientEp
    extends Service
{

    private final static URL GETCUSTOMERREQUESTSTATUSCLIENTEP_WSDL_LOCATION;
    private final static WebServiceException GETCUSTOMERREQUESTSTATUSCLIENTEP_EXCEPTION;
    private final static QName GETCUSTOMERREQUESTSTATUSCLIENTEP_QNAME = new QName("http://xmlns.oracle.com/SelectCustomerRequest/SelectCustomerRequest/getCustomerRequestStatus", "getcustomerrequeststatus_client_ep");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8001/soa-infra/services/default/SelectCustomerRequest/getcustomerrequeststatus_client_ep?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        GETCUSTOMERREQUESTSTATUSCLIENTEP_WSDL_LOCATION = url;
        GETCUSTOMERREQUESTSTATUSCLIENTEP_EXCEPTION = e;
    }

    public GetcustomerrequeststatusClientEp() {
        super(__getWsdlLocation(), GETCUSTOMERREQUESTSTATUSCLIENTEP_QNAME);
    }

    public GetcustomerrequeststatusClientEp(WebServiceFeature... features) {
        super(__getWsdlLocation(), GETCUSTOMERREQUESTSTATUSCLIENTEP_QNAME, features);
    }

    public GetcustomerrequeststatusClientEp(URL wsdlLocation) {
        super(wsdlLocation, GETCUSTOMERREQUESTSTATUSCLIENTEP_QNAME);
    }

    public GetcustomerrequeststatusClientEp(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, GETCUSTOMERREQUESTSTATUSCLIENTEP_QNAME, features);
    }

    public GetcustomerrequeststatusClientEp(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public GetcustomerrequeststatusClientEp(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns GetCustomerRequestStatus
     */
    @WebEndpoint(name = "getCustomerRequestStatus_pt")
    public GetCustomerRequestStatus getGetCustomerRequestStatusPt() {
        return super.getPort(new QName("http://xmlns.oracle.com/SelectCustomerRequest/SelectCustomerRequest/getCustomerRequestStatus", "getCustomerRequestStatus_pt"), GetCustomerRequestStatus.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns GetCustomerRequestStatus
     */
    @WebEndpoint(name = "getCustomerRequestStatus_pt")
    public GetCustomerRequestStatus getGetCustomerRequestStatusPt(WebServiceFeature... features) {
        return super.getPort(new QName("http://xmlns.oracle.com/SelectCustomerRequest/SelectCustomerRequest/getCustomerRequestStatus", "getCustomerRequestStatus_pt"), GetCustomerRequestStatus.class, features);
    }

    private static URL __getWsdlLocation() {
        if (GETCUSTOMERREQUESTSTATUSCLIENTEP_EXCEPTION!= null) {
            throw GETCUSTOMERREQUESTSTATUSCLIENTEP_EXCEPTION;
        }
        return GETCUSTOMERREQUESTSTATUSCLIENTEP_WSDL_LOCATION;
    }

}