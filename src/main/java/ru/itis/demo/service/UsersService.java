package ru.itis.demo.service;

import ru.itis.demo.dto.UserDto;
import ru.itis.demo.models.User;

import java.util.List;

public interface UsersService {
    List<UserDto> getUsers();

    UserDto getConcreteUser(Long userId);

    List<UserDto> search(String name);

    void deleteUser(Long userId);
    List<User> searchUsers(String name);

}
