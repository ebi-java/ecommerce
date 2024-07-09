
package com.ecommerce.ws.cardws;

import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlElement;
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
 *         &lt;element name="RequestDocumentCollection" type="{http://www.example.org/request}RequestCollection"/&gt;
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
    "requestDocumentCollection"
})
@XmlRootElement(name = "RequestDocumentCollectionInput")
public class RequestDocumentCollectionInput {

    @XmlElement(name = "RequestDocumentCollection", required = true)
    protected RequestCollection requestDocumentCollection;

    /**
     * Gets the value of the requestDocumentCollection property.
     * 
     * @return
     *     possible object is
     *     {@link RequestCollection }
     *     
     */
    public RequestCollection getRequestDocumentCollection() {
        return requestDocumentCollection;
    }

    /**
     * Sets the value of the requestDocumentCollection property.
     * 
     * @param value
     *     allowed object is
     *     {@link RequestCollection }
     *     
     */
    public void setRequestDocumentCollection(RequestCollection value) {
        this.requestDocumentCollection = value;
    }

}
