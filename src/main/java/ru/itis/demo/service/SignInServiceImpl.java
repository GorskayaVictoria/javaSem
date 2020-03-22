package ru.itis.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import ru.itis.demo.models.CookieValue;
import ru.itis.demo.models.User;
import ru.itis.demo.repositories.CookieValuesRepository;
import ru.itis.demo.repositories.UsersRepository;

import java.util.UUID;

@Component
public class SignInServiceImpl implements SignInService {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private CookieValuesRepository cookieValuesRepository;

    @Override
    public String signIn(String email, String password) {
        User user = usersRepository.findByEmail(email);

        String value = null;
        if (user != null && user.getHashPassword().equals(password)) {
            value = UUID.randomUUID().toString();
            CookieValue cookieValue = CookieValue.builder()
                    .value(value)
                    .user(user)
                    .build();
            cookieValuesRepository.save(cookieValue);
        }

        return value;
    }
}
