package ru.itis.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.demo.dto.UserDto;
import ru.itis.demo.service.CookieService;
import ru.itis.demo.service.SignInService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class SignInController {

    @Autowired
    private SignInService signInService;

    @Autowired
    private CookieService cookieService;

    @GetMapping("/signIn")
    public String getSignIn(@RequestParam(value = "error", required = false) String error,
                            Model model) {
        if (error != null) {
            model.addAttribute("error", true);
        }
        return "sign1_in";
    }

    @PostMapping("/signIn")
    public String signIn(@RequestParam("email") String email,
                         @RequestParam("password") String password,
                         HttpServletResponse response) {
        String cookieValue = signInService.signIn(email, password);

        if (cookieValue == null) {
            return "redirect:/signIn?error";
        }

        Cookie cookie = new Cookie("AuthCookie", cookieValue);
        response.addCookie(cookie);
        return "redirect:/users";
    }

    @GetMapping("/logout")
    public String getUsersPage(@CookieValue(value = "AuthCookie", required = false) String cookie) {
        System.out.println(cookie);
        if(cookieService.deleteCookies(cookie)){
            System.out.println("hi");
            return "redirect:/signUp";
        }

        return "redirect:/signIn";

    }

}
