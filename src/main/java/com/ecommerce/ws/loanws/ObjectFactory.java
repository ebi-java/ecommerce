
package com.ecommerce.ws.loanws;

import java.math.BigDecimal;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.ecommerce.ws.loanws package. 
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

    private final static QName _InputParametersPCUSTOMERID_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_CUSTOMERID");
    private final static QName _InputParametersPREQUESTTYPE_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_REQUESTTYPE");
    private final static QName _InputParametersPREQUESTDATE_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_REQUESTDATE");
    private final static QName _InputParametersPAMOUNT_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_AMOUNT");
    private final static QName _InputParametersPADDITIONALINFO_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_ADDITIONALINFO");
    private final static QName _InputParametersPSTATUS_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_STATUS");
    private final static QName _InputParametersPDOCUMENTTYPE1_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_DOCUMENTTYPE1");
    private final static QName _InputParametersPUPLOADDATE1_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_UPLOADDATE1");
    private final static QName _InputParametersPFILEPATH1_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_FILEPATH1");
    private final static QName _InputParametersPDOCUMENTTYPE2_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_DOCUMENTTYPE2");
    private final static QName _InputParametersPUPLOADDATE2_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_UPLOADDATE2");
    private final static QName _InputParametersPFILEPATH2_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_FILEPATH2");
    private final static QName _OutputParametersPREQUESTID_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_REQUESTID");
    private final static QName _OutputParametersPDOCUMENTID1_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_DOCUMENTID1");
    private final static QName _OutputParametersPDOCUMENTID2_QNAME = new QName("http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", "P_DOCUMENTID2");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.ecommerce.ws.loanws
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InputParameters }
     * 
     */
    public InputParameters createInputParameters() {
        return new InputParameters();
    }

    /**
     * Create an instance of {@link OutputParameters }
     * 
     */
    public OutputParameters createOutputParameters() {
        return new OutputParameters();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_CUSTOMERID", scope = InputParameters.class)
    public JAXBElement<BigDecimal> createInputParametersPCUSTOMERID(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_InputParametersPCUSTOMERID_QNAME, BigDecimal.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_REQUESTTYPE", scope = InputParameters.class)
    public JAXBElement<String> createInputParametersPREQUESTTYPE(String value) {
        return new JAXBElement<String>(_InputParametersPREQUESTTYPE_QNAME, String.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_REQUESTDATE", scope = InputParameters.class)
    public JAXBElement<XMLGregorianCalendar> createInputParametersPREQUESTDATE(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_InputParametersPREQUESTDATE_QNAME, XMLGregorianCalendar.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_AMOUNT", scope = InputParameters.class)
    public JAXBElement<BigDecimal> createInputParametersPAMOUNT(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_InputParametersPAMOUNT_QNAME, BigDecimal.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_ADDITIONALINFO", scope = InputParameters.class)
    public JAXBElement<String> createInputParametersPADDITIONALINFO(String value) {
        return new JAXBElement<String>(_InputParametersPADDITIONALINFO_QNAME, String.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_STATUS", scope = InputParameters.class)
    public JAXBElement<String> createInputParametersPSTATUS(String value) {
        return new JAXBElement<String>(_InputParametersPSTATUS_QNAME, String.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_DOCUMENTTYPE1", scope = InputParameters.class)
    public JAXBElement<String> createInputParametersPDOCUMENTTYPE1(String value) {
        return new JAXBElement<String>(_InputParametersPDOCUMENTTYPE1_QNAME, String.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_UPLOADDATE1", scope = InputParameters.class)
    public JAXBElement<XMLGregorianCalendar> createInputParametersPUPLOADDATE1(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_InputParametersPUPLOADDATE1_QNAME, XMLGregorianCalendar.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_FILEPATH1", scope = InputParameters.class)
    public JAXBElement<String> createInputParametersPFILEPATH1(String value) {
        return new JAXBElement<String>(_InputParametersPFILEPATH1_QNAME, String.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_DOCUMENTTYPE2", scope = InputParameters.class)
    public JAXBElement<String> createInputParametersPDOCUMENTTYPE2(String value) {
        return new JAXBElement<String>(_InputParametersPDOCUMENTTYPE2_QNAME, String.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_UPLOADDATE2", scope = InputParameters.class)
    public JAXBElement<XMLGregorianCalendar> createInputParametersPUPLOADDATE2(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_InputParametersPUPLOADDATE2_QNAME, XMLGregorianCalendar.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link String }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_FILEPATH2", scope = InputParameters.class)
    public JAXBElement<String> createInputParametersPFILEPATH2(String value) {
        return new JAXBElement<String>(_InputParametersPFILEPATH2_QNAME, String.class, InputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_REQUESTID", scope = OutputParameters.class)
    public JAXBElement<BigDecimal> createOutputParametersPREQUESTID(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_OutputParametersPREQUESTID_QNAME, BigDecimal.class, OutputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_DOCUMENTID1", scope = OutputParameters.class)
    public JAXBElement<BigDecimal> createOutputParametersPDOCUMENTID1(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_OutputParametersPDOCUMENTID1_QNAME, BigDecimal.class, OutputParameters.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}
     */
    @XmlElementDecl(namespace = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/RequestsDBfromProcedure", name = "P_DOCUMENTID2", scope = OutputParameters.class)
    public JAXBElement<BigDecimal> createOutputParametersPDOCUMENTID2(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_OutputParametersPDOCUMENTID2_QNAME, BigDecimal.class, OutputParameters.class, value);
    }

}
