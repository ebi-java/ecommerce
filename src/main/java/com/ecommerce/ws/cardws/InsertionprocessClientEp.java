
package com.ecommerce.ws.cardws;

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
@WebServiceClient(name = "insertionprocess_client_ep", targetNamespace = "http://xmlns.oracle.com/CardApplication/RequsetDocumentInsertion/InsertionProcess", wsdlLocation = "http://localhost:8001/soa-infra/services/default/RequsetDocumentInsertion/insertionprocess_client_ep?WSDL")
public class InsertionprocessClientEp
    extends Service
{

    private final static URL INSERTIONPROCESSCLIENTEP_WSDL_LOCATION;
    private final static WebServiceException INSERTIONPROCESSCLIENTEP_EXCEPTION;
    private final static QName INSERTIONPROCESSCLIENTEP_QNAME = new QName("http://xmlns.oracle.com/CardApplication/RequsetDocumentInsertion/InsertionProcess", "insertionprocess_client_ep");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:8001/soa-infra/services/default/RequsetDocumentInsertion/insertionprocess_client_ep?WSDL");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        INSERTIONPROCESSCLIENTEP_WSDL_LOCATION = url;
        INSERTIONPROCESSCLIENTEP_EXCEPTION = e;
    }

    public InsertionprocessClientEp() {
        super(__getWsdlLocation(), INSERTIONPROCESSCLIENTEP_QNAME);
    }

    public InsertionprocessClientEp(WebServiceFeature... features) {
        super(__getWsdlLocation(), INSERTIONPROCESSCLIENTEP_QNAME, features);
    }

    public InsertionprocessClientEp(URL wsdlLocation) {
        super(wsdlLocation, INSERTIONPROCESSCLIENTEP_QNAME);
    }

    public InsertionprocessClientEp(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, INSERTIONPROCESSCLIENTEP_QNAME, features);
    }

    public InsertionprocessClientEp(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public InsertionprocessClientEp(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns InsertionProcess
     */
    @WebEndpoint(name = "InsertionProcess_pt")
    public InsertionProcess getInsertionProcessPt() {
        return super.getPort(new QName("http://xmlns.oracle.com/CardApplication/RequsetDocumentInsertion/InsertionProcess", "InsertionProcess_pt"), InsertionProcess.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link jakarta.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns InsertionProcess
     */
    @WebEndpoint(name = "InsertionProcess_pt")
    public InsertionProcess getInsertionProcessPt(WebServiceFeature... features) {
        return super.getPort(new QName("http://xmlns.oracle.com/CardApplication/RequsetDocumentInsertion/InsertionProcess", "InsertionProcess_pt"), InsertionProcess.class, features);
    }

    private static URL __getWsdlLocation() {
        if (INSERTIONPROCESSCLIENTEP_EXCEPTION!= null) {
            throw INSERTIONPROCESSCLIENTEP_EXCEPTION;
        }
        return INSERTIONPROCESSCLIENTEP_WSDL_LOCATION;
    }

}
