package com.potato.springboot_vue;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class SpringBootVueApplication {



    public static void main(String[] args) {
        SpringApplication.run(SpringBootVueApplication.class, args);
    }



}
