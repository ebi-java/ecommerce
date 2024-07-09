
package com.ecommerce.ws.requestsStatus;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for Approval complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Approval"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="approvalid" type="{http://www.w3.org/2001/XMLSchema}decimal"/&gt;
 *         &lt;element name="approvalstatus" type="{http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB}string50" minOccurs="0"/&gt;
 *         &lt;element name="approvaldate" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Approval", propOrder = {
    "approvalid",
    "approvalstatus",
    "approvaldate"
})
public class Approval {

    @XmlElement(required = true)
    protected BigDecimal approvalid;
    @XmlElementRef(name = "approvalstatus", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", type = JAXBElement.class, required = false)
    protected JAXBElement<String> approvalstatus;
    @XmlElementRef(name = "approvaldate", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/top/CustomerDB", type = JAXBElement.class, required = false)
    protected JAXBElement<XMLGregorianCalendar> approvaldate;

    /**
     * Gets the value of the approvalid property.
     * 
     * @return
     *     possible object is
     *     {@link BigDecimal }
     *     
     */
    public BigDecimal getApprovalid() {
        return approvalid;
    }

    /**
     * Sets the value of the approvalid property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigDecimal }
     *     
     */
    public void setApprovalid(BigDecimal value) {
        this.approvalid = value;
    }

    /**
     * Gets the value of the approvalstatus property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getApprovalstatus() {
        return approvalstatus;
    }

    /**
     * Sets the value of the approvalstatus property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setApprovalstatus(JAXBElement<String> value) {
        this.approvalstatus = value;
    }

    /**
     * Gets the value of the approvaldate property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public JAXBElement<XMLGregorianCalendar> getApprovaldate() {
        return approvaldate;
    }

    /**
     * Sets the value of the approvaldate property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public void setApprovaldate(JAXBElement<XMLGregorianCalendar> value) {
        this.approvaldate = value;
    }

}
