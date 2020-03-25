package ru.itis.demo.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.demo.service.TransportService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 01.12.2017
 * StorageController
 *
 * @author Sidikov Marsel (First Software Engineering Platform)
 * @version v1.0
 */
@Controller
public class StorageController {

    @Autowired
    private TransportService service;

    // страница, которая позволяет загружать файлы

    // принимает файлы
    // MultipartFile - файл, который вы принимаете
    // ResponseEntity - класс, который позволяет отправить в ответе
    // не только тело, но и статус и заголовки ответа
    @PostMapping("/files")
    public ResponseEntity<String> handleFileUpload(@RequestParam("file") MultipartFile file) throws IOException {
        // сохраняем файл на диск
        String filePath = service.saveFile(file);
        // отправляем пользователю полный путь к этому файлу
        System.out.println(filePath);
        return ResponseEntity
                .ok()
                .body(filePath);
    }

}

