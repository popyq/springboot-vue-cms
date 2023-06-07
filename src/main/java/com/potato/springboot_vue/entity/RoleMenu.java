package com.potato.springboot_vue.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.entity
 * @Description: TODO
 * @Date 2023-05-22 22:04
 */

@TableName("sys_role_menu")
@Data
public class RoleMenu {
     private Integer roleId;
     private Integer menuId;
}
