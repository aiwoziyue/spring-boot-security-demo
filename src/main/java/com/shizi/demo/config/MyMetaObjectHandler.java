package com.shizi.demo.config;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * @author ShiZi
 * @date 2023/11/7
 * <p>linkgap</p>
 */
@Component
public class MyMetaObjectHandler implements MetaObjectHandler {
    private final static String DELETED = "deleted";
    private final static String CREATE_DATE = "createTime";
    private final static String CREATE_USER = "createUser";
    private final static String UPDATE_DATE = "updateTime";
    private final static String UPDATE_USER = "updateUser";

    @Override
    public void insertFill(MetaObject metaObject) {
        Object delFlag = getFieldValByName(DELETED, metaObject);
        if (delFlag == null) {
            this.strictInsertFill(metaObject, DELETED, Integer.class, 0);
        }

        Object createDate = getFieldValByName(CREATE_DATE, metaObject);
        if (createDate == null) {
            this.strictInsertFill(metaObject, CREATE_DATE, LocalDateTime.class, LocalDateTime.now());
        }

        Object createBy = getFieldValByName(CREATE_USER, metaObject);
        if (createBy == null) {
            this.strictInsertFill(metaObject, CREATE_USER, String.class, "");
        }
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        this.strictUpdateFill(metaObject, UPDATE_DATE, LocalDateTime.class, LocalDateTime.now());
        this.strictUpdateFill(metaObject, UPDATE_USER, String.class, "");
    }
}
