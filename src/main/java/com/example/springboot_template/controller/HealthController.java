package com.example.springboot_template.controller;

import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthController {
	@GetMapping("/health")
    public Map<String, String> health() {
        return Map.of("status", "healthy");
    }
}



