package ru.itis.demo.service;

import java.util.Map;

public interface EmailService {
    void sendMail(String subject, Map< String, Object > model, String email);
}
