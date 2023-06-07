package com.potato.springboot_vue.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.potato.springboot_vue.entity.Course;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author POTATO
 * @since 2023-05-26
 */
public interface CourseMapper extends BaseMapper<Course> {

    Page<Course> findPage(Page<Course> page, @Param("name") String name);

    void setStudentCourse(@Param("courseId") Integer courseId, @Param("studentId") Integer studentId);
    void deleteStudentCourse(@Param("courseId") Integer courseId, @Param("studentId") Integer studentId);

}
