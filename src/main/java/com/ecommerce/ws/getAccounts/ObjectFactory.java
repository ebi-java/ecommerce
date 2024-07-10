
package com.ecommerce.ws.getAccounts;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ecommerce.ws.getAccounts package. 
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

    private final static QName _AccountCollection_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", "AccountCollection");
    private final static QName _GetAccountsSelectCustIDInputParameters_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", "getAccountsSelect_custIDInputParameters");
    private final static QName _AccountAccounttype_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", "accounttype");
    private final static QName _AccountBalance_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", "balance");
    private final static QName _AccountDateopened_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", "dateopened");
    private final static QName _AccountCustomerid_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", "customerid");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ecommerce.ws.getAccounts
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link AccountCollection }
     * 
     */
    public AccountCollection createAccountCollection() {
        return new AccountCollection();
    }

    /**
     * Create an instance of {@link GetAccountsSelectCustID }
     * 
     */
    public GetAccountsSelectCustID createGetAccountsSelectCustID() {
        return new GetAccountsSelectCustID();
    }

    /**
     * Create an instance of {@link Account }
     * 
     */
    public Account createAccount() {
        return new Account();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AccountCollection }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link AccountCollection }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", name = "AccountCollection")
    public JAXBElement<AccountCollection> createAccountCollection(AccountCollection value) {
        return new JAXBElement<AccountCollection>(_AccountCollection_QNAME, AccountCollection.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetAccountsSelectCustID }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link GetAccountsSelectCustID }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", name = "getAccountsSelect_custIDInputParameters")
    public JAXBElement<GetAccountsSelectCustID> createGetAccountsSelectCustIDInputParameters(GetAccountsSelectCustID value) {
        return new JAXBElement<GetAccountsSelectCustID>(_GetAccountsSelectCustIDInputParameters_QNAME, GetAccountsSelectCustID.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", name = "accounttype", scope = Account.class)
    public JAXBElement<String> createAccountAccounttype(String value) {
        return new JAXBElement<String>(_AccountAccounttype_QNAME, String.class, Account.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", name = "balance", scope = Account.class)
    public JAXBElement<BigDecimal> createAccountBalance(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_AccountBalance_QNAME, BigDecimal.class, Account.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", name = "dateopened", scope = Account.class)
    public JAXBElement<XMLGregorianCalendar> createAccountDateopened(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_AccountDateopened_QNAME, XMLGregorianCalendar.class, Account.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", name = "customerid", scope = Account.class)
    public JAXBElement<BigDecimal> createAccountCustomerid(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_AccountCustomerid_QNAME, BigDecimal.class, Account.class, value);
    }

}
