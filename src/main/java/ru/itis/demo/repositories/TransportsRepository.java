package ru.itis.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.demo.models.Transport;
import ru.itis.demo.models.User;

import java.util.List;
import java.util.Optional;

public interface TransportsRepository extends JpaRepository<Transport, Long> {
    List<Transport> findAllByNameContainsIgnoreCase(String name);
}
