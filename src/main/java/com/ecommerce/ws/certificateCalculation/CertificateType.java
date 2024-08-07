
package com.ecommerce.ws.certificateCalculation;

import jakarta.xml.bind.annotation.XmlEnum;
import jakarta.xml.bind.annotation.XmlType;


/**
 * <p>Java class for certificateType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="certificateType"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="ONE"/&gt;
 *     &lt;enumeration value="THREE"/&gt;
 *     &lt;enumeration value="FIVE"/&gt;
 *     &lt;enumeration value="SEVEN"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "certificateType")
@XmlEnum
public enum CertificateType {
    ONE(27,1),
    THREE(25,3),
    FIVE(12.5,5),
    SEVEN(12.75,7);

    private final double value;
    private final int year;

    CertificateType(double v,int year) {
        value=v;
        this.year=year;
    }

    public double getValue() {
        return value;

    }
    public int getYear(){
        return year;
    }

    public String value() {
        return name();
    }

    public static CertificateType fromValue(String v) {
        return valueOf(v);
    }

    public com.ecommerce.ws.CertificateApp.CertificateType toCertificateApprovalType() {
        String valueAsString=value().toLowerCase() + " year";
        return com.ecommerce.ws.CertificateApp.CertificateType.fromValue(valueAsString);
    }
    public static CertificateType fromCertificateApprovalType(String value) {
        return valueOf(value);
    }

}
