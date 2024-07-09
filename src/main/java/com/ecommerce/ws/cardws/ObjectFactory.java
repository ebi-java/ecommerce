
package com.ecommerce.ws.cardws;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ecommerce.ws.cardws package. 
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

    private final static QName _DocumentCollectionDocumentType_QNAME = new QName("http://www.example.org/request", "DocumentType");
    private final static QName _DocumentCollectionFilePath_QNAME = new QName("http://www.example.org/request", "FilePath");
    private final static QName _RequestCollectionCustomerId_QNAME = new QName("http://www.example.org/request", "CustomerId");
    private final static QName _RequestCollectionRequestType_QNAME = new QName("http://www.example.org/request", "RequestType");
    private final static QName _RequestCollectionAmount_QNAME = new QName("http://www.example.org/request", "Amount");
    private final static QName _RequestCollectionAdditionalInfo_QNAME = new QName("http://www.example.org/request", "AdditionalInfo");
    private final static QName _RequestCollectionStatus_QNAME = new QName("http://www.example.org/request", "Status");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ecommerce.ws.cardws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ProcessResponse }
     * 
     */
    public ProcessResponse createProcessResponse() {
        return new ProcessResponse();
    }

    /**
     * Create an instance of {@link RequestDocumentCollectionInput }
     * 
     */
    public RequestDocumentCollectionInput createRequestDocumentCollectionInput() {
        return new RequestDocumentCollectionInput();
    }

    /**
     * Create an instance of {@link RequestCollection }
     * 
     */
    public RequestCollection createRequestCollection() {
        return new RequestCollection();
    }

    /**
     * Create an instance of {@link DocumentCollection }
     * 
     */
    public DocumentCollection createDocumentCollection() {
        return new DocumentCollection();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.example.org/request", name = "DocumentType", scope = DocumentCollection.class)
    public JAXBElement<String> createDocumentCollectionDocumentType(String value) {
        return new JAXBElement<String>(_DocumentCollectionDocumentType_QNAME, String.class, DocumentCollection.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.example.org/request", name = "FilePath", scope = DocumentCollection.class)
    public JAXBElement<String> createDocumentCollectionFilePath(String value) {
        return new JAXBElement<String>(_DocumentCollectionFilePath_QNAME, String.class, DocumentCollection.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.example.org/request", name = "CustomerId", scope = RequestCollection.class)
    public JAXBElement<BigDecimal> createRequestCollectionCustomerId(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_RequestCollectionCustomerId_QNAME, BigDecimal.class, RequestCollection.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.example.org/request", name = "RequestType", scope = RequestCollection.class)
    public JAXBElement<String> createRequestCollectionRequestType(String value) {
        return new JAXBElement<String>(_RequestCollectionRequestType_QNAME, String.class, RequestCollection.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.example.org/request", name = "Amount", scope = RequestCollection.class)
    public JAXBElement<BigDecimal> createRequestCollectionAmount(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_RequestCollectionAmount_QNAME, BigDecimal.class, RequestCollection.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.example.org/request", name = "AdditionalInfo", scope = RequestCollection.class)
    public JAXBElement<String> createRequestCollectionAdditionalInfo(String value) {
        return new JAXBElement<String>(_RequestCollectionAdditionalInfo_QNAME, String.class, RequestCollection.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.example.org/request", name = "Status", scope = RequestCollection.class)
    public JAXBElement<String> createRequestCollectionStatus(String value) {
        return new JAXBElement<String>(_RequestCollectionStatus_QNAME, String.class, RequestCollection.class, value);
    }

}
