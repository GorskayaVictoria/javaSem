package ru.itis.demo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import ru.itis.demo.dto.UserDto;
import ru.itis.demo.dto.UsersSearchResult;
import ru.itis.demo.models.State;
import ru.itis.demo.models.User;
import ru.itis.demo.repositories.UsersRepository;

import java.util.List;

@Service
public class SearchServiceImpl implements SearchService {

    @Autowired
    private UsersRepository usersRepository;

    @Override
    public UsersSearchResult searchUsers(String query, String state, Integer page, Integer size) {
        PageRequest pageRequest = PageRequest.of(page, size);
        Page<User> pageResult = usersRepository.search(query, State.valueOf(state), pageRequest);
        List<UserDto> users = UserDto.from(pageResult.getContent());
        return UsersSearchResult.builder()
                .users(users)
                .count(pageResult.getTotalPages())
                .build();
    }
}

