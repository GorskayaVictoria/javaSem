package ru.itis.demo.controllers;

import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;
import ru.itis.demo.dto.UserDto;
import ru.itis.demo.models.User;
import ru.itis.demo.service.CookieService;
import ru.itis.demo.service.UsersService;
import org.json.JSONArray;
import org.json.JSONObject;

import java.security.Principal;
import java.util.List;
import java.util.Map;

@Controller
public class UsersController {

    @Autowired
    private UsersService usersService;

    @Autowired
    private CookieService cookieService;

    @GetMapping("/users/{user-id}")
    public String getConcreteUserPage(@PathVariable("user-id") Long userId, Model model) {
        UserDto user = usersService.getConcreteUser(userId);
        model.addAttribute("user", user);
        return "otherProfile";
    }

    @GetMapping("/profile")
    public String getMe(Principal user, Model model) {
        model.addAttribute("user", user);
        return "otherProfile";
    }

    @GetMapping("/users")
    public String getUsersPage(@CookieValue(value = "AuthCookie", required = false) String cookie,
                               Model model) {
        // TODO: проверить, есть ли такая кука в базе, если есть - отдать страницу
        // TODO: если нет - редирект на login

        if(cookieService.getCookie(cookie)){
            List<UserDto> users = usersService.getUsers();
            model.addAttribute("users", users);
            return "users_page";
        }

        return "redirect:/signIn";

    }

//    @GetMapping("/search")
//    @ResponseBody
//    public List<UserDto> searchUsers(@RequestParam("name") String name, Model model) throws JSONException {
////
////        model.addAttribute("users", usersService.search(name));
//        return (usersService.search(name));
//
//    }


    @GetMapping("/search")
    @ResponseBody
    public String searchUsers(@RequestParam("name") String name) throws JSONException, JsonProcessingException {



        JSONArray ja = new JSONArray();
        ObjectMapper mapper = new ObjectMapper();
        for (UserDto user: usersService.search(name)) {
            ja.put(mapper.writeValueAsString(user));
        }

        JSONObject jo = new JSONObject();
        jo.put("objects", ja);
        return (jo.toString());

    }

}
