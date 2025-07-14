package com.example.MeetingIternaryPlanner;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class MeetingIternaryPlannerApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(MeetingIternaryPlannerApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(MeetingIternaryPlannerApplication.class);
    }
}
