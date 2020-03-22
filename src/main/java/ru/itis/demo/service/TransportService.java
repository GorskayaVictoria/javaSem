package ru.itis.demo.service;

import ru.itis.demo.dto.TransportDto;
import ru.itis.demo.dto.UserDto;
import java.util.List;

public interface TransportService {
    List<TransportDto> getTransports();

    TransportDto getConcreteTransport(Long transportId);

    List<TransportDto> search(String name);
}
