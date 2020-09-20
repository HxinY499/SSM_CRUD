package com.ssm.crud.service;

import com.ssm.crud.bean.User;
import com.ssm.crud.dao.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;

    public User login( String userName,String passWord) {
        return userMapper.login(userName,passWord);

    }

    public void register(String userName, String passWord, String email) {

        userMapper.register(userName,passWord,email);
    }
}

