### 基于RBAC（Role-Based Access Control，基于角色的访问控制）的数据权限系统设计通常包括以下核心表格：

1. 用户表(User Table):
   - users 或 admin_users
     - 字段：
       - id: 用户ID（主键）
       - username: 用户名
       - password: 密码（通常加密存储）
       - email: 邮箱地址
       - status: 用户状态（如启用、禁用）
       - 其他字段如姓名、联系方式等。

2. 角色表(Role Table):
   - roles
     - 字段：
       - id: 角色ID（主键）
       - name: 角色名称
       - description: 角色描述

3. 权限表(Permission Table):
   - permissions
     - 字段：
       - id: 权限ID（主键）
       - name: 权限名称或代码
       - description: 权限描述

4. 用户-角色关联表(User-Role Association Table):
   - 本表用于记录每个用户所属的角色关系
   - user_roles 或 role_members
     - 字段：
       - user_id: 用户ID（外键引用用户表）
       - role_id: 角色ID（外键引用角色表）

5. 角色-权限关联表(Role-Permission Association Table):
   - 本表用于记录每个角色所拥有的权限关系
   - role_permissions
     - 字段：
       - role_id: 角色ID（外键引用角色表）
       - permission_id: 权限ID（外键引用权限表）

此外，在更复杂的情况下，可能还会涉及资源表(Resource Table)，用来定义系统中的各种资源，以及角色对资源的权限关系表，例如：

6. 资源表(Resources Table):
   - resources
     - 字段：
       - id: 资源ID
       - name: 资源名称
       - type: 资源类型（如菜单、页面、API接口等）

7. 角色-资源-权限关联表(Role-Resource-Permission Association Table):
   - 本表表示某个角色在特定资源上具备的权限
   - role_resource_permissions
     - 字段：
       - role_id: 角色ID
       - resource_id: 资源ID
       - permission_id: 权限ID

通过这样的设计，可以根据用户的所属角色来间接控制用户对系统各部分的访问权限，从而实现灵活且可扩展的权限管理机制。
