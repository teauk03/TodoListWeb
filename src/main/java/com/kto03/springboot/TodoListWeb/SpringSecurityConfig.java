package com.kto03.springboot.TodoListWeb;

import java.util.function.Function;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import static org.springframework.security.config.Customizer.withDefaults;

@Configuration
public class SpringSecurityConfig {
    
    @Bean
    public InMemoryUserDetailsManager createUserDetailsManager() {
        UserDetails userDetails1 = createNewUser("admin", "adminpass");
        UserDetails userDetails2 = createNewUser("user", "userpass");
        return new InMemoryUserDetailsManager(userDetails1, userDetails2);
    }

    private UserDetails createNewUser(String username, String password) {
        Function<String, String> passwordEncoder = 
        input -> passwordEncoder().encode(input);
        
        UserDetails userDetails = User.builder()
        .passwordEncoder(passwordEncoder)
        .username(username)
        .password(password)
        .roles("USER","ADMIN")
        .build();
        return userDetails;
    }

    @Bean 
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

@Bean
public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    // 모든 요청에 대해 인증을 요구하도록 설정
    http.authorizeHttpRequests(auth -> auth.anyRequest().authenticated());
    // 기본 로그인 폼 활성화
    http.formLogin(withDefaults());
    // CSRF 보호 비활성화
    http.csrf().disable();
    // X-Frame-Options 비활성화
    http.headers()
        .frameOptions()
        .disable();

    return http.build();
    }
}

