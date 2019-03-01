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

    @RequestMapping("/toLogin")
    public String toLogin(Model model){
        return "login";
    }

    @RequestMapping("/toRegister")
    public String toSignUp(Model model){
        return  "register";
    }

    @RequestMapping("/login")
    public String login(Model model, String name, String password){
//        System.out.println("用户名为: " + name + " 密码：" + password);
        User user = userService.queryUserByName(name);
        if (user != null){
            if (user.getPassword().equals(password)){
                if (user.getRole().equals("SuperAdmin")){
                    return "admin_main";
                }else{
                    return "main";
                }
            }else{
                model.addAttribute("passwordError", "密码错误 ");
                return "login";
            }
        }else{
            model.addAttribute("usernameError", "用户不存在");
            return "login";
        }
    }

    @RequestMapping("/register")
    public String register(Model model, String registerUsername, String registerEmail, String registerPassword){
        System.out.println("Username: " + registerUsername + " Email: " + registerEmail + " Password: " + registerPassword);
        // 检测用户名是否已存在
        User check = userService.queryUserByName(registerUsername);
        System.out.println("查询到的用户: " + check);
        if (check != null){
            model.addAttribute("state", "用户名已存在");
            return "register";
        }

        User user = new User();
        user.setName(registerUsername);
        user.setPassword(registerPassword);
        user.setRole("NormalUser");
        user.setEmail(registerEmail);
        userService.addUser(user);

        return "main";
    }

    @RequestMapping("/allUser")
    public String list(Model model){
        List<User> list = userService.queryAllUser();
        model.addAttribute("list", list);

        return "index";
    }

    @RequestMapping("/updateUser")
    public String updateUser(Model model, String name, String password, String role, String email){
        User user = new User();
        user.setName(name);
        user.setPassword(password);
        user.setRole(role);
        user.setEmail(email);
        userService.updateUser(user);

        return "index";
    }
}
