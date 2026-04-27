# 消防安全管理系统 (Fire Safety Management System)

一套功能完整的消防安全管理系统，采用前后端分离架构，实现对消防设备、人员、维保业务的全面管理。

---

## 📁 项目结构

```
├── newbb/
│   ├── FireSafe_admin_frontend-main/    # 前端管理后台 (Vue.js)
│   └── FireSafe_backend/                 # 后端服务 (Node.js + Express)
├── 消防安全前后端.pdf                     # 项目文档
└── 其他批处理脚本
```

---

## 🛠️ 技术栈

### 前端技术

| 技术 | 版本 | 说明 |
|------|------|------|
| Vue.js | 2.6.10 | 渐进式JavaScript框架 |
| Element UI | 2.13.2 | 桌面端UI组件库 |
| Vue Router | 3.0.2 | 官方路由管理器 |
| Vuex | 3.1.0 | 状态管理模式 |
| Axios | 0.18.1 | HTTP请求库 |
| ECharts | 4.2.1+ | 数据可视化图表库 |
| vue-amap | - | 高德地图组件 |
| vue-element-admin | - | 后台管理系统模板 |

### 后端技术

| 技术 | 版本 | 说明 |
|------|------|------|
| Node.js | - | JavaScript运行时 |
| Express | 5.1.0 | Web应用框架 |
| MongoDB | - | NoSQL数据库 |
| Mongoose | 8.14.2 | MongoDB对象模型工具 |
| JWT | 9.0.2 | JSON Web Token认证 |
| bcrypt | 5.1.1 | 密码加密 |
| Agenda | 5.0.0 | 定时任务调度 |
| Multer | 2.0.1 | 文件上传中间件 |
| Node-Cron | 4.2.1 | 定时任务 |
| Log4js | 6.9.1 | 日志框架 |

---

## ✨ 功能模块

### 1. 数字可视化大屏
- 综合数据统计与排名展示
- 人员、业主、项目数量统计
- 打卡记录与维保面积趋势
- 业务状态图表可视化
- 地图点位分布展示

### 2. 服务机构管理
- 机构人员信息管理
- 服务单位关联
- 维保任务分配与跟踪

### 3. 项目管理
- 单位项目管理
- 维保点位管理（点位详情、维保内容）
- 合同管理（新增、续签、审核流程）
- 结款记录与跟踪

### 4. 维保业务管理
| 模块 | 说明 |
|------|------|
| 例行维护 | 周期性维保计划执行 |
| 维保计划 | 系统维保 / 点位维保制定 |
| 维保任务 | 任务派发、执行、签到确认 |

### 5. 故障管理
- 故障工单全流程管理
- 工单状态流转：待处理 → 已接单 → 已分配 → 处理中 → 已解决 → 已评价
- 故障记录与沟通日志
- 附件上传与评价反馈

### 6. 员工管理
- 人员信息维护（姓名、性别、电话）
- 资质证书管理
- 人员调度与任务分配

### 7. 系统管理
- 打卡区域设置与签到管理
- 自建维保项目管理
- 业主单位账号管理

---

## 🚀 快速开始

### 环境要求

- Node.js >= 14.x
- MongoDB >= 4.x
- npm 或 yarn

### 后端启动

```bash
# 进入后端目录
cd newbb/FireSafe_backend

# 安装依赖
npm install

# 配置环境变量
# 创建 .env 文件，配置以下内容：
# PORT=3000
# DB_URI=mongodb://www.scbfxf.cn:27017/firesafe
# JWT_SECRET=your_jwt_secret
# JWT_EXPIRES_IN=7d

# 启动服务
npm start
```

### 前端启动

```bash
# 进入前端目录
cd newbb/FireSafe_admin_frontend-main

# 安装依赖
npm install

# 启动开发服务器
npm run dev

# 或构建生产版本
npm run build
```

### 访问地址

- 前端管理后台：http://localhost:9527
- 后端 API：http://localhost:3000

---

## 📡 API 接口

### 认证模块
| 接口 | 方法 | 说明 |
|------|------|------|
| `/api/auth/login` | POST | 用户登录 |
| `/api/auth/register` | POST | 用户注册 |
| `/api/auth/logout` | POST | 用户登出 |

### 业务模块
| 模块 | 接口前缀 | 说明 |
|------|----------|------|
| 管理员 | `/api/admin` | 管理员操作 |
| 员工 | `/api/staff` | 员工管理 |
| 项目 | `/api/project` | 项目信息 |
| 合同 | `/api/contracts` | 合同管理 |
| 维保计划 | `/api/plan` | 维保计划 |
| 维保任务 | `/api/maintainTask` | 维保任务 |
| 故障工单 | `/api/faultworkorder` | 故障工单 |
| 故障记录 | `/api/faultRecord` | 故障记录 |
| 客户 | `/api/customer` | 客户管理 |
| 付款 | `/api/payment` | 付款管理 |
| 签到区域 | `/api/checkin-regions` | 打卡区域 |
| 数字大屏 | `/api/digital-screen` | 大屏数据 |
| 文件上传 | `/api/upload_img` | 图片上传 |

### 移动端
| 接口 | 方法 | 说明 |
|------|------|------|
| `/api/mobile/*` | - | 移动端专用接口 |

---

## 📊 数据库模型

```
主要数据集合：
├── User              # 系统用户
├── Staff             # 维保人员
├── Project           # 维保项目
├── Contract          # 合同
├── Organization      # 组织机构
├── FaultOrder        # 故障工单
├── FaultRecord       # 故障记录
├── MaintenancePlan   # 维保计划
├── MaintainTask      # 维保任务
├── MaintainPoint     # 维保点位
├── CheckinRegion     # 签到区域
├── Customer          # 客户/业主
├── OwnerCompany      # 业主单位
├── Building          # 建筑信息
├── DigitalScreen     # 数字大屏数据
└── Payment           # 付款记录
```

---

## 🔐 安全特性

- JWT Token 身份认证
- bcrypt 密码加密存储
- Helmet 安全响应头
- CORS 跨域配置
- Express Validator 输入验证
- 日志审计追踪

---

## 📝 项目文档

- `消防安全前后端.pdf` - 完整项目文档

---

## 👥 项目成员

- 开发团队

---

## 📄 许可证

MIT License

---

## 🔗 相关链接

- Vue.js 官网：https://vuejs.org
- Element UI 官网：https://element.eleme.cn
- Express 官网：https://expressjs.com
- MongoDB 官网：https://www.mongodb.com
