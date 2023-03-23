package com.cpg.cloudrunprocessor.web;

import com.cpg.cloudrunprocessor.dto.Product;
import org.springframework.web.bind.annotation.*;

@RestController
public class WebController {

    @PostMapping("/create")
    @ResponseBody
    public Product createProduct(@RequestBody Product product) {
        // custom logic
        return product;
    }
    @GetMapping("/get")
    @ResponseBody
    public String testGet() {
        // custom logic
        return "sdfsd";
    }
}
