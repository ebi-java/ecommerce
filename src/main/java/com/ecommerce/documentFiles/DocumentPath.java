package com.ecommerce.documentFiles;

public enum DocumentPath {
    CARD_PATH("resources\\content\\CardDocuments"),
    LOAN_PATH("resources\\content\\LoanDocuments");

    public final String path;
    DocumentPath(String path) {
       this.path = path;
    }

}
