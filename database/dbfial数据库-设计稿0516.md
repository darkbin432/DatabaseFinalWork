# 计生协信息化hzjs数据库库拓扑

## 说明

数据库固定字段

| 字段名       | 类型         | 备注           |
| ------------ | ------------ | -------------- |
| id           | int          | 主键           |
| created_time | datetime     | 创建时间       |
| updated_time | datetime     | 更新时间       |
| version      | varchar(255) | 版本号         |
| status       | tinyint(1)   | 1存在、0被删除 |



* git目录

```
--- hzjs项目
	----front	前端
		----vue		
	----backend 后台
		----springmvc
		
		
branch
	--- master
	--- dev-1.0
	--- dev-kzn
	--- dev-xht
```

* .gitignore

```
.idea
.eclipse
.log
.config
```

* 图片文件等资源

```
--- tomcat 
	--- webapp
		--- hzjsResource
			--- images
			--- videos
			--- files
		--- hzjs.war
```




## 会员信息表huiyuan

| 字段名           | 类型         | 备注                                     |
| ---------------- | ------------ | ---------------------------------------- |
| id               | int          | 主键                                     |
| name             | varchar(255) | 会员姓名                                 |
| sex              | tinyint(1)   | 性别（0 女性 1 男性）                    |
| card_no          | varchar(255) | 身份证号码（年龄根据身份证号码计算）     |
| huji             | varchar(255) | 户籍                                     |
| address          | varchar(255) | 现居住址                                 |
| mobile           | varchar(20)  | 联系电话                                 |
| organization_id  | int          | 所属机构                                 |
| location         | varchar(255) | 所在区域                                 |
| political        | varchar(255) | 政治面貌                                 |
| service_type     | int          | 服务对象                                 |
| huiyuan_status   | int          | 会员状态（流动人口，失独群众，青少年？） |
| marriage_status  | int          | 婚育状况                                 |
| volunteer_status | int          | 志愿者状态 0不是 1是 2申请中             |
| huiyuan_type     | tinyint(1)   | 个体会员/团体会员                        |
| activity_group   | varchar(255) | 感兴趣的服务内容（跟资讯和活动相关联？） |
| notify_status    | tinyint(1)   | 是否愿意接收协会的活动通知               |
| description      | text         | 介绍和描述                               |
| created_time     | datetime     | 创建时间                                 |
| updated_time     | datetime     | 更新时间                                 |
| version          | varchar(255) | 版本号                                   |
| status           | tinyint(1)   | 是否删除                                 |



## 活动信息表activity

| 字段名          | 类型          | 备注                                |
| --------------- | ------------- | ----------------------------------- |
| id              | int           | 主键                                |
| project_id      | int           | 项目id                              |
| approval_id     | int           | 审批人id                            |
| check_states    | int           | 审批状态(2无需审批 1已审批 0未审批) |
| title           | varchar(255)  | 活动名称                            |
| head_member_id  | int           | 活动负责人                          |
| activity_time   | datetime      | 活动时间                            |
| activity_object | int           | 活动对象                            |
| publish_time    | datetime      | 发布时间                            |
| start_time      | datetime      | 启动时间                            |
| huiyuan_limit   | int           | 会员人数限制 0 不限制               |
| volunteer_limit | int           | 志愿者人数限制 0 不限制             |
| huiyuan_count   | int           | 参与活动会员数                      |
| description     | text          | 介绍和描述                          |
| attachment      | varchar(5000) | 附件地址集合                        |
| summary         | text          | 活动总结                            |
| created_time    | datetime      | 创建时间                            |
| updated_time    | datetime      | 更新时间                            |
| version         | varchar(255)  | 版本号                              |
| status          | tinyint(1)    | 是否删除                            |



## 会员记录表huiyuan_activity

| 字段名           | 类型         | 备注                    |
| ---------------- | ------------ | ----------------------- |
| id               | int          | 主键                    |
| huiyuan_id       | int          | 会员id                  |
| activity_id      | int          | 活动id                  |
| volunteer_status | tinyint(1)   | 是否以志愿者身份参与    |
| volunteer_point  | int          | 志愿者积分              |
| attend_status    | tinyint(1)   | 签到状态 0 未签到 1签到 |
| created_time     | datetime     | 创建时间                |
| updated_time     | datetime     | 更新时间                |
| version          | varchar(255) | 版本号                  |
| status           | tinyint(1)   | 是否删除                |



## 机构信息表organization_info

| 字段名                 | 类型         | 备注                                  |
| ---------------------- | ------------ | ------------------------------------- |
| id                     | int          | 主键                                  |
| name                   | varchar(255) | 机构名称                              |
| type                   | int          | 机构性质                              |
| mobile                 | varchar(20)  | 联系电话                              |
| address                | varchar(255) | 机构地址                              |
| postalcode             | varchar(10)  | 邮政编码                              |
| fax                    | varchar(20)  | 传真                                  |
| parent_organization_id | int          | 上级机构                              |
| code                   | int          | 机构代码                              |
| description            | text         | 介绍和描述                            |
| member_status          | int          | 成员分布（例如：在编制:10,非编制:25） |
| created_time           | datetime     | 创建时间                              |
| updated_time           | datetime     | 更新时间                              |
| version                | varchar(255) | 版本号                                |
| status                 | tinyint(1)   | 是否删除                              |



## 机构成员表organization_member

| 字段名           | 类型         | 备注                                     |
| ---------------- | ------------ | ---------------------------------------- |
| id               | int          | 主键                                     |
| username         | varchar(255) | 用户名                                   |
| password         | varchar(255) | 密码                                     |
| role_id          | int          | 职能/权限id                              |
| name             | varchar(255) | 成员姓名                                 |
| sex              | tinyint(1)   | 性别                                     |
| mobile           | varchar(20)  | 联系电话                                 |
| organization_id  | int          | 机构id                                   |
| department       | varchar(255) | 部门                                     |
| position         | varchar(255) | 职位                                     |
| address          | varchar(255) | 现居住址                                 |
| type             | int          | 会员状态（流动人口，失独群众，青少年？） |
| marriage_status  | int          | 婚育状况                                 |
| volunteer_status | int          | 志愿者状态 0不是1是2申请中               |
| huiyuan_type     | int          | 个体会员/团体会员                        |
| hobby            | varchar(255) | 兴趣爱好                                 |
| activity_group   | varchar(255) | 兴趣小组？                               |
| notify_type      | tinyint(1)   | 是否愿意接收协会的活动通知               |
| description      | text         | 介绍和描述                               |
| created_time     | datetime     | 创建时间                                 |
| updated_time     | datetime     | 更新时间                                 |
| version          | varchar(255) | 版本号                                   |
| status           | tinyint(1)   | 是否删除                                 |



## 管理员权限表admin_role

| 字段名         | 类型         | 备注       |
| -------------- | ------------ | ---------- |
| id             | int          | 主键       |
| name           | varchar(255) | 权限名称   |
| order          | int          | 排序       |
| parent_role_id | int          | 上级角色   |
| description    | text         | 介绍和描述 |
| created_time   | datetime     | 创建时间   |
| updated_time   | datetime     | 更新时间   |
| version        | varchar(255) | 版本号     |
| status         | tinyint(1)   | 是否删除   |



## 公告信息表announcement

| 字段名            | 类型          | 备注                     |
| ----------------- | ------------- | ------------------------ |
| id                | int           | 主键                     |
| title             | varchar(255)  | 标题                     |
| announcement_type | int           | 公告类型                 |
| create_member_id  | int           | 发布者id                 |
| read_count        | int           | 点击次数                 |
| attachment        | varchar(5000) | 附件地址集合             |
| content           | text          | html?                    |
| created_time      | datetime      | 创建时间(发布时间)       |
| updated_time      | datetime      | 更新时间（最后修改时间） |
| version           | varchar(255)  | 版本号                   |
| status            | tinyint(1)    | 是否删除                 |



## 资讯信息表zixun

| 字段名           | 类型          | 备注                      |
| ---------------- | ------------- | ------------------------- |
| id               | int           | 主键                      |
| title            | varchar(255)  | 标题                      |
| project_id       | int           | 项目id                    |
| receive_object   | int           | 发布对象                  |
| create_member_id | int           | 发布者                    |
| read_count       | int           | 点击次数                  |
| scope_id         | int           | 区域范围id                |
| publish_status   | tinyint(1)    | 已推送？（1发送 0未发送） |
| attachment       | varchar(5000) | 附件地址集合              |
| content          | text          | html?                     |
| created_time     | datetime      | 创建时间(发布时间)        |
| updated_time     | datetime      | 更新时间（最后修改时间）  |
| version          | varchar(255)  | 版本号                    |
| status           | tinyint(1)    | 是否删除                  |



## 宣教信息表xuanjiao

| 字段名         | 类型          | 备注主键                |
| -------------- | ------------- | ----------------------- |
| id             | int           | 主键                    |
| title          | varchar(255)  | 课程标题                |
| name           | varchar(255)  | 课程名称                |
| type           | int           | 宣教类型                |
| read_count     | int           | 点击次数                |
| publish_status | tinyint(1)    | 已推送(1已推送 0未推送) |
| attachment     | varchar(5000) | 附件地址集合            |
| content        | text          | html？                  |
| created_time   | datetime      | 创建时间（发布时间）    |
| updated_time   | datetime      | 更新时间(最后修改时间)  |
| version        | varchar(255)  | 版本号                  |
| status         | tinyint（1）  | 是否删除                |



## 项目信息表project

| 字段名         | 类型         | 备注                                       |
| -------------- | ------------ | ------------------------------------------ |
| id             | int          | 主键                                       |
| title          | varchar(255) | 项目名称                                   |
| type           | int          | 性质                                       |
| scope          | varchar(255) | 范围                                       |
| unit           | varchar(255) | 实施单位                                   |
| head_member_id | int          | 项目负责人                                 |
| mail           | varchar(255) | 邮箱                                       |
| check_status   | int          | 是否审批 0不通过 1通过 2审批中 3不需要审批 |
| start_time     | datetime     | 项目开始时间                               |
| end_time       | datetime     | 项目结束时间                               |
| goal           | text         | 目标                                       |
| description    | text         | 项目内容                                   |
| created_time   | datetime     | 创建时间                                   |
| updated_time   | datetime     | 更新时间                                   |
| version        | varchar(255) | 版本号                                     |
| status         | tinyint(1)   | 是否删除                                   |



## 邮件信息表mail

| 字段名       | 类型          | 备注                                     |
| ------------ | ------------- | ---------------------------------------- |
| id           | int           | 主键                                     |
| in_mail      | int           | 发件人 机构成员id organization_member_id |
| to_mail      | varchar(255)  | 收件人id集合                             |
| subject      | varchar(255)  | 主题                                     |
| content      | varchar(5000) | 内容                                     |
| attachment   | varchar(5000) | 附件地址集合                             |
| date         | datetime      | 发送时间                                 |
| send_status  | tinyint(1)    | 状态 1已发送\0草稿箱                     |
| in_star      | tinyint(1)    | 发件人是否星标                           |
| created_time | datetime      | 创建时间                                 |
| updated_time | datetime      | 更新时间                                 |
| version      | varchar(255)  | 版本号                                   |
| status       | tinyint(1)    | 是否删除                                 |



## 邮件_成员对应表 mail_people_relationship

| 字段名                 | 类型         | 备注           |
| ---------------------- | ------------ | -------------- |
| id                     | int          | 主键           |
| mail_id                | int          | 邮件id         |
| organization_member_id | int          | 收件人id       |
| is_read                | tinyint(1)   | 是否已读       |
| to_star                | tinyint(1)   | 收件人是否星标 |
| is_garbage             | tinyint(1)   | 是否放入回收站 |
| created_time           | datetime     | 创建时间       |
| updated_time           | datetime     | 更新时间       |
| version                | varchar(255) | 版本号         |
| status                 | tinyint(1)   | 是否删除       |



## 机构_范围对应表organization_scope_relationship

| 字段名          | 类型         | 备注       |
| --------------- | ------------ | ---------- |
| id              | int          | 主键       |
| organization_id | int          | 机构id     |
| scope_id        | int          | 活动范围id |
| created_time    | datetime     | 创建时间   |
| updated_time    | datetime     | 更新时间   |
| version         | varchar(255) | 版本号     |
| status          | tinyint(1)   | 是否删除   |



## 公告_范围对应表announcement_scope_relationship

| 字段名          | 类型         | 备注       |
| --------------- | ------------ | ---------- |
| id              | int          | 主键       |
| announcement_id | int          | 公告id     |
| scope_id        | int          | 活动范围id |
| created_time    | datetime     | 创建时间   |
| updated_time    | datetime     | 更新时间   |
| version         | varchar(255) | 版本号     |
| status          | tinyint(1)   | 是否删除   |



## 项目_范围对应表 project_scope_relationship

| 字段名       | 类型         | 备注       |
| ------------ | ------------ | ---------- |
| id           | int          | 主键       |
| project_id   | int          | 项目id     |
| scope_id     | int          | 活动范围id |
| created_time | datetime     | 创建时间   |
| updated_time | datetime     | 更新时间   |
| version      | varchar(255) | 版本号     |
| status       | tinyint(1)   | 是否删除   |



## 活动_范围对应表 activity_scope_relationship

| 字段名       | 类型         | 备注       |
| ------------ | ------------ | ---------- |
| id           | int          | 主键       |
| activity_id  | int          | 活动id     |
| scope_id     | int          | 活动范围id |
| created_time | datetime     | 创建时间   |
| updated_time | datetime     | 更新时间   |
| version      | varchar(255) | 版本号     |
| status       | tinyint(1)   | 是否删除   |





## 报表信息表report_info

| 字段名          | 类型         | 备注             |
| --------------- | ------------ | ---------------- |
| id              | int          | 主键             |
| project_id      | int          | 项目id           |
| organization_id | int          | 上报机构id       |
| name            | varchar(255) | 报表名称         |
| send_status     | tinyint(1)   | 状态 已发送\草稿 |
| created_time    | datetime     | 创建时间         |
| updated_time    | datetime     | 更新时间         |
| version         | varchar(255) | 版本号           |
| status          | tinyint(1)   | 是否删除         |

## 会员管理分析报表视图 v_huiyuan_report 



## 项目工作分析报表视图 v_project_report



## 轮播图管理表slide_info

| 字段名       | 类型          | 备注             |
| ------------ | ------------- | ---------------- |
| id           | int           | id               |
| name         | varchar(255)  | 名称             |
| attachment   | varchar(5000) | 附件地址集合     |
| content      | text          | html？           |
| send_status  | tinyint(1)    | 状态 已发送\草稿 |
| created_time | datetime      | 创建时间         |
| updated_time | datetime      | 更新时间         |
| version      | varchar(255)  | 版本号           |
| status       | tinyint(1)    | 是否删除         |

## 年度报表year_report_info

| 字段名                               | 类型         | 备注                          |
| :----------------------------------- | ------------ | ----------------------------- |
| id                                   | int          | id                            |
| organization_id                      | int          | 机构id                        |
| organization_member_id               | int          | 上报人                        |
| report_year                          | int          | 上报年度                      |
| fluid_population_organization_number | int          | 企业和流动人口 计生协组织个数 |
| fluid_population_VIP_number          | Int          | 企业和流动人口 计生协会员个数 |
| shi_teacher_numbe                    | int          | 现有市级师资                  |
| xian_teacher_number                  | int          | 现有县级师资                  |
| shi_base_number                      | int          | 现有市级基地                  |
| xian_base_number                     | int          | 现有县级基地                  |
| school_number                        | int          | 现有高校                      |
| broadcast_number                     | int          | 县级以上广播电视报道          |
| paper_medium_number                  | int          | 县级以上纸媒报道              |
| adult_training_scene                 | int          | 青少年讲座培训场次            |
| adult_training_number                | int          | 青少年讲座培训人数            |
| parent_training_scene_number         | int          | 家长讲座培训场次              |
| parent_training_number               | int          | 家长讲座培训人数              |
| help_scene_number                    | int          | 计生协帮扶和服务场次          |
| help_number_number                   | int          | 计生协帮扶和服务对象人数      |
| pair_help_logarithm_number           | int          | 特殊家庭结对帮扶对数          |
| minfei_organization_number           | int          | 现有相关民非组织数            |
| village_community_number             | int          | 村、社区总数                  |
| new_revision_village_number          | int          | 新修订计生村规民约的村数      |
| pending_revision_village_number      | int          | 有待修订计生村规民约的村数    |
| rights_protection_point_number       | int          | 计生维权试点个数              |
| reproduction_birth_scene_number      | int          | 举办生殖优生等培训讲座数      |
| reproduction_birth_number            | int          | 参加生殖优生等培训讲座数人数  |
| receive_help_number                  | int          | 受助对象户数                  |
| relief_fund                          | decimal      | 慰问救助资金                  |
| oneiromancy_number                   | int          | 圆梦微心愿个数                |
| oneiromancy_money                    | decimal      | 圆梦微心愿资金                |
| theme_publicity_scene_number         | int          | 主题宣传场次                  |
| theme_publicity_people_number        | int          | 主题宣传人数                  |
| theme_publicity_issue_number         | int          | 主题宣传资料发放数量          |
| microblog_status                     | tinyint(1)   | 市一级是否有官微(0无 1有)     |
| microblog_number                     | int          | 市一级有官微数                |
| jisheng_peixun_scene_number          | int          | 市县计生协举办培训场次        |
| jisheng_peixun_number                | int          | 市县计生协举办培训人数        |
| teacher_peixun_scene_number          | int          | 青春健康师资培训场次          |
| teacher_peixun_number                | int          | 青春健康师资培训人数          |
| gugan_peixun_scene_number            | int          | 计生特殊家庭帮扶骨干培训场次  |
| gugan_peixun_number                  | int          | 计生特殊家庭帮扶骨干培训人数  |
| created_time                         | datetime     | 创建时间                      |
| updated_time                         | datetime     | 更新时间                      |
| version                              | varchar(255) | 版本号                        |
| status                               | tinyint(1)   | 是否删除                      |

## 组织建设报表 Organization_construction_report_info

| 字段名                                          | 类型         | 备注                   |
| ----------------------------------------------- | ------------ | ---------------------- |
| id                                              | int          | id                     |
| organization_id                                 | int          | 单位id                 |
| summary_type                                    | int          | 汇总性质               |
| administrative_region_number                    | int          | 行政区数量             |
| organization_number                             | int          | 机构数量               |
| dangzu_number                                   | int          | 党组数量               |
| dangzhibu_number                                | int          | 党支部数量             |
| ruxu_number                                     | int          | 入序                   |
| cangong_number                                  | int          | 参公                   |
| sanding_number                                  | int          | 三定                   |
| internal_organization_number                    | int          | 内设机构数量           |
| organization_build_number                       | int          | 机构数量               |
| administrative_establishment_number             | int          | 行政编制               |
| career_establishment_number                     | int          | 事业编制               |
| other_establishment_number                      | int          | 其他编制               |
| people_number                                   | int          | 人数                   |
| organization_build_women_number                 | int          | 机构建设女性人数       |
| organization_build_dangyuan_number              | int          | 机构建设党员人数       |
| tingju_number                                   | int          | 厅局级人数             |
| general_tingju_number                           | int          | 厅局级正厅级人数       |
| director_tingju_number                          | int          | 厅局级副厅级人数       |
| chuji_number                                    | int          | 处级人数               |
| general_chuji_number                            | int          | 处级正厅级人数         |
| director_chuji_number                           | int          | 处级副厅级人数         |
| keji_number                                     | int          | 科级人数               |
| general_keji_number                             | int          | 正科级人数             |
| director_keji_number                            | int          | 副科级人数             |
| under_keyuan_number                             | int          | 科员及以下人数         |
| other_number                                    | int          | 兼职聘用等其他人员数   |
| lishi_number                                    | int          | 理事人数               |
| lishi_women_number                              | int          | 理事女性人数           |
| group_member_number                             | int          | 团体会员人数           |
| personal_member_number                          | int          | 个人会员人数           |
| women_personal_member_number                    | int          | 个体会员中女性人数     |
| volunteer_number                                | int          | 志愿者人数             |
| volunteer_team_number                           | int          | 志愿者队伍人数         |
| activity_member_number                          | int          | 活动阵地、社团会员小组 |
| activity_member_home_number                     | int          | 活动阵地、社团会员之家 |
| activity_cultural_societies_number              | int          | 活动阵地、社团文化社团 |
| other_activity_number                           | int          | 活动阵地、社团其他     |
| independent_financial_budgetary_agencies_number | int          | 独立财务预算机构       |
| created_time                                    | datetime     | 创建时间               |
| updated_time                                    | datetime     | 更新时间               |
| version                                         | varchar(255) | 版本号                 |
| status                                          | tinyint(1)   | 是否删除               |

# 区信息表 district_information

| 字段名       | 类型         | 备注     |
| ------------ | ------------ | -------- |
| id           | int          | id       |
| district_id  | int          | 区id     |
| street_id    | int          | 街道id   |
| created_time | datetime     | 创建时间 |
| updated_time | datetime     | 更新时间 |
| version      | varchar(255) | 版本号   |
| status       | tinyint(1)   | 是否删除 |

