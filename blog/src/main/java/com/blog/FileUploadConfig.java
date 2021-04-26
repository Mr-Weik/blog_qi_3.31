package com.blog;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created by admin on 4/26/21 10:18 AM
 */
@Configuration
public class FileUploadConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

        //获取文件的真实路径
        String path = System.getProperty("user.dir")+"\\src\\main\\resources\\static\\img\\";

        //添加映射
        registry.addResourceHandler("/img/**").addResourceLocations("file:"+path);

    }
}