package ru.itis.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.demo.dto.TransportDto;
import ru.itis.demo.models.FileInfo;
import ru.itis.demo.models.Transport;
import ru.itis.demo.models.Type;
import ru.itis.demo.repositories.FileInfoRepository;
import ru.itis.demo.repositories.TransportsRepository;
import ru.itis.demo.util.FileStorageUtil;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import static ru.itis.demo.dto.TransportDto.from;

@Service
public class TransportServiceImpl implements TransportService{


    @Autowired
    private TransportsRepository transportsRepository;



    @Override
    public List<TransportDto> getTransports() {
        return from(transportsRepository.findAll());
    }



    @Override
    public TransportDto getConcreteTransport(Long transportId) {
        Transport transport = transportsRepository.getOne(transportId);
        return from(transport);
    }

    @Override
    public List<TransportDto> search(String name) {
        return from(transportsRepository.findAllByNameContainsIgnoreCase(name));
    }

    @Override
    public void regNewTrans(TransportDto form, String file) {
        Transport transport = Transport.builder()
                .city(form.getCity())
                .name(form.getName())
                .info(form.getInfo())
                .createdAt(LocalDateTime.now())
                .year(form.getYear())
                .file(file)
                .type(Type.CAR)
                .build();

        transportsRepository.save(transport);
    }

    @Autowired
    private FileInfoRepository fileInfoRepository;

    @Autowired
    private FileStorageUtil fileStorageUtil;

    @Override
    public String saveFile(MultipartFile file) throws IOException {
        // вытягиваем всю инофрмацию о файле для сохранения ее в бд
        FileInfo fileInfo = fileStorageUtil.convertFromMultipart(file);
        // сохраняем информацию о файле
        fileInfoRepository.save(fileInfo);
        // переносим файл на наш диск
        fileStorageUtil.copyToStorage(file, fileInfo.getStorageFileName());
        // возвращаем имя файла - новое
        return fileInfo.getStorageFileName();
    }



}
