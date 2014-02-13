package com.peker.wedding.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@ComponentScan("com.peker.wedding")
@EnableWebMvc
public class WebAppConfig extends WebMvcConfigurerAdapter {

}
