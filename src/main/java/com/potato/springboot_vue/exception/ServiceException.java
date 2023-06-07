package com.potato.springboot_vue.exception;

import lombok.Getter;

/**
 * @Author potato
 * @PackageName:com.potato.springboot_vue.exception
 * @Description: TODO
 * @Date 2023-05-19 15:01
 */
@Getter
public class ServiceException extends RuntimeException {

    private String code;

    public ServiceException(String code,String msg) {
        super(msg);
        this.code = code;
    }
}
