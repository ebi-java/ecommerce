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
@RequestMapping("/customer/card")
public class CardRequestController {
    InsertionProcess insertionProcess;
    DocumentStorageService documentStorageService;

    public CardRequestController(InsertionProcess insertionProcess, DocumentStorageService documentStorageService) {
        this.insertionProcess = insertionProcess;
        this.documentStorageService = documentStorageService;
    }

    @GetMapping
    public String getForm() {
        return "cardRequestForm";
    }

    @PostMapping("/apply")
    public String submitApplication(
            @RequestParam("fileUpload") MultipartFile[] imageFiles,
            @RequestParam("fileUpload2") MultipartFile pdfFile,
            @ModelAttribute ApplicationInput input,
            Model model) {

        try {
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

            requestCollection.setAdditionalInfo(new JAXBElement<>(
                    new QName(namespace, "AdditionalInfo"),
                    String.class,
                    input.getCardType() + " Card Request"));

            requestCollection.setRequestType(new JAXBElement<>(
                    new QName(namespace, "RequestType"),
                    String.class, "Card"));

            // Process image files
            for (MultipartFile file : imageFiles) {
                String fileName = documentStorageService.save(file, DocumentPath.CARD_PATH);
                documentCollection = new DocumentCollection();

                // Set values for document collection
                documentCollection.setDocumentType(new JAXBElement<>(
                        new QName(namespace, "DocumentType"),
                        String.class,
                        "image"));

                documentCollection.setFilePath(new JAXBElement<>(
                        new QName(namespace, "FilePath"),
                        String.class,
                        fileName));

                requestCollection.getDocuments().add(documentCollection);
            }

            // Process PDF file
            if (!pdfFile.isEmpty()) {
                String fileName = documentStorageService.save(pdfFile, DocumentPath.CARD_PATH);
                documentCollection = new DocumentCollection();

                // Set values for document collection
                documentCollection.setDocumentType(new JAXBElement<>(
                        new QName(namespace, "DocumentType"),
                        String.class,
                        "pdf"));

                documentCollection.setFilePath(new JAXBElement<>(
                        new QName(namespace, "FilePath"),
                        String.class,
                        fileName));

                requestCollection.getDocuments().add(documentCollection);
            }

            // Set request collection in request document collection input
            requestDocumentCollectionInput.setRequestDocumentCollection(requestCollection);

            // Call the insertion process
            insertionProcess.process(requestDocumentCollectionInput);
        } catch (Exception e) {
            return "cardRequestForm";
        }
        return "redirect:/customer/home";
    }
}
