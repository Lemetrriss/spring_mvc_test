package com.coreteka;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String showMyPage(){
//        System.out.println("errer");
        return "main-menu";
    }

    @RequestMapping("/register")
    public String registerPage(){
        System.out.println("register");
        return "register";
    }
}
