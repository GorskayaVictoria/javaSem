package ru.itis.demo.service;

import ru.itis.demo.dto.UserDto;
import ru.itis.demo.dto.UsersSearchResult;

import java.util.List;

public interface SearchService {
    UsersSearchResult searchUsers(String query,String state, Integer page, Integer size);
}
