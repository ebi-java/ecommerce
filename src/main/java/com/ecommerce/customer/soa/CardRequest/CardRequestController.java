package com.ecommerce.customer.soa.CardRequest;


import com.ecommerce.documentFiles.DocumentFileException;
import com.ecommerce.documentFiles.DocumentPath;
import com.ecommerce.documentFiles.DocumentStorageService;
import com.ecommerce.ws.cardws.*;
import jakarta.xml.bind.JAXBElement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.namespace.QName;
import java.math.BigDecimal;

@Controller
@RequestMapping("/card")
public class CardRequestController {
    InsertionProcess insertionProcess;
    DocumentStorageService documentStorageService;

    public CardRequestController(InsertionProcess insertionProcess, DocumentStorageService documentStorageService) {
        this.insertionProcess = insertionProcess;
        this.documentStorageService = documentStorageService;
    }

    @GetMapping("/Form")
    public String getForm() {
        return "cardRequestForm";
    }

    @PostMapping("/apply")
    public String submitApplication(@RequestParam("fileUpload") MultipartFile[] files, @ModelAttribute ApplicationInput input, Model model) {

        try {


//            InsertionprocessClientEp clientEp = new InsertionprocessClientEp();
//            InsertionProcess insertionProcess = clientEp.getInsertionProcessPt();


            // Create request objects
            RequestDocumentCollectionInput requestDocumentCollectionInput = new RequestDocumentCollectionInput();
            RequestCollection requestCollection = new RequestCollection();
            DocumentCollection documentCollection;



            // Set namespace for elements
            String namespace = "http://www.example.org/request";

            // Create JAXBelements for request fields
            requestCollection.setAmount(new JAXBElement<>(
                    new QName(namespace, "Amount"),
                    BigDecimal.class,
                    new BigDecimal(input.getLimit())));

            requestCollection.setCustomerId(new JAXBElement<>(
                    new QName(namespace, "CustomerId"),
                    BigDecimal.class,
                    new BigDecimal(input.getCustomerID())));

            requestCollection.setStatus(new JAXBElement<>(
                    new QName(namespace, "Status"),
                    String.class,
                    "newCARD"));

            //enum of requests

            requestCollection.setAdditionalInfo(new JAXBElement<>(
                    new QName(namespace, "AdditionalInfo"),
                    String.class,
                    input.getCardType() + " Card Request"));

            requestCollection.setRequestType(new JAXBElement<>(
                    new QName(namespace, "RequestType"),
                    String.class, "Card"));


            for (MultipartFile file : files) {
                String fileName = documentStorageService.save(file, DocumentPath.CARD_PATH);
                documentCollection = new DocumentCollection();

                // Set values for document collection
                documentCollection.setDocumentType(new JAXBElement<>(
                        new QName(namespace, "DocumentType"),
                        String.class,
                        input.getDocumentType()));

                documentCollection.setFilePath(new JAXBElement<>(
                        new QName(namespace, "FilePath"),
                        String.class,
                        fileName));

                System.out.println(fileName);
                requestCollection.getDocuments().add(documentCollection);

            }

            // Add document collection to request collection

            // Set request collection in request document collection input
            requestDocumentCollectionInput.setRequestDocumentCollection(requestCollection);

            // Call the insertion process
            insertionProcess.process(requestDocumentCollectionInput);
        } catch (Exception e) {
            return "Form";
        }
        return "response";
    }
}
