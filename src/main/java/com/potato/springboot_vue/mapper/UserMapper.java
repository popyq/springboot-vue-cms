package com.potato.springboot_vue.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.potato.springboot_vue.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.mapper
 * @Description: TODO
 * @Date 2023-05-14 0:49
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
    Page<User> findPage(Page<User> page, String username, String email, String address);

//    @Select("select * from sys_user")
//    List<User> findAll();
//
//    @Insert("insert into sys_user(username,password,nickname,email,phone,address) " +
//            "values(#{username},#{password},#{nickname},#{email},#{phone},#{address})")
//    int insert(User user);
//
//    int update(User user);
//
//    @Delete("delete from sys_user where id = #{id}")
//    Integer deleteById(@Param("id") Integer id);
//
//    @Select("select * from sys_user where username like concat('%',#{username},'%') limit #{pageNum},#{pageSize}")
//    List<User> selectPage(Integer pageNum, Integer pageSize,String username);
//
//    @Select("select count(*) from sys_user where username like concat('%',#{username},'%') ")
//    Integer selectTotal(String username);
}
