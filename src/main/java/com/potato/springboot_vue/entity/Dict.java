package com.potato.springboot_vue.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.entity
 * @Description: TODO
 * @Date 2023-05-22 19:43
 */
@TableName("sys_dict")
@Data
public class Dict {
    private String name;
    private String value;
    private String type;

}
