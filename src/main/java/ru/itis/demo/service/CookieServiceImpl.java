package ru.itis.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.demo.models.CookieValue;
import ru.itis.demo.repositories.CookieValuesRepository;


@Service
public class CookieServiceImpl implements CookieService {



    @Autowired
    private CookieValuesRepository cookieValuesRepository;

    public boolean getCookie(String cookie) {

        return cookieValuesRepository.findByValue(cookie) != null;
    }


    public boolean deleteCookies(String cookie) {
        if(getCookie(cookie)){
            cookieValuesRepository.deleteByValue(cookie);
            return true;
        }
        return false;
    }
}
