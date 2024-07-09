
package com.ecommerce.ws.loanws;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="P_CUSTOMERID" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *         &lt;element name="P_REQUESTTYPE" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="P_REQUESTDATE" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/&gt;
 *         &lt;element name="P_AMOUNT" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *         &lt;element name="P_ADDITIONALINFO" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="P_STATUS" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="P_DOCUMENTTYPE1" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="P_UPLOADDATE1" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/&gt;
 *         &lt;element name="P_FILEPATH1" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="P_DOCUMENTTYPE2" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="P_UPLOADDATE2" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/&gt;
 *         &lt;element name="P_FILEPATH2" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "pcustomerid",
    "prequesttype",
    "prequestdate",
    "pamount",
    "padditionalinfo",
    "pstatus",
    "pdocumenttype1",
    "puploaddate1",
    "pfilepath1",
    "pdocumenttype2",
    "puploaddate2",
    "pfilepath2"
})
@XmlRootElement(name = "InputParameters")
public class InputParameters {

    @XmlElementRef(name = "P_CUSTOMERID", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> pcustomerid;
    @XmlElementRef(name = "P_REQUESTTYPE", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<String> prequesttype;
    @XmlElementRef(name = "P_REQUESTDATE", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<XMLGregorianCalendar> prequestdate;
    @XmlElementRef(name = "P_AMOUNT", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> pamount;
    @XmlElementRef(name = "P_ADDITIONALINFO", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<String> padditionalinfo;
    @XmlElementRef(name = "P_STATUS", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<String> pstatus;
    @XmlElementRef(name = "P_DOCUMENTTYPE1", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<String> pdocumenttype1;
    @XmlElementRef(name = "P_UPLOADDATE1", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<XMLGregorianCalendar> puploaddate1;
    @XmlElementRef(name = "P_FILEPATH1", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<String> pfilepath1;
    @XmlElementRef(name = "P_DOCUMENTTYPE2", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<String> pdocumenttype2;
    @XmlElementRef(name = "P_UPLOADDATE2", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<XMLGregorianCalendar> puploaddate2;
    @XmlElementRef(name = "P_FILEPATH2", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<String> pfilepath2;

    /**
     * Gets the value of the pcustomerid property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getPCUSTOMERID() {
        return pcustomerid;
    }

    /**
     * Sets the value of the pcustomerid property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setPCUSTOMERID(JAXBElement<BigDecimal> value) {
        this.pcustomerid = value;
    }

    /**
     * Gets the value of the prequesttype property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getPREQUESTTYPE() {
        return prequesttype;
    }

    /**
     * Sets the value of the prequesttype property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setPREQUESTTYPE(JAXBElement<String> value) {
        this.prequesttype = value;
    }

    /**
     * Gets the value of the prequestdate property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public JAXBElement<XMLGregorianCalendar> getPREQUESTDATE() {
        return prequestdate;
    }

    /**
     * Sets the value of the prequestdate property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public void setPREQUESTDATE(JAXBElement<XMLGregorianCalendar> value) {
        this.prequestdate = value;
    }

    /**
     * Gets the value of the pamount property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getPAMOUNT() {
        return pamount;
    }

    /**
     * Sets the value of the pamount property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setPAMOUNT(JAXBElement<BigDecimal> value) {
        this.pamount = value;
    }

    /**
     * Gets the value of the padditionalinfo property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getPADDITIONALINFO() {
        return padditionalinfo;
    }

    /**
     * Sets the value of the padditionalinfo property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setPADDITIONALINFO(JAXBElement<String> value) {
        this.padditionalinfo = value;
    }

    /**
     * Gets the value of the pstatus property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getPSTATUS() {
        return pstatus;
    }

    /**
     * Sets the value of the pstatus property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setPSTATUS(JAXBElement<String> value) {
        this.pstatus = value;
    }

    /**
     * Gets the value of the pdocumenttype1 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getPDOCUMENTTYPE1() {
        return pdocumenttype1;
    }

    /**
     * Sets the value of the pdocumenttype1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setPDOCUMENTTYPE1(JAXBElement<String> value) {
        this.pdocumenttype1 = value;
    }

    /**
     * Gets the value of the puploaddate1 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public JAXBElement<XMLGregorianCalendar> getPUPLOADDATE1() {
        return puploaddate1;
    }

    /**
     * Sets the value of the puploaddate1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public void setPUPLOADDATE1(JAXBElement<XMLGregorianCalendar> value) {
        this.puploaddate1 = value;
    }

    /**
     * Gets the value of the pfilepath1 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getPFILEPATH1() {
        return pfilepath1;
    }

    /**
     * Sets the value of the pfilepath1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setPFILEPATH1(JAXBElement<String> value) {
        this.pfilepath1 = value;
    }

    /**
     * Gets the value of the pdocumenttype2 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getPDOCUMENTTYPE2() {
        return pdocumenttype2;
    }

    /**
     * Sets the value of the pdocumenttype2 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setPDOCUMENTTYPE2(JAXBElement<String> value) {
        this.pdocumenttype2 = value;
    }

    /**
     * Gets the value of the puploaddate2 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public JAXBElement<XMLGregorianCalendar> getPUPLOADDATE2() {
        return puploaddate2;
    }

    /**
     * Sets the value of the puploaddate2 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     *     
     */
    public void setPUPLOADDATE2(JAXBElement<XMLGregorianCalendar> value) {
        this.puploaddate2 = value;
    }

    /**
     * Gets the value of the pfilepath2 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getPFILEPATH2() {
        return pfilepath2;
    }

    /**
     * Sets the value of the pfilepath2 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setPFILEPATH2(JAXBElement<String> value) {
        this.pfilepath2 = value;
    }

}
