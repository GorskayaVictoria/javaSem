package ru.itis.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ru.itis.demo.models.Transport;
import ru.itis.demo.models.User;

import java.util.List;
import java.util.Optional;

public interface TransportsRepository extends JpaRepository<Transport, Long> {
    List<Transport> findAllByNameContainsIgnoreCase(String name);


    @Query("from Transport transport where " +
            "upper(transport.name) like concat('%', upper(:query), '%') or " +
            "upper(transport.info) like concat('%', upper(:query), '%')")
    List<Transport> searchTrans(@Param("query") String query);


}
