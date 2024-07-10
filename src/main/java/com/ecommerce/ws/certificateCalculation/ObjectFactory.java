
package com.ecommerce.ws.certificateCalculation;

import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ecommerce.ws.certificateCalculation.jsp package.
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

    private final static QName _CalculateInterestRate_QNAME = new QName("http://CertificateInterestRate/", "calculateInterestRate");
    private final static QName _CalculateInterestRateResponse_QNAME = new QName("http://CertificateInterestRate/", "calculateInterestRateResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ecommerce.ws.certificateCalculation.jsp
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CalculateInterestRate }
     * 
     */
    public CalculateInterestRate createCalculateInterestRate() {
        return new CalculateInterestRate();
    }

    /**
     * Create an instance of {@link CalculateInterestRateResponse }
     * 
     */
    public CalculateInterestRateResponse createCalculateInterestRateResponse() {
        return new CalculateInterestRateResponse();
    }

    /**
     * Create an instance of {@link CertificateRequest }
     * 
     */
    public CertificateRequest createCertificateRequest() {
        return new CertificateRequest();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CalculateInterestRate }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link CalculateInterestRate }{@code >}
     */
    @XmlElementDecl(namespace = "http://CertificateInterestRate/", name = "calculateInterestRate")
    public JAXBElement<CalculateInterestRate> createCalculateInterestRate(CalculateInterestRate value) {
        return new JAXBElement<CalculateInterestRate>(_CalculateInterestRate_QNAME, CalculateInterestRate.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CalculateInterestRateResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link CalculateInterestRateResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://CertificateInterestRate/", name = "calculateInterestRateResponse")
    public JAXBElement<CalculateInterestRateResponse> createCalculateInterestRateResponse(CalculateInterestRateResponse value) {
        return new JAXBElement<CalculateInterestRateResponse>(_CalculateInterestRateResponse_QNAME, CalculateInterestRateResponse.class, null, value);
    }

}
