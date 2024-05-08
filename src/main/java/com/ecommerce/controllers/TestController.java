package com.ecommerce.controllers;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class TestController {
    @RequestMapping("")
    public String test(Model model) {
        model.addAttribute("numbers", List.of(1, 2, 3, 4, 5,6,7));
        return "test";
    }
}
