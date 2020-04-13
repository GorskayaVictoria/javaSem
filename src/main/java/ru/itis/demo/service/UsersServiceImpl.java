package ru.itis.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.demo.dto.UserDto;
import ru.itis.demo.models.User;
import ru.itis.demo.repositories.UsersRepository;

import java.util.List;

import static ru.itis.demo.dto.UserDto.from;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersRepository usersRepository;



    @Override
    public List<UserDto> getUsers() {
        return from(usersRepository.findAll());
    }



    @Override
    public UserDto getConcreteUser(Long userId) {
        User user = usersRepository.getOne(userId);
        return from(user);
    }

    @Override
    public List<UserDto> search(String name) {
        return from(usersRepository.findAllByNameContainsIgnoreCase(name));
    }

    @Override
    public void deleteUser(Long userId) {
        deleteUser(userId);
    }


    @Override
    public List<User> searchUsers(String name) {
        return usersRepository.searchUsers(name);
    }
}
