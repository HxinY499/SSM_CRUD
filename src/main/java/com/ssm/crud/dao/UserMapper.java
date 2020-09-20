package com.ssm.crud.dao;

import com.ssm.crud.bean.User;
import com.ssm.crud.bean.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    User login(@Param("userName")String userName, @Param("passWord")String passWord);

    void register(@Param("userName")String userName, @Param("passWord")String passWord, @Param("email")String email);
}