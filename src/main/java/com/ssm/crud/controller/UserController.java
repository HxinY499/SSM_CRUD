package com.ssm.crud.controller;

import com.ssm.crud.bean.User;
import com.ssm.crud.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam String userName, @RequestParam String passWord,
                        HttpServletRequest request,
                        HttpSession session){
        User user = userService.login(userName,passWord);
        if(user!=null) {
            session.setAttribute("user",user);
            return "list";
        }else{
            request.setAttribute("msg","用户名或密码错误");
            return "login";
        }
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(@RequestParam String userName,
                           @RequestParam String passWord,
                           @RequestParam String email,
                           HttpServletRequest request){
        userService.register(userName,passWord,email);
        request.setAttribute("msg","注册成功");
        return "login";
    }

    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request,
                         HttpSession session){
        session.removeAttribute("user");
        request.setAttribute("msg","退出成功");
        return "login";
    }

    @RequestMapping("/main")
    public String main(){
        return "login";
    }
}

