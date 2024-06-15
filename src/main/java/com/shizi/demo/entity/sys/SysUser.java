package com.shizi.demo.entity.sys;

import com.shizi.demo.entity.SuperEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author ShiZi
 * @date 2024/4/7
 * <p>linkgap</p>
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SysUser extends SuperEntity {
    private String account;

    private String password;

    private String nickname;
}
