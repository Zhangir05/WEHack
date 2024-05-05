package com.example.wehack.services;

import com.example.wehack.models.User;
import com.example.wehack.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;

    public List<User> userList() {
        return userRepository.findAll();
    }
}
