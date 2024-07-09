package com.ecommerce.ws;

import com.ecommerce.ws.cardws.*;
import jakarta.xml.bind.JAXBElement;

import javax.xml.namespace.QName;
import java.math.BigDecimal;

public class TestMain {
    public static void main(String[] args) {
//        InsertionprocessClientEp clientEp = new InsertionprocessClientEp();
//        InsertionProcess insertionProcess = clientEp.getInsertionProcessPt();
//        RequestDocumentCollectionInput requestDocumentCollectionInput = new RequestDocumentCollectionInput();
//
//        RequestCollection requestCollection = new RequestCollection();
//        DocumentCollection documentCollection = new DocumentCollection();
//
//        String qName = "http://www.example.org/request";
//
//        requestCollection.setAmount(
//                new JAXBElement<>(
//                        new QName(qName),
//                        BigDecimal.class,
//                        new BigDecimal(1000)
//                )
//        );
//
//        requestCollection.setCustomerId(
//                new JAXBElement<>(
//                        new QName(qName),
//                        BigDecimal.class,
//                        new BigDecimal(1)
//                )
//        );
//
//        requestCollection.setStatus(
//                new JAXBElement<>(
//                        new QName(qName),
//                        String.class,
//                        "new card sabry"
//                )
//        );
//
//        requestCollection.setAdditionalInfo(
//                new JAXBElement<>(
//                        new QName(qName),
//                        String.class,
//                        "credit card appl"
//                )
//        );
//
//        requestCollection.setRequestType(
//                new JAXBElement<>(
//                        new QName(qName),
//                        String.class,
//                        "card"
//                )
//        );
//
//        documentCollection.setDocumentType(
//                new JAXBElement<>(
//                        new QName(qName),
//                        String.class,
//                        "card11"
//                )
//        );
//        documentCollection.setFilePath(
//                new JAXBElement<>(
//                        new QName(qName),
//                        String.class,
//                        "card112"
//                )
//        );
//        requestCollection.getDocuments().add(documentCollection);
//        requestDocumentCollectionInput.setRequestDocumentCollection(requestCollection);
//        insertionProcess.process(requestDocumentCollectionInput);

        InsertionprocessClientEp clientEp = new InsertionprocessClientEp();
        InsertionProcess insertionProcess = clientEp.getInsertionProcessPt();

        // Create request objects
        RequestDocumentCollectionInput requestDocumentCollectionInput = new RequestDocumentCollectionInput();
        RequestCollection requestCollection = new RequestCollection();
        DocumentCollection documentCollection = new DocumentCollection();

        // Set namespace for elements
        String namespace = "http://www.example.org/request";

        // Create JAXBelements for request fields
        requestCollection.setAmount(new JAXBElement<>(
                new QName(namespace, "Amount"),
                BigDecimal.class,
                new BigDecimal(1000)));

        requestCollection.setCustomerId(new JAXBElement<>(
                new QName(namespace, "CustomerId"),
                BigDecimal.class,
                new BigDecimal(1)));

        requestCollection.setStatus(new JAXBElement<>(
                new QName(namespace, "Status"),
                String.class,
                "new card sabry"));

        requestCollection.setAdditionalInfo(new JAXBElement<>(
                new QName(namespace, "AdditionalInfo"),
                String.class,
                "credit card appl"));

        requestCollection.setRequestType(new JAXBElement<>(
                new QName(namespace, "RequestType"),
                String.class,
                "card"));

        // Set values for document collection
        documentCollection.setDocumentType(new JAXBElement<>(
                new QName(namespace, "DocumentType"),
                String.class,
                "card11"));

        documentCollection.setFilePath(new JAXBElement<>(
                new QName(namespace, "FilePath"),
                String.class,
                "card112"));

        // Add document collection to request collection
        requestCollection.getDocuments().add(documentCollection);

        // Set request collection in request document collection input
        requestDocumentCollectionInput.setRequestDocumentCollection(requestCollection);

        // Call the insertion process
        insertionProcess.process(requestDocumentCollectionInput);
    }
}
