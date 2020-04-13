package ru.itis.demo.service;

public interface MessageService {

    void sendMail(String number, String name, String confirmCode);

}
