package ru.itis.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignInController {



    @GetMapping("/signIn")
    public String getSignIn() {
        return "sign_in";
    }

//    @GetMapping("/signIn")
//    public String getSignIn(@RequestParam(value = "error", required = false) String error,
//                            Model model) {
//        if (error != null) {
//            model.addAttribute("error", true);
//        }
//        return "sign1_in";
//    }
//
//    @PostMapping("/signIn")
//    public String signIn(@RequestParam("email") String email,
//                         @RequestParam("password") String password,
//                         @RequestParam("remember") boolean remember,
//                         HttpServletResponse response) {
//        String cookieValue = signInService.signIn(email, password);
//        System.out.println(cookieValue);
//        if (cookieValue == null) {
//            return "redirect:/signIn?error";
//        }
//        System.out.println(remember);
//        if (remember) {
//            Cookie cookie = new Cookie("AuthCookie", cookieValue);
//            response.addCookie(cookie);
//        }
//        return "redirect:/users";
//    }


}
