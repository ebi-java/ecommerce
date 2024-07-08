
package com.ecommerce.ws.account;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ecommerce.ws.account package. 
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

    private final static QName _RequestsCollection_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "RequestsCollection");
    private final static QName _RequestsCustomerid_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "customerid");
    private final static QName _RequestsRequesttype_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "requesttype");
    private final static QName _RequestsRequestdate_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "requestdate");
    private final static QName _RequestsAmount_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "amount");
    private final static QName _RequestsAdditionalinfo_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "additionalinfo");
    private final static QName _RequestsStatus_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", "status");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ecommerce.ws.account
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link RequestsCollection }
     * 
     */
    public RequestsCollection createRequestsCollection() {
        return new RequestsCollection();
    }

    /**
     * Create an instance of {@link Requests }
     * 
     */
    public Requests createRequests() {
        return new Requests();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RequestsCollection }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link RequestsCollection }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", name = "RequestsCollection")
    public JAXBElement<RequestsCollection> createRequestsCollection(RequestsCollection value) {
        return new JAXBElement<RequestsCollection>(_RequestsCollection_QNAME, RequestsCollection.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", name = "customerid", scope = Requests.class)
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
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", name = "requesttype", scope = Requests.class)
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
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", name = "requestdate", scope = Requests.class)
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
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", name = "amount", scope = Requests.class)
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
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", name = "additionalinfo", scope = Requests.class)
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
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/InsertRequest_DB", name = "status", scope = Requests.class)
    public JAXBElement<String> createRequestsStatus(String value) {
        return new JAXBElement<String>(_RequestsStatus_QNAME, String.class, Requests.class, value);
    }

}
