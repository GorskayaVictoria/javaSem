package ru.itis.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ru.itis.demo.dto.UsersSearchResult;
import ru.itis.demo.service.SearchService;

import java.util.HashMap;

@RestController
@RequestMapping("/search")
public class SearchController {


    @Autowired
    private SearchService service;


    // /search/users?q=...&page=1&size=2

    @GetMapping("/users")
    public UsersSearchResult searchUsers(@RequestParam("q") String query,
                                         @RequestParam("page") Integer page,
                                         @RequestParam("size") Integer size,
                                         @RequestParam(value = "state", required = false) String state) {
        System.out.println("hihih");

        return service.searchUsers(query, state, page, size);

    }

//    @GetMapping("/a")
//    @ResponseBody
//    public void searchUser(@RequestParam("q") String query,
//                                         @RequestParam("page") Integer page,
//                                         @RequestParam("size") Integer size,
//                                         @RequestParam(value = "state", required = false) String state) {
//        System.out.println("hihih");
//
//        return;
//
//    }
}

