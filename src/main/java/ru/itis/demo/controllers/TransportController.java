package ru.itis.demo.controllers;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.demo.dto.TransportDto;
import ru.itis.demo.models.Transport;
import ru.itis.demo.models.User;
import ru.itis.demo.service.TransportService;

import java.io.IOException;
import java.util.List;



@Controller
public class TransportController {



    @Autowired
    private TransportService transportService;

    @GetMapping("/transport/{transport-id}")
    public String getConcreteUserPage(@PathVariable("transport-id") Long transportId, Model model) {
        TransportDto transport = transportService.getConcreteTransport(transportId);
        model.addAttribute("transport", transport);
        return "transport_page";
    }



    @GetMapping("/transports")
    public String getUsersPage(Model model) {
            List<TransportDto> transports = transportService.getTransports();
            model.addAttribute("transports", transports);
            return "trans";

    }
//    @GetMapping("/searchTrans")
//    @ResponseBody
//    public String searchUsers(@RequestParam("name") String name) throws JSONException, JsonProcessingException {
//        System.out.println("dfghjkjhg");
//        JSONArray ja = new JSONArray();
//        ObjectMapper mapper = new ObjectMapper();
//        for (TransportDto transportDto: transportService.search(name)) {
//            ja.put(mapper.writeValueAsString(transportDto));
//        }
//
//        JSONObject jo = new JSONObject();
//        jo.put("objects", ja);
//
//        return (jo.toString());
//
//    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/newTrans")
    public String getNewTrans() {
        return "regTrans_page";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping("/newTrans")
    public String handleFileUpload(TransportDto form) throws IOException {
        // сохраняем файл на диск

        transportService.regNewTrans(form);
        // отправляем пользователю полный путь к этому файлу
        return "redirect:/transports";
    }


    @GetMapping("/transportsTest")
    public String getTransPage(Model model) {
        List<TransportDto> transports = transportService.getTransports();
        model.addAttribute("trans", transports);
        return "search";

    }

    @GetMapping("/searchTrans")
    @ResponseBody
    public List<Transport> searchUsers(@RequestParam("name") String name) {
        return transportService.searchTrans(name);
    }
}
