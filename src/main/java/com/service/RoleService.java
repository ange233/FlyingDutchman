package com.service;

import com.pojo.Role;

import java.util.List;

/**
 * Created by dell on 2019/2/27.
 */
public interface RoleService {
    int addRole(Role role);

    int updateRole(Role role);

    Role queryRoleByName(String name);

    List<Role> queryAllRole();
}
