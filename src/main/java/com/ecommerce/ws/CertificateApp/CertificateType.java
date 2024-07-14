
package com.ecommerce.ws.CertificateApp;

import jakarta.xml.bind.annotation.XmlEnum;
import jakarta.xml.bind.annotation.XmlEnumValue;
import jakarta.xml.bind.annotation.XmlType;


/**
 * <p>Java class for CertificateType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="CertificateType"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="one year"/&gt;
 *     &lt;enumeration value="three year"/&gt;
 *     &lt;enumeration value="five year"/&gt;
 *     &lt;enumeration value="seven year"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "CertificateType")
@XmlEnum
public enum CertificateType {

    @XmlEnumValue("one year")
    ONE_YEAR("one year"),
    @XmlEnumValue("three year")
    THREE_YEAR("three year"),
    @XmlEnumValue("five year")
    FIVE_YEAR("five year"),
    @XmlEnumValue("seven year")
    SEVEN_YEAR("seven year");
    private final String value;

    CertificateType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static CertificateType fromValue(String v) {
        for (CertificateType c: CertificateType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
