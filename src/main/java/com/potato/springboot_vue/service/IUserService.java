package com.potato.springboot_vue.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.potato.springboot_vue.controller.dto.UserDTO;
import com.potato.springboot_vue.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author POTATO
 * @since 2023-05-17
 */
public interface IUserService extends IService<User> {

    UserDTO login(UserDTO userDTO);

    User register(UserDTO userDTO);

    Page<User> findPage(Page<User> page, String username, String email, String address);
}
