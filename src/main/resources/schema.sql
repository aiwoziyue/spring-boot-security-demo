DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user
(
    id          bigint IDENTITY PRIMARY KEY,
    account     varchar(255),
    password    varchar(255),
    nickname    varchar(255),
    enabled     tinyint      NOT NULL DEFAULT 0 CHECK (enabled IN (0, 1)),
    deleted     tinyint      NOT NULL DEFAULT 0 CHECK (deleted IN (0, 1)),
    create_user varchar(255) NOT NULL,
    create_time timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_user varchar(255),
    update_time timestamp             DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role
(
    id          bigint IDENTITY PRIMARY KEY,
    name        varchar(255),
    deleted     tinyint      NOT NULL DEFAULT 0 CHECK (deleted IN (0, 1)),
    create_user varchar(255) NOT NULL,
    create_time timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_user varchar(255),
    update_time timestamp             DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS sys_user_role;
CREATE TABLE sys_user_role
(
    id          bigint IDENTITY PRIMARY KEY,
    user_id     bigint,
    role_id     bigint,
    deleted     tinyint      NOT NULL DEFAULT 0 CHECK (deleted IN (0, 1)),
    create_user varchar(255) NOT NULL,
    create_time timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_user varchar(255),
    update_time timestamp             DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS sys_authority;
CREATE TABLE sys_authority
(
    id          bigint IDENTITY PRIMARY KEY,
    `authority` varchar(255) NOT NULL,
    deleted     tinyint      NOT NULL DEFAULT 0 CHECK (deleted IN (0, 1)),
    create_user varchar(255) NOT NULL,
    create_time timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_user varchar(255),
    update_time timestamp             DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS sys_role_authority;
CREATE TABLE sys_role_authority
(
    id           bigint IDENTITY PRIMARY KEY,
    role_id      bigint,
    authority_id bigint,
    deleted      tinyint      NOT NULL DEFAULT 0 CHECK (deleted IN (0, 1)),
    create_user  varchar(255) NOT NULL,
    create_time  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_user  varchar(255),
    update_time  timestamp             DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu
(
    id          bigint IDENTITY PRIMARY KEY,
    name        varchar(255),
    path        varchar(255),
    component   varchar(255),
    icon        varchar(255),
    parent_id   bigint,
    deleted     tinyint      NOT NULL DEFAULT 0 CHECK (deleted IN (0, 1)),
    create_user varchar(255) NOT NULL,
    create_time timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_user varchar(255),
    update_time timestamp             DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS sys_role_menu;
CREATE TABLE sys_role_menu
(
    id          bigint IDENTITY PRIMARY KEY,
    role_id     bigint,
    menu_id     bigint,
    deleted     tinyint      NOT NULL DEFAULT 0 CHECK (deleted IN (0, 1)),
    create_user varchar(255) NOT NULL,
    create_time timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_user varchar(255),
    update_time timestamp             DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
