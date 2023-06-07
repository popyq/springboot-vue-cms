package com.potato.springboot_vue.exception;

import com.potato.springboot_vue.common.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.exception
 * @Description: TODO
 * @Date 2023-05-19 15:01
 */
@ControllerAdvice
public class GlobalExceptionHandler {


    /**
     * 如果抛出的是ServiceException 则调用该方法
     * @param se 业务异常
     * @return
     */
    @ExceptionHandler(ServiceException.class)
    @ResponseBody
    public Result handler(ServiceException se){
        return Result.error(se.getCode(),se.getMessage());
    }
}
