
package com.ecommerce.ws.loanCalculators;

import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ecommerce.ws.loanCalculators package. 
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

    private final static QName _CalculateLoan_QNAME = new QName("http://loancalculation/", "calculateLoan");
    private final static QName _CalculateLoanResponse_QNAME = new QName("http://loancalculation/", "calculateLoanResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ecommerce.ws.loanCalculators
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CalculateLoan_Type }
     * 
     */
    public CalculateLoan_Type createCalculateLoan_Type() {
        return new CalculateLoan_Type();
    }

    /**
     * Create an instance of {@link CalculateLoanResponse }
     * 
     */
    public CalculateLoanResponse createCalculateLoanResponse() {
        return new CalculateLoanResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CalculateLoan_Type }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link CalculateLoan_Type }{@code >}
     */
    @XmlElementDecl(namespace = "http://loancalculation/", name = "calculateLoan")
    public JAXBElement<CalculateLoan_Type> createCalculateLoan(CalculateLoan_Type value) {
        return new JAXBElement<CalculateLoan_Type>(_CalculateLoan_QNAME, CalculateLoan_Type.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CalculateLoanResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link CalculateLoanResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://loancalculation/", name = "calculateLoanResponse")
    public JAXBElement<CalculateLoanResponse> createCalculateLoanResponse(CalculateLoanResponse value) {
        return new JAXBElement<CalculateLoanResponse>(_CalculateLoanResponse_QNAME, CalculateLoanResponse.class, null, value);
    }

}
