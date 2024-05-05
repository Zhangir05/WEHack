package com.example.wehack.controllers;

import com.example.wehack.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/")
    public String users(Model model) {
        model.addAttribute("users", userService.userList());
        return "users";
    }

    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }
}
