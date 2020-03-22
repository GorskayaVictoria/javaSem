package ru.itis.demo.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ru.itis.demo.dto.TransportDto;
import ru.itis.demo.dto.UserDto;
import ru.itis.demo.service.CookieService;
import ru.itis.demo.service.TransportService;

import java.security.Principal;
import java.util.List;



@Controller
public class TransportController {



    @Autowired
    private TransportService transportService;

    @GetMapping("/transport/{transport-id}")
    public String getConcreteUserPage(@PathVariable("transport-id") Long transportId, Model model) {
        TransportDto transport = transportService.getConcreteTransport(transportId);
        model.addAttribute("transport", transport);
        System.out.println("qwertyui");

        return "transport_page";
    }



    @GetMapping("/transports")
    public String getUsersPage(Model model) {
            List<TransportDto> transports = transportService.getTransports();
            model.addAttribute("transports", transports);
            return "transports_page";

    }
}
