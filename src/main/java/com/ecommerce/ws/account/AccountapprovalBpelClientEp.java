
package com.ecommerce.ws.account;

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
@WebServiceClient(name = "accountapproval_bpel_client_ep", targetNamespace = "http://xmlns.oracle.com/AccountApproval_Application/AccountApproval_Project/AccountApproval_BPEL", wsdlLocation = "http://172.21.2.28:8001/soa-infra/services/default/AccountApproval_Project/accountapproval_bpel_client_ep?WSDL")
public class AccountapprovalBpelClientEp
    extends Service
{

    private final static URL ACCOUNTAPPROVALBPELCLIENTEP_WSDL_LOCATION;
    private final static WebServiceException ACCOUNTAPPROVALBPELCLIENTEP_EXCEPTION;
    private final static QName ACCOUNTAPPROVALBPELCLIENTEP_QNAME = new QName("http://xmlns.oracle.com/AccountApproval_Application/AccountApproval_Project/AccountApproval_BPEL", "accountapproval_bpel_client_ep");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://172.21.2.28:8001/soa-infra/services/default/AccountApproval_Project/accountapproval_bpel_client_ep?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        ACCOUNTAPPROVALBPELCLIENTEP_WSDL_LOCATION = url;
        ACCOUNTAPPROVALBPELCLIENTEP_EXCEPTION = e;
    }

    public AccountapprovalBpelClientEp() {
        super(__getWsdlLocation(), ACCOUNTAPPROVALBPELCLIENTEP_QNAME);
    }

    public AccountapprovalBpelClientEp(WebServiceFeature... features) {
        super(__getWsdlLocation(), ACCOUNTAPPROVALBPELCLIENTEP_QNAME, features);
    }

    public AccountapprovalBpelClientEp(URL wsdlLocation) {
        super(wsdlLocation, ACCOUNTAPPROVALBPELCLIENTEP_QNAME);
    }

    public AccountapprovalBpelClientEp(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, ACCOUNTAPPROVALBPELCLIENTEP_QNAME, features);
    }

    public AccountapprovalBpelClientEp(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public AccountapprovalBpelClientEp(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns AccountApprovalBPEL
     */
    @WebEndpoint(name = "AccountApproval_BPEL_pt")
    public AccountApprovalBPEL getAccountApprovalBPELPt() {
        return super.getPort(new QName("http://xmlns.oracle.com/AccountApproval_Application/AccountApproval_Project/AccountApproval_BPEL", "AccountApproval_BPEL_pt"), AccountApprovalBPEL.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns AccountApprovalBPEL
     */
    @WebEndpoint(name = "AccountApproval_BPEL_pt")
    public AccountApprovalBPEL getAccountApprovalBPELPt(WebServiceFeature... features) {
        return super.getPort(new QName("http://xmlns.oracle.com/AccountApproval_Application/AccountApproval_Project/AccountApproval_BPEL", "AccountApproval_BPEL_pt"), AccountApprovalBPEL.class, features);
    }

    private static URL __getWsdlLocation() {
        if (ACCOUNTAPPROVALBPELCLIENTEP_EXCEPTION!= null) {
            throw ACCOUNTAPPROVALBPELCLIENTEP_EXCEPTION;
        }
        return ACCOUNTAPPROVALBPELCLIENTEP_WSDL_LOCATION;
    }

}
