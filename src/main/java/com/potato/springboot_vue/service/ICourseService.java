package com.potato.springboot_vue.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.potato.springboot_vue.entity.Course;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author POTATO
 * @since 2023-05-26
 */
public interface ICourseService extends IService<Course> {

    Page<Course> findPage(Page<Course> page,String name);

    void setStudentCourse(Integer courseId, Integer studentId);

}
