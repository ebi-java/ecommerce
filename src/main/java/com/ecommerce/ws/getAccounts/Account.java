
package com.ecommerce.ws.getAccounts;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for Account complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Account"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="accountid" type="{http://www.w3.org/2001/XMLSchema}decimal"/&gt;
 *         &lt;element name="accounttype" type="{http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts}string50" minOccurs="0"/&gt;
 *         &lt;element name="balance" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *         &lt;element name="dateopened" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/&gt;
 *         &lt;element name="customerid" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Account", propOrder = {
    "accountid",
    "accounttype",
    "balance",
    "dateopened",
    "customerid"
})
public class Account {

    @XmlElement(required = true)
    protected BigDecimal accountid;
    @XmlElementRef(name = "accounttype", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", type = JAXBElement.class, required = false)
    protected JAXBElement<String> accounttype;
    @XmlElementRef(name = "balance", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> balance;
    @XmlElementRef(name = "dateopened", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", type = JAXBElement.class, required = false)
    protected JAXBElement<XMLGregorianCalendar> dateopened;
    @XmlElementRef(name = "customerid", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/getAccounts", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> customerid;

    /**
     * Gets the value of the accountid property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getAccountid() {
        return accountid;
    }

    /**
     * Sets the value of the accountid property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setAccountid(BigDecimal value) {
        this.accountid = value;
    }

    /**
     * Gets the value of the accounttype property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getAccounttype() {
        return accounttype;
    }

    /**
     * Sets the value of the accounttype property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setAccounttype(JAXBElement<String> value) {
        this.accounttype = value;
    }

    /**
     * Gets the value of the balance property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getBalance() {
        return balance;
    }

    /**
     * Sets the value of the balance property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setBalance(JAXBElement<BigDecimal> value) {
        this.balance = value;
    }

    /**
     * Gets the value of the dateopened property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public JAXBElement<XMLGregorianCalendar> getDateopened() {
        return dateopened;
    }

    /**
     * Sets the value of the dateopened property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public void setDateopened(JAXBElement<XMLGregorianCalendar> value) {
        this.dateopened = value;
    }

    /**
     * Gets the value of the customerid property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getCustomerid() {
        return customerid;
    }

    /**
     * Sets the value of the customerid property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setCustomerid(JAXBElement<BigDecimal> value) {
        this.customerid = value;
    }

}
