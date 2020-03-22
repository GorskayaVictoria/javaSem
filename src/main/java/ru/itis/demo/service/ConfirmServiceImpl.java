package ru.itis.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.demo.models.State;
import ru.itis.demo.models.User;
import ru.itis.demo.repositories.UsersRepository;

import java.util.Optional;

@Service
public class ConfirmServiceImpl implements ConfirmService {

    @Autowired
    private UsersRepository usersRepository;

    @Override
    public boolean confirm(String confirmCode) {
        Optional<User> userOptional = usersRepository.findByConfirmCode(confirmCode);
        if (userOptional.isPresent()) {
            User user = userOptional.get();
            user.setState(State.CONFIRMED);
            usersRepository.save(user);
            return true;
        }
        return false;
    }
}
