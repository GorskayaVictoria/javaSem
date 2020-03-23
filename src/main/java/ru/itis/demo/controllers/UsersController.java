package ru.itis.demo.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.itis.demo.dto.TransportDto;
import ru.itis.demo.dto.UserDto;
import ru.itis.demo.service.TransportService;
import ru.itis.demo.service.UsersService;
import org.json.JSONArray;
import org.json.JSONObject;

import java.security.Principal;
import java.util.List;

@Controller
public class UsersController {


    @Autowired
    private UsersService usersService;

    @Autowired
    private TransportService transportService;


    @GetMapping("/user/{user-id}")
    public String getConcreteUserPage(@PathVariable("user-id") Long userId, Model model) {
        UserDto user = usersService.getConcreteUser(userId);
        model.addAttribute("user", user);
        System.out.println(user);
        return "otherProfile";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/user/{user-id}/delete")
    public String deleteUser(@PathVariable("user-id") Long userId) {
        usersService.deleteUser(userId);
        return "redirect:/users";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/users")
    public String getUsersPage(Model model) {
        List<UserDto> users = usersService.getUsers();
        model.addAttribute("users", users);
        return "users";
    }



}
