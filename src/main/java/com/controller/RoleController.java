package com.controller;

import com.pojo.Role;
import com.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping("/addRole")
    public String addRole(Model model, String name, String privilege){
        Role role = new Role();
        role.setName(name);
        role.setPrivilege(privilege);
        roleService.addRole(role);

        return "index";
    }

    @RequestMapping("/updateRole")
    public String updateRole(Model model, String name, String privilege){
        Role role = new Role();
        role.setName(name);
        role.setPrivilege(privilege);
        roleService.updateRole(role);

        return "index";
    }

    @RequestMapping("/queryRoleByName")
    public String queryRoleByName(Model model, String name){
        Role role = roleService.queryRoleByName(name);

        model.addAttribute("name", role.getName());
        model.addAttribute("privilege", role.getPrivilege());

        return "index";
    }

    @RequestMapping("/queryAllRole")
    public String queryAllRole(Model model){
        List<Role> list = roleService.queryAllRole();
        model.addAttribute("list", list);

        return "index";
    }
}
