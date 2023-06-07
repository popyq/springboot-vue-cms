package com.potato.springboot_vue.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.potato.springboot_vue.common.Result;
import com.potato.springboot_vue.entity.Files;
import com.potato.springboot_vue.entity.User;
import com.potato.springboot_vue.mapper.CourseMapper;
import com.potato.springboot_vue.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;

import com.potato.springboot_vue.service.ICourseService;
import com.potato.springboot_vue.entity.Course;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author POTATO
 * @since 2023-05-26
 */
@RestController
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private ICourseService courseService;

    @Autowired
    private IUserService userService;


    // 新增或者更新
    @PostMapping
    public Result save(@RequestBody Course course){
        return Result.success(courseService.saveOrUpdate(course));
    }

    @PostMapping("/studentCourse/{courseId}/{studentId}")
    public Result studentCourse(@PathVariable Integer courseId,@PathVariable Integer studentId){
        System.out.println("courseId"+courseId);
        courseService.setStudentCourse(courseId,studentId);
        return Result.success();
    }

    // 删除
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(courseService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids){
        return Result.success(courseService.removeByIds(ids));
    }

    // 查询所有
    @GetMapping
    public Result findAll() {
        return Result.success(courseService.list());
    }

    //根据id查询
    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(courseService.getById(id));
    }

//    // 分页查询
//    @GetMapping("/page")
//    public Result findPage(@RequestParam Integer pageNum,
//                                    @RequestParam Integer pageSize) {
//        QueryWrapper<Course> queryWrapper = new QueryWrapper<>();
//        queryWrapper.orderByDesc("id");
//        Page<Course> page = courseService.page(new Page<>(pageNum, pageSize));
//        // 第一种方式  关联查询
//        /*List<Course> records = page.getRecords();
//        for(Course record : records){
//            User user = userService.getById(record.getTeacherId());
//            if (user != null){
//                record.setTeacher(user.getNickname());
//            }
//        }*/
//        return Result.success(page);
//    }

    // 分页查询
    @GetMapping("/page")
    public Result findPage(
                           @RequestParam String name,
                           @RequestParam Integer pageNum,
                           @RequestParam Integer pageSize) {
        Page<Course> page = courseService.findPage(new Page<>(pageNum, pageSize),name);
        return Result.success(page);
    }

    @PostMapping("/update")
    public Result update(@RequestBody Course course){
        return  Result.success(courseService.updateById(course));
    }

}
