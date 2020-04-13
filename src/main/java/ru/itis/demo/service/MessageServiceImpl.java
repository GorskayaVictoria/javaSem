package ru.itis.demo.service;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;


@Service
public class MessageServiceImpl implements MessageService {
    @Override
    public void sendMail(String number, String name, String confirmCode) {
        RestTemplate restTemplate = new RestTemplate();
        String messageServiceUrl = "https://gate.smsaero.ru/v2/sms/send";
        HttpHeaders headers = new HttpHeaders();
//headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
        headers.setBasicAuth("gorshaya-viktoria@mail.ru", "u2WMYmVuDBfPH3VOt8q8k5UTDKzU");
        MultiValueMap<String, String> map= new LinkedMultiValueMap<>();
        map.add("sign", "SMS Aero");
        map.add("channel", "DIRECT");
        map.add("number", number);
        map.add("text", name + ", " + confirmCode);
        HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<>(map, headers);
        restTemplate.postForEntity(messageServiceUrl, request , String.class);
    }
}
