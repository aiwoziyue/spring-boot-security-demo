package com.shizi.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * @author ShiZi
 * @date 2024/4/2
 * <p>linkgap</p>
 */
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // http.cors().disable();
        http.csrf().disable();
        // http.sessionManagement().disable();
        http.authorizeRequests().anyRequest().permitAll()
            .and()
            .headers().frameOptions().sameOrigin();
    }
}
