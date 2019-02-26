package com.dao;

import com.pojo.User;

import java.util.List;

/**
 * Created by dell on 2018/7/25.
 */
public interface UserDao{
    int addUser(User user);

    int updateUser(User user);

    User queryUserById(String id);

    List<User> queryAllUser();

    int getNumberOfUser();
}
