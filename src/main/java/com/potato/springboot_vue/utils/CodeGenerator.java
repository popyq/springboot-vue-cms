package com.potato.springboot_vue.utils;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.config.rules.DbColumnType;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.sql.Types;
import java.util.Collections;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.utils
 * @Description: my 代码生成器
 * @Date 2023-05-17 8:37
 */

public class CodeGenerator {
    public static void main(String[] args) {
            generate();
    }
    
    private static   void generate(){
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/BiShe?serverTimezone=GMT%2b8", "root", "123456")
            .globalConfig(builder -> {
                builder.author("POTATO") // 设置作者
                        .enableSwagger() // 开启 swagger 模式
                        .fileOverride() // 覆盖已生成文件
                        .outputDir("F:\\SSM项目\\Springboot+vue_demo1\\代码\\SpringBoot_vue\\src\\main\\java\\"); // 指定输出目录
            })
            .packageConfig(builder -> {

                builder.parent("com.potato.springboot_vue") // 设置父包名
                        .moduleName(null) // 设置父包模块名
                        .pathInfo(Collections.singletonMap(OutputFile.xml, "F:\\SSM项目\\Springboot+vue_demo1\\代码\\SpringBoot_vue\\src\\main\\resources\\mapper\\")); // 设置mapperXml生成路径
            })
            .strategyConfig(builder -> {
                builder.entityBuilder().enableLombok();
//                builder.mapperBuilder().enableMapperAnnotation().build();
                builder.controllerBuilder().enableHyphenStyle()  // 开启驼峰转连字符
                        .enableRestStyle();  // 开启生成@RestController 控制器
                builder.addInclude("course") // 设置需要生成的表名
                        .addTablePrefix("t_", "sys_"); // 设置过滤表前缀
            })
//            .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
            .execute();
    }


}
