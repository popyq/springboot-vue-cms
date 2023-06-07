package com.potato.springboot_vue.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.potato.springboot_vue.entity.RoleMenu;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.mapper
 * @Description: TODO
 * @Date 2023-05-22 22:05
 */

public interface RoleMenuMapper extends BaseMapper<RoleMenu> {

    @Delete("delete from sys_role_menu where role_id = #{roleId}")
    int deleteByRoleId(@Param("roleId") Integer roleId);

    @Select("select menu_id from sys_role_menu where role_id = #{roleId}")
    List<Integer> selectByRoleId(@Param("roleId") Integer roleId);
}
