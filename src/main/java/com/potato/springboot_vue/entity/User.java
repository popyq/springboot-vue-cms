package com.potato.springboot_vue.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.entity
 * @Description: TODO
 * @Date 2023-05-14 0:43
 */
@Data
@TableName(value = "sys_user")
public class User {

    @TableId(type= IdType.AUTO)
    private Integer id;
    private String username;
    @JsonIgnore
    private String password;
    private String nickname;
    private String email;
    private String phone;
    private String address;
    private String avatarUrl;
    private Date CreateTime;

    private String role;

    @TableField(exist =false)
    private List<Course> courses;

    @TableField(exist =false)
    private List<Course> stuCourses;
}
