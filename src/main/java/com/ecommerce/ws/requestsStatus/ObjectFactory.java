
package com.ecommerce.ws.requestsStatus;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ecommerce.ws.requestsStatus package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _RequestsCollection_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "RequestsCollection");
    private final static QName _CustomerDBSelectCustIDInputParameters_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "CustomerDBSelect_CustIDInputParameters");
    private final static QName _ApprovalApprovalstatus_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "approvalstatus");
    private final static QName _ApprovalApprovaldate_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "approvaldate");
    private final static QName _RequestsCustomerid_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "customerid");
    private final static QName _RequestsRequesttype_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "requesttype");
    private final static QName _RequestsRequestdate_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "requestdate");
    private final static QName _RequestsAmount_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "amount");
    private final static QName _RequestsAdditionalinfo_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "additionalinfo");
    private final static QName _RequestsStatus_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", "status");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ecommerce.ws.requestsStatus
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Requests }
     * 
     */
    public Requests createRequests() {
        return new Requests();
    }

    /**
     * Create an instance of {@link RequestsCollection }
     * 
     */
    public RequestsCollection createRequestsCollection() {
        return new RequestsCollection();
    }

    /**
     * Create an instance of {@link CustomerDBSelectCustID }
     * 
     */
    public CustomerDBSelectCustID createCustomerDBSelectCustID() {
        return new CustomerDBSelectCustID();
    }

    /**
     * Create an instance of {@link Approval }
     * 
     */
    public Approval createApproval() {
        return new Approval();
    }

    /**
     * Create an instance of {@link Requests.ApprovalCollection }
     * 
     */
    public Requests.ApprovalCollection createRequestsApprovalCollection() {
        return new Requests.ApprovalCollection();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RequestsCollection }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link RequestsCollection }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "RequestsCollection")
    public JAXBElement<RequestsCollection> createRequestsCollection(RequestsCollection value) {
        return new JAXBElement<RequestsCollection>(_RequestsCollection_QNAME, RequestsCollection.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CustomerDBSelectCustID }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link CustomerDBSelectCustID }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "CustomerDBSelect_CustIDInputParameters")
    public JAXBElement<CustomerDBSelectCustID> createCustomerDBSelectCustIDInputParameters(CustomerDBSelectCustID value) {
        return new JAXBElement<CustomerDBSelectCustID>(_CustomerDBSelectCustIDInputParameters_QNAME, CustomerDBSelectCustID.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "approvalstatus", scope = Approval.class)
    public JAXBElement<String> createApprovalApprovalstatus(String value) {
        return new JAXBElement<String>(_ApprovalApprovalstatus_QNAME, String.class, Approval.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "approvaldate", scope = Approval.class)
    public JAXBElement<XMLGregorianCalendar> createApprovalApprovaldate(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_ApprovalApprovaldate_QNAME, XMLGregorianCalendar.class, Approval.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "customerid", scope = Requests.class)
    public JAXBElement<BigDecimal> createRequestsCustomerid(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_RequestsCustomerid_QNAME, BigDecimal.class, Requests.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "requesttype", scope = Requests.class)
    public JAXBElement<String> createRequestsRequesttype(String value) {
        return new JAXBElement<String>(_RequestsRequesttype_QNAME, String.class, Requests.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "requestdate", scope = Requests.class)
    public JAXBElement<XMLGregorianCalendar> createRequestsRequestdate(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_RequestsRequestdate_QNAME, XMLGregorianCalendar.class, Requests.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "amount", scope = Requests.class)
    public JAXBElement<BigDecimal> createRequestsAmount(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_RequestsAmount_QNAME, BigDecimal.class, Requests.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "additionalinfo", scope = Requests.class)
    public JAXBElement<String> createRequestsAdditionalinfo(String value) {
        return new JAXBElement<String>(_RequestsAdditionalinfo_QNAME, String.class, Requests.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", name = "status", scope = Requests.class)
    public JAXBElement<String> createRequestsStatus(String value) {
        return new JAXBElement<String>(_RequestsStatus_QNAME, String.class, Requests.class, value);
    }

}
