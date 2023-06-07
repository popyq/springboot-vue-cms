package com.potato.springboot_vue.controller.dto;

import com.potato.springboot_vue.entity.Menu;
import lombok.Data;

import java.util.List;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.controller.dto
 * @Description: TODO 接收前端登录请求的参数
 * @Date 2023-05-19 10:19
 */
@Data
public class UserDTO {

    private Integer id;

    private String username;

    private String password;

    private String nickname;

    private String avatarUrl;

    private String token;

    private String role;

    private List<Menu>  menus;

}
