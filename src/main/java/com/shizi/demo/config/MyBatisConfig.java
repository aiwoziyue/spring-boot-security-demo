package com.shizi.demo.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

/**
 * @author ShiZi
 * @date 2024/4/3
 * <p>linkgap</p>
 */
@Configuration
@MapperScan("com.shizi.demo.mapper")
public class MyBatisConfig {

}
