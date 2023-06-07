package com.potato.springboot_vue.service;

import com.potato.springboot_vue.entity.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author POTATO
 * @since 2023-05-21
 */
public interface IMenuService extends IService<Menu> {

    List<Menu> findMenus(String name);
}
