
package com.ecommerce.ws.loanws;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElementRef;
import jakarta.xml.bind.annotation.XmlRootElement;
import jakarta.xml.bind.annotation.XmlType;


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
 *         &lt;element name="P_REQUESTID" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *         &lt;element name="P_DOCUMENTID1" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
 *         &lt;element name="P_DOCUMENTID2" type="{http://www.w3.org/2001/XMLSchema}decimal" minOccurs="0"/&gt;
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
    "prequestid",
    "pdocumentid1",
    "pdocumentid2"
})
@XmlRootElement(name = "OutputParameters")
public class OutputParameters {

    @XmlElementRef(name = "P_REQUESTID", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> prequestid;
    @XmlElementRef(name = "P_DOCUMENTID1", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> pdocumentid1;
    @XmlElementRef(name = "P_DOCUMENTID2", namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", type = JAXBElement.class, required = false)
    protected JAXBElement<BigDecimal> pdocumentid2;

    /**
     * Gets the value of the prequestid property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getPREQUESTID() {
        return prequestid;
    }

    /**
     * Sets the value of the prequestid property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setPREQUESTID(JAXBElement<BigDecimal> value) {
        this.prequestid = value;
    }

    /**
     * Gets the value of the pdocumentid1 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getPDOCUMENTID1() {
        return pdocumentid1;
    }

    /**
     * Sets the value of the pdocumentid1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setPDOCUMENTID1(JAXBElement<BigDecimal> value) {
        this.pdocumentid1 = value;
    }

    /**
     * Gets the value of the pdocumentid2 property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public JAXBElement<BigDecimal> getPDOCUMENTID2() {
        return pdocumentid2;
    }

    /**
     * Sets the value of the pdocumentid2 property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     *     
     */
    public void setPDOCUMENTID2(JAXBElement<BigDecimal> value) {
        this.pdocumentid2 = value;
    }

}
