package ru.itis.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.demo.models.User;

import java.util.List;
import java.util.Optional;

public interface UsersRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    List<User> findAllByNameContainsIgnoreCase(String name);
    Optional<User> findByConfirmCode(String confirmCode);


}
