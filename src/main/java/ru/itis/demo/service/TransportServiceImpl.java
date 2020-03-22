package ru.itis.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.demo.dto.TransportDto;
import ru.itis.demo.dto.UserDto;
import ru.itis.demo.models.Transport;
import ru.itis.demo.models.User;
import ru.itis.demo.repositories.TransportsRepository;
import ru.itis.demo.repositories.UsersRepository;

import java.util.List;

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



}
