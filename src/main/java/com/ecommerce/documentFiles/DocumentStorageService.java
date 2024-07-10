package com.ecommerce.documentFiles;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Objects;

import org.springframework.core.io.Resource;


@Service
public class DocumentStorageService {

    private final String root = "C:/Users/bm/Desktop/java e-commerce project/src/src/main/webapp/";

    private void init(Path root) throws DocumentFileException {
        try {
            Files.createDirectories(root);
        } catch (IOException e) {
            throw new DocumentFileException("Could not initialize folder for upload!");
        }
    }

    public String save(MultipartFile file, DocumentPath documentPath) throws DocumentFileException {
        Path root = Path.of(this.root + documentPath.path);
        String link = "http://localhost:8085/"+documentPath.path;
        if (!Files.exists(root)) init(root);

        String fileName = file.getOriginalFilename();

        if (fileName == null) throw new DocumentFileException("file not found with this name");

        Path newPath = root.resolve(Objects.requireNonNull(file.getOriginalFilename()));
        try {
            Files.copy(file.getInputStream(), newPath);
            return link + fileName;
        } catch (FileAlreadyExistsException e) {
            return newPath.toAbsolutePath().toString();
        } catch (Exception e) {
            throw new DocumentFileException(e.getMessage());
        }
    }
}
