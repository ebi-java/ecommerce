package com.ecommerce.documentFiles;

import java.nio.file.FileAlreadyExistsException;

public class DocumentFileException extends Exception {
    public DocumentFileException(String message) {
        super(message);
    }
}
