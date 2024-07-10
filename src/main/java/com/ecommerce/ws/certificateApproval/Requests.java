
package com.ecommerce.ws.certificateApproval;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for Requests complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Requests"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="requestid" type="{http://www.w3.org/2001/XMLSchema}decimal"/&gt;
 *         &lt;element name="customerid" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *         &lt;element name="requesttype" type="{http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert}string50" minOccurs="0"/&gt;
 *         &lt;element name="requestdate" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/&gt;
 *         &lt;element name="amount" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *         &lt;element name="additionalinfo" type="{http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert}CertificateType" minOccurs="0"/&gt;
 *         &lt;element name="status" type="{http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert}string20" minOccurs="0"/&gt;
 *         &lt;element name="accountid" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Requests", propOrder = {
    "requestid",
    "customerid",
    "requesttype",
    "requestdate",
    "amount",
    "additionalinfo",
    "status",
    "accountid"
})
public class Requests {

    @XmlElement(required = true)
    protected BigDecimal requestid;
    @XmlElementRef(name = "customerid", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> customerid;
    @XmlElementRef(name = "requesttype", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert", type = JAXBElement.class, required = false)
    protected JAXBElement<String> requesttype;
    @XmlElementRef(name = "requestdate", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert", type = JAXBElement.class, required = false)
    protected JAXBElement<XMLGregorianCalendar> requestdate;
    @XmlElementRef(name = "amount", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> amount;
    @XmlElementRef(name = "additionalinfo", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert", type = JAXBElement.class, required = false)
    protected JAXBElement<CertificateType> additionalinfo;
    @XmlElementRef(name = "status", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert", type = JAXBElement.class, required = false)
    protected JAXBElement<String> status;
    @XmlElementRef(name = "accountid", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/RequestsInsert", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> accountid;

    /**
     * Gets the value of the requestid property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getRequestid() {
        return requestid;
    }

    /**
     * Sets the value of the requestid property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setRequestid(BigDecimal value) {
        this.requestid = value;
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

    /**
     * Gets the value of the requesttype property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getRequesttype() {
        return requesttype;
    }

    /**
     * Sets the value of the requesttype property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setRequesttype(JAXBElement<String> value) {
        this.requesttype = value;
    }

    /**
     * Gets the value of the requestdate property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public JAXBElement<XMLGregorianCalendar> getRequestdate() {
        return requestdate;
    }

    /**
     * Sets the value of the requestdate property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public void setRequestdate(JAXBElement<XMLGregorianCalendar> value) {
        this.requestdate = value;
    }

    /**
     * Gets the value of the amount property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getAmount() {
        return amount;
    }

    /**
     * Sets the value of the amount property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setAmount(JAXBElement<BigDecimal> value) {
        this.amount = value;
    }

    /**
     * Gets the value of the additionalinfo property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link CertificateType }{@code >}
     *     
     */
    public JAXBElement<CertificateType> getAdditionalinfo() {
        return additionalinfo;
    }

    /**
     * Sets the value of the additionalinfo property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link CertificateType }{@code >}
     *     
     */
    public void setAdditionalinfo(JAXBElement<CertificateType> value) {
        this.additionalinfo = value;
    }

    /**
     * Gets the value of the status property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getStatus() {
        return status;
    }

    /**
     * Sets the value of the status property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setStatus(JAXBElement<String> value) {
        this.status = value;
    }

    /**
     * Gets the value of the accountid property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getAccountid() {
        return accountid;
    }

    /**
     * Sets the value of the accountid property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setAccountid(JAXBElement<BigDecimal> value) {
        this.accountid = value;
    }

}
