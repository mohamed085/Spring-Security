package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class indexController {

    @GetMapping("/")
    public String getHome() {

        return "index";
    }

    @GetMapping("/leaders")
    public String getLeaders() {

        return "leaders";
    }

    @GetMapping("/systems")
    public String getSystems() {

        return "systems";
    }

}
