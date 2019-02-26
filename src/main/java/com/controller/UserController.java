package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by dell on 2018/7/25.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String toLogin(Model model, String id, String password){
        model.addAttribute("id", id);
        model.addAttribute("password", password);
        return "login";
    }

    @RequestMapping("/addUser")
    public String addUser(Model model, String name, String password){
        User user = new User();
//        System.out.println("名字啊啊啊啊啊" + name);
        user.setName(name);
        user.setPassword(password);
        int number = userService.getNumberOfUser() + 1000;
        String id = String.format("%d", number);
//        System.out.println(id);
//        System.out.println(user.getPassword());
        user.setUserId(id);
        userService.addUser(user);
        model.addAttribute("userId", id);
        return "login";
    }

    @RequestMapping("/toUserLogin")
    public String toUserLogin(Model model, String userId){
        model.addAttribute("userId", userId);
        return "signIn";
    }

    @RequestMapping("/allUser")
    public String list(Model model){
        List<User> list = userService.queryAllUser();
        model.addAttribute("list", list);
        System.out.println(list.get(0).getBirthday());
        return "index";
    }
}
