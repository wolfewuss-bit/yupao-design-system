# 鱼泡直聘 · DESIGN.md

> 鱼泡直聘设计系统完整规范文档，面向设计师、开发者与 AI Agent。
> 包含亮色（鱼泡直聘）与暗夜（鱼泡暗夜）两套主题的全量设计 Token。
>
> 参考：[有赞 Zan Design 命名策略](https://design.youzan.com/strategy/naming-strategy.html) · [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)

---

## 目录

1. [视觉主题与设计理念](#1-视觉主题与设计理念)
2. [颜色体系 Color System](#2-颜色体系-color-system)
3. [字体排版 Typography](#3-字体排版-typography)
4. [间距系统 Spacing](#4-间距系统-spacing)
5. [圆角系统 Border Radius](#5-圆角系统-border-radius)
6. [描边与分割线 Stroke & Divider](#6-描边与分割线-stroke--divider)
7. [阴影与层级 Elevation & Shadow](#7-阴影与层级-elevation--shadow)
8. [透明度 Opacity](#8-透明度-opacity)
9. [图标规范 Iconography](#9-图标规范-iconography)
10. [动效规范 Motion & Animation](#10-动效规范-motion--animation)
11. [组件规范 Component Styling](#11-组件规范-component-styling)
12. [布局原则 Layout Principles](#12-布局原则-layout-principles)
13. [无障碍规范 Accessibility](#13-无障碍规范-accessibility)
14. [命名策略 Naming Strategy](#14-命名策略-naming-strategy)
15. [Do's and Don'ts 设计准则](#15-dos-and-donts-设计准则)
16. [响应式与适配 Responsive Behavior](#16-响应式与适配-responsive-behavior)
17. [字符串常量 String Tokens](#17-字符串常量-string-tokens)
18. [主题对比摘要 Theme Summary](#18-主题对比摘要-theme-summary)
19. [变更日志 Changelog](#19-变更日志-changelog)
20. [Agent 快速参考 Agent Prompt Guide](#20-agent-快速参考-agent-prompt-guide)

---

## 1. 视觉主题与设计理念

### 品牌定位

鱼泡直聘是一款蓝领招聘平台，服务于求职者（找工作）和招聘者（找牛人）两大角色。设计语言需要传达：

- **可信赖**：蓝色主色调传递专业、稳定的品牌形象
- **高效率**：简洁直白的界面，减少认知负担，让用户快速完成核心操作
- **亲和力**：圆润的视觉元素、温暖的品牌黄色点缀，降低使用门槛

### 设计氛围

| 维度 | 描述 |
|---|---|
| 整体风格 | 现代、简洁、功能导向的移动端 UI |
| 信息密度 | 中等偏高 — 列表卡片为主，信息层级清晰 |
| 视觉节奏 | 大面积留白 + 紧凑的内容区域，呼吸感与效率并重 |
| 品牌调性 | 蓝色科技感 + 黄色活力点缀，专业而不冰冷 |
| 暗夜模式 | 深色背景降低视觉疲劳，色彩饱和度微调以适配深色环境 |

### 设计原则

1. **一致性** — 相同功能使用相同的视觉表达，跨页面保持统一
2. **层级清晰** — 通过颜色、字号、间距建立明确的信息层级
3. **可访问性** — 文字与背景对比度满足 WCAG AA 标准（≥ 4.5:1）
4. **双主题适配** — 所有设计决策同时考虑亮色与暗夜模式

---

## 2. 颜色体系 Color System

### Token 命名规则

采用三层 Token 架构（参考 [Specify 命名策略](https://specifyapp.com/blog/crafting-consistency-a-thoughtful-approach-for-naming-design-tokens)）：

```
Core（基础层）    → 描述颜色本身        → blue-500, red-base
Semantic（语义层） → 描述用途            → color/primary, color/danger
Component（组件层）→ 描述组件中的角色     → button/primary/background
```

本规范以语义层为主，核心 Token 命名格式：

```
{类别}/{用途}/{状态}
示例：color/primary/default, color/text/secondary, color/bg/surface
```

### 2.1 主色系 Primary

| Token 名称 | 语义 Token | 亮色 HEX | 暗夜 HEX | 用途 |
|---|---|---|---|---|
| 主色 | `color/primary/default` | `#0092FF` | `#149AFF` | 主按钮、链接、选中态 |
| 主色浅 | `color/primary/light` | `#E0F3FF` | `#1D2A3F` | 主色背景、选中底色 |
| 主色禁用 | `color/primary/disabled` | `#99D3FF` | `#2B394F` | 按钮禁用态 |

### 2.2 品牌色 Brand

| Token 名称 | 语义 Token | HEX | 说明 |
|---|---|---|---|
| 品牌色蓝 | `color/brand/blue` | `#1A83FF` | 品牌标识蓝，两套主题一致 |
| 品牌色黄 | `color/brand/yellow` | `#FECF05` | 品牌标识黄，两套主题一致 |

### 2.3 背景色 Background

| Token 名称 | 语义 Token | 亮色 HEX | 暗夜 HEX | 用途 |
|---|---|---|---|---|
| 背景-白色 | `color/bg/primary` | `#FFFFFF` | `#1D1D1F` | 页面主背景、卡片背景 |
| 背景-浅灰 | `color/bg/secondary` | `#F5F6FA` | `#131314` | 页面次级背景、分区底色 |
| 标签输入框背景色 | `color/bg/input` | `#F5F7FC` | `#2E2E31` | 输入框、搜索框底色 |

### 2.4 语义色 Semantic

| Token 名称 | 语义 Token | 亮色 HEX | 暗夜 HEX | 用途 |
|---|---|---|---|---|
| 红 | `color/danger/default` | `#E8362E` | `#FF5F5F` | 错误提示、删除操作、必填标记 |
| 红浅 | `color/danger/light` | `#FFEBEC` | `#3F2727` | 错误背景、危险提示底色 |
| 绿 | `color/success/default` | `#06B578` | `#44B138` | 成功状态、在线标记、正向操作 |
| 绿浅 | `color/success/light` | `#DFF2EC` | `#1E2C1C` | 成功背景、正向提示底色 |
| 橙 | `color/warning/default` | `#FF8904` | `#EB8F26` | 警告提示、待处理状态 |
| 橙浅 | `color/warning/light` | `#FFEFDE` | `#422B10` | 警告背景 |
| 青 | `color/info/default` | `#00CBFF` | `#43B3DE` | 信息提示、辅助标记 |
| 青浅 | `color/info/light` | `#C4EDF7` | `#11303C` | 信息背景 |

### 2.5 分割线 Divider

| Token 名称 | 语义 Token | 亮色 HEX | 暗夜 HEX |
|---|---|---|---|
| 分割线 | `color/border/divider` | `#E9EDF3` | `#303033` |

### 2.6 文字色 Text（黑色透明系列）

> 亮色模式基于黑色不透明度，暗夜模式反转为白色不透明度。

| Token 名称 | 语义 Token | 亮色值 | 暗夜值 | 用途 |
|---|---|---|---|---|
| 黑85 | `color/text/primary` | `rgba(0,0,0,0.85)` | `rgba(255,255,255,0.85)` | 标题、主文字 |
| 黑65 | `color/text/secondary` | `rgba(0,0,0,0.65)` | `rgba(255,255,255,0.65)` | 副标题、次级文字 |
| 黑45 | `color/text/tertiary` | `rgba(0,0,0,0.45)` | `rgba(255,255,255,0.45)` | 占位符、辅助说明 |
| 占位文字 | `color/text/placeholder` | `rgba(0,0,0,0.45)` | `rgba(255,255,255,0.45)` | 输入框占位文字 |
| 黑25 | `color/text/disabled` | `rgba(0,0,0,0.25)` | `rgba(255,255,255,0.25)` | 禁用态文字 |

### 2.7 叠加层色 Overlay（白色透明系列）

> 亮色模式为白色透明，暗夜模式反转为黑色透明。

| Token 名称 | 语义 Token | 亮色值 | 暗夜值 | 用途 |
|---|---|---|---|---|
| 白100 | `color/overlay/full` | `rgba(255,255,255,1.0)` | `rgba(255,255,255,1.0)` | 纯白 |
| 白85 | `color/overlay/heavy` | `rgba(255,255,255,0.85)` | `rgba(0,0,0,0.85)` | 强遮罩 |
| 白65 | `color/overlay/medium` | `rgba(255,255,255,0.65)` | `rgba(0,0,0,0.65)` | 中等遮罩 |
| 白45 | `color/overlay/light` | `rgba(255,255,255,0.45)` | `rgba(0,0,0,0.45)` | 轻遮罩 |
| 白25 | `color/overlay/subtle` | `rgba(255,255,255,0.25)` | `rgba(0,0,0,0.25)` | 极轻遮罩 |
| 白转灰 | `color/overlay/surface` | `#FFFFFF` | `#2E2E31` | 亮色白色 → 暗夜深灰 |

### 2.8 蒙层 / Toast

| Token 名称 | 语义 Token | 亮色值 | 暗夜值 | 说明 |
|---|---|---|---|---|
| 弹窗蒙层&Toast背景 | `color/overlay/mask` | `rgba(0,0,0,0.70)` | `rgba(0,0,0,0.80)` | 暗夜蒙层更深以增强层级感 |

---

## 3. 字体排版 Typography

### 3.1 字体家族

| 用途 | 字体 | 回退字体 |
|---|---|---|
| 中文正文 | PingFang SC | Hiragino Sans GB, Microsoft YaHei, sans-serif |
| 英文/数字 | SF Pro Text | Helvetica Neue, Arial, sans-serif |
| 数字展示 | DIN Alternate | SF Pro Display, Helvetica Neue |

### 3.2 字号层级

> 两套主题字号规格完全一致。基于 4px 模块制，字号从 10px 到 27px 覆盖全场景。

| Token 名称 | 语义 Token | 值 | 行高 | 字重 | 典型用途 |
|---|---|---|---|---|---|
| 字号10 | `font/size/xs` | `10px` | `14px` | Regular 400 | 极小标注、角标 |
| 字号11 | `font/size/xs-plus` | `11px` | `16px` | Regular 400 | 辅助信息 |
| 字号12 | `font/size/sm` | `12px` | `18px` | Regular 400 | 说明文字、标签、时间戳 |
| 字号13 | `font/size/sm-plus` | `13px` | `20px` | Regular 400 | 次要正文 |
| 字号14 | `font/size/base` | `14px` | `22px` | Regular 400 | 正文（最常用） |
| 字号15 | `font/size/base-plus` | `15px` | `22px` | Regular 400 | 正文（稍大） |
| 字号16 | `font/size/md` | `16px` | `24px` | Medium 500 | 副标题、按钮文字 |
| 字号17 | `font/size/lg` | `17px` | `26px` | Medium 500 | 标题 |
| 字号19 | `font/size/xl` | `19px` | `28px` | Semibold 600 | 大标题 |
| 字号21 | `font/size/2xl` | `21px` | `30px` | Semibold 600 | 页面主标题 |
| 字号23 | `font/size/3xl` | `23px` | `32px` | Bold 700 | 突出数字、展示型标题 |
| 字号25 | `font/size/4xl` | `25px` | `36px` | Bold 700 | 大展示数字 |
| 字号27 | `font/size/5xl` | `27px` | `38px` | Bold 700 | 超大展示数字 |

### 3.3 字重规范

| Token 名称 | 值 | 用途 |
|---|---|---|
| `font/weight/regular` | 400 | 正文、说明文字 |
| `font/weight/medium` | 500 | 副标题、按钮、强调文字 |
| `font/weight/semibold` | 600 | 标题、重要数据 |
| `font/weight/bold` | 700 | 展示型数字、核心数据 |

### 3.4 排版规则

- 行高 = 字号 + 8px（基础规则，大字号可适当调整）
- 段落间距 = 行高的 0.5 倍
- 中英文混排时，英文/数字两侧不需手动加空格（由系统字体自动处理）
- 长文本最大宽度不超过 40 个中文字符（约 80 个英文字符）

---

## 4. 间距系统 Spacing

> 两套主题间距规格完全一致，基于 4px 模块制（Base Unit = 4px）。

| Token 名称 | 语义 Token | 值 | 倍数 | 典型场景 |
|---|---|---|---|---|
| 间距0 | `spacing/none` | `0px` | 0× | 无间距 |
| 间距2 | `spacing/2xs` | `2px` | 0.5× | 极小间距（紧凑布局、图标与文字微调） |
| 间距4 | `spacing/xs` | `4px` | 1× | 基础单元（图标间距、标签内边距） |
| 间距6 | `spacing/xs-plus` | `6px` | 1.5× | 小元素间距 |
| 间距8 | `spacing/sm` | `8px` | 2× | 小间距（列表项内部、按钮内边距） |
| 间距12 | `spacing/md` | `12px` | 3× | 中间距（卡片内边距、表单项间距） |
| 间距16 | `spacing/lg` | `16px` | 4× | 大间距（页面水平内边距、区块间距） |
| 间距20 | `spacing/xl` | `20px` | 5× | 加大间距（模块间距） |
| 间距24 | `spacing/2xl` | `24px` | 6× | 超大间距（大区块间距） |
| 间距32 | `spacing/3xl` | `32px` | 8× | 最大间距（页面顶部间距、大模块分隔） |

### 间距使用指南

| 场景 | 推荐 Token | 值 |
|---|---|---|
| 页面水平内边距 | `spacing/lg` | 16px |
| 卡片内边距 | `spacing/md` | 12px |
| 列表项垂直间距 | `spacing/sm` | 8px |
| 按钮内边距（水平） | `spacing/md` | 12px |
| 按钮内边距（垂直） | `spacing/sm` | 8px |
| 图标与文字间距 | `spacing/xs` | 4px |
| 模块之间间距 | `spacing/xl` ~ `spacing/2xl` | 20~24px |
| 底部安全区域 | `spacing/3xl` | 32px |

---

## 5. 圆角系统 Border Radius

> 两套主题圆角规格完全一致。

| Token 名称 | 语义 Token | 值 | 典型场景 |
|---|---|---|---|
| 圆角4 | `radius/xs` | `4px` | 小标签、角标、Badge |
| 图标圆角 | `radius/icon` | `5px` | App 图标 |
| 圆角6 | `radius/sm` | `6px` | 小卡片、输入框内元素 |
| 圆角8 | `radius/md` | `8px` | 常规卡片、按钮、输入框 |
| 圆角12 | `radius/lg` | `12px` | 中等卡片、图片容器 |
| 圆角16 | `radius/xl` | `16px` | 大卡片、弹窗 |
| 圆角20 | `radius/2xl` | `20px` | 底部弹出层（Bottom Sheet） |
| 圆角24 | `radius/3xl` | `24px` | 超大圆角容器 |
| 椭圆圆角 | `radius/full` | `999px` | 完全椭圆 / 胶囊形按钮 / 头像 |

---

## 6. 描边与分割线 Stroke & Divider

> 两套主题描边规格完全一致。

| Token 名称 | 语义 Token | 值 | 说明 |
|---|---|---|---|
| 分割线粗细 | `stroke/divider` | `0.5px` | 列表分割线（物理像素 1px，避免模糊） |
| 描边粗细 | `stroke/border` | `1px` | 通用描边、边框、输入框边框 |

### 分割线使用规则

- 列表分割线使用 `0.5px`，颜色为 `color/border/divider`
- 分割线左侧缩进与内容对齐（通常缩进 16px）
- 最后一项不显示分割线
- 区块分隔使用 `8px` 高度的背景色区域，而非分割线

---

## 7. 阴影与层级 Elevation & Shadow

> 移动端阴影体系，用于建立视觉层级。

| Token 名称 | 语义 Token | 值 | 用途 |
|---|---|---|---|
| 阴影-无 | `shadow/none` | `none` | 默认状态 |
| 阴影-低 | `shadow/sm` | `0 1px 4px rgba(0,0,0,0.08)` | 卡片默认阴影 |
| 阴影-中 | `shadow/md` | `0 4px 12px rgba(0,0,0,0.12)` | 浮层、下拉菜单 |
| 阴影-高 | `shadow/lg` | `0 8px 24px rgba(0,0,0,0.16)` | 弹窗、Modal |
| 阴影-顶部 | `shadow/top` | `0 -2px 8px rgba(0,0,0,0.06)` | 底部导航栏上方阴影 |

### 层级规范

| 层级 | Z-Index | 元素 |
|---|---|---|
| 基础层 | 0 | 页面内容 |
| 卡片层 | 1 | 卡片、列表项 |
| 导航层 | 10 | 顶部导航栏、底部 Tab 栏 |
| 浮层 | 100 | 下拉菜单、Tooltip、Popover |
| 弹窗层 | 1000 | Modal、Dialog、Bottom Sheet |
| 蒙层 | 999 | 弹窗蒙层（位于弹窗下方） |
| Toast 层 | 2000 | Toast 提示、全局通知 |

---

## 8. 透明度 Opacity

| Token 名称 | 语义 Token | 亮色值 | 暗夜值 | 说明 |
|---|---|---|---|---|
| 位图透明度 | `opacity/image` | `100%` | `90%` | 暗夜模式图片略降透明度以融合背景 |
| 禁用透明度 | `opacity/disabled` | `40%` | `40%` | 禁用态元素整体透明度 |
| 按压透明度 | `opacity/pressed` | `70%` | `70%` | 按钮/列表项按压态 |

---

## 9. 图标规范 Iconography

### 9.1 图标尺寸

| Token 名称 | 语义 Token | 值 | 典型场景 |
|---|---|---|---|
| 图标-极小 | `icon/size/xs` | `12px` | 角标内图标、状态指示器 |
| 图标-小 | `icon/size/sm` | `16px` | 行内图标、辅助操作 |
| 图标-标准 | `icon/size/md` | `24px` | 导航图标、列表项图标、工具栏 |
| 图标-大 | `icon/size/lg` | `32px` | 功能入口、空状态图标 |
| 图标-超大 | `icon/size/xl` | `48px` | 空状态主图标、引导页图标 |

### 9.2 图标样式规范

| 属性 | 规范 |
|---|---|
| 风格 | 线性图标（Outlined），描边粗细 1.5px |
| 视觉区域 | 图标绘制在 80% 的画布区域内，四周留 10% 安全边距 |
| 圆角 | 图标内部圆角与系统圆角保持一致（小元素 2px，大元素 4px） |
| 颜色 | 默认使用 `color/text/secondary`，选中态使用 `color/primary/default` |
| 触控区域 | 图标触控区域 ≥ 44px × 44px，即使视觉尺寸较小 |

### 9.3 图标颜色状态

| 状态 | 颜色 Token | 说明 |
|---|---|---|
| 默认 | `color/text/secondary` | 未选中、常规状态 |
| 选中/激活 | `color/primary/default` | Tab 选中、功能激活 |
| 禁用 | `color/text/disabled` | 不可操作状态 |
| 危险 | `color/danger/default` | 删除、警告操作 |
| 纯白 | `#FFFFFF` | 深色背景上的图标 |

---

## 10. 动效规范 Motion & Animation

### 10.1 动效原则

- **有意义**：动效服务于功能，帮助用户理解界面变化，而非纯装饰
- **快速响应**：操作反馈应即时，避免用户等待感
- **自然流畅**：遵循物理运动规律，使用缓动曲线而非线性动画
- **一致性**：相同类型的交互使用相同的动效参数

### 10.2 时长 Duration

| Token 名称 | 语义 Token | 值 | 用途 |
|---|---|---|---|
| 即时 | `motion/duration/instant` | `100ms` | 按钮按压反馈、开关切换 |
| 快速 | `motion/duration/fast` | `200ms` | 颜色变化、透明度变化、小元素出现/消失 |
| 标准 | `motion/duration/normal` | `300ms` | 页面转场、弹窗出现、卡片展开 |
| 缓慢 | `motion/duration/slow` | `500ms` | 复杂动画、大面积布局变化 |

### 10.3 缓动曲线 Easing

| Token 名称 | 语义 Token | 值 | 用途 |
|---|---|---|---|
| 标准 | `motion/easing/standard` | `cubic-bezier(0.4, 0.0, 0.2, 1.0)` | 通用动效（Material Design 标准） |
| 减速 | `motion/easing/decelerate` | `cubic-bezier(0.0, 0.0, 0.2, 1.0)` | 元素进入画面 |
| 加速 | `motion/easing/accelerate` | `cubic-bezier(0.4, 0.0, 1.0, 1.0)` | 元素离开画面 |
| 弹性 | `motion/easing/spring` | `cubic-bezier(0.175, 0.885, 0.32, 1.275)` | 弹窗、Toast 弹出 |

### 10.4 常见动效场景

| 场景 | 时长 | 缓动 | 说明 |
|---|---|---|---|
| 页面推入（Push） | 300ms | standard | 从右向左推入新页面 |
| 页面返回（Pop） | 300ms | standard | 从左向右退出当前页面 |
| 弹窗出现 | 300ms | decelerate | 从底部滑入 + 蒙层渐显 |
| 弹窗关闭 | 200ms | accelerate | 向底部滑出 + 蒙层渐隐 |
| Toast 出现 | 200ms | spring | 从顶部/中部弹入 |
| Toast 消失 | 150ms | accelerate | 渐隐消失 |
| 下拉刷新 | 300ms | decelerate | 列表回弹 |
| 列表项删除 | 200ms | standard | 高度收缩 + 渐隐 |
| Tab 切换 | 200ms | standard | 下划线滑动 + 内容渐变 |
| 按钮按压 | 100ms | standard | 缩放至 0.95 + 透明度降至 70% |

---

## 11. 组件规范 Component Styling

### 11.1 按钮 Button

| 类型 | 背景色 | 文字色 | 圆角 | 高度 | 字号 |
|---|---|---|---|---|---|
| 主按钮 | `color/primary/default` | `#FFFFFF` | `radius/md` (8px) | 44px | 16px Medium |
| 主按钮-禁用 | `color/primary/disabled` | `rgba(255,255,255,0.65)` | `radius/md` | 44px | 16px Medium |
| 次按钮 | 透明 + 1px 描边 `color/primary/default` | `color/primary/default` | `radius/md` | 44px | 16px Medium |
| 文字按钮 | 透明 | `color/primary/default` | — | auto | 14px Regular |
| 危险按钮 | `color/danger/default` | `#FFFFFF` | `radius/md` | 44px | 16px Medium |
| 胶囊按钮 | `color/primary/default` | `#FFFFFF` | `radius/full` (999px) | 32px | 14px Medium |

**交互状态：**
- Hover（仅 Web）：背景色加深 10%
- Pressed：整体透明度降至 70%（`opacity/pressed`）
- Disabled：使用禁用色 + 禁用透明度
- Loading：显示居中 Spinner，文字隐藏

### 11.2 输入框 Input

| 属性 | 值 |
|---|---|
| 背景色 | `color/bg/input` |
| 边框 | 无边框（默认）/ 1px `color/primary/default`（聚焦态） |
| 圆角 | `radius/md` (8px) |
| 高度 | 44px |
| 内边距 | 12px 水平 |
| 字号 | 14px Regular |
| 占位文字色 | `color/text/placeholder` |
| 错误态 | 边框变为 `color/danger/default`，底部显示错误提示 |

### 11.3 卡片 Card

| 属性 | 值 |
|---|---|
| 背景色 | `color/bg/primary` |
| 圆角 | `radius/lg` (12px) |
| 内边距 | `spacing/md` (12px) |
| 阴影 | `shadow/sm` |
| 间距（卡片之间） | `spacing/sm` (8px) |

### 11.4 导航栏 Navigation

**顶部导航栏：**

| 属性 | 值 |
|---|---|
| 高度 | 44px（不含状态栏） |
| 背景色 | `color/bg/primary` |
| 标题字号 | 17px Medium |
| 标题颜色 | `color/text/primary` |

**底部 Tab 栏：**

| 属性 | 值 |
|---|---|
| 高度 | 49px（不含安全区域） |
| 背景色 | `color/bg/primary` |
| 图标大小 | 24px × 24px |
| 标签字号 | 10px Regular |
| 选中色 | `color/primary/default` |
| 未选中色 | `color/text/tertiary` |
| 顶部阴影 | `shadow/top` |

### 11.5 列表项 List Item

| 属性 | 值 |
|---|---|
| 最小高度 | 48px |
| 内边距 | 16px 水平，12px 垂直 |
| 分割线 | `stroke/divider` (0.5px)，颜色 `color/border/divider` |
| 按压态 | 背景色变为 `color/bg/secondary` |

### 11.6 标签 Tag / Badge

| 类型 | 背景色 | 文字色 | 圆角 | 字号 |
|---|---|---|---|---|
| 默认标签 | `color/primary/light` | `color/primary/default` | `radius/xs` (4px) | 12px |
| 成功标签 | `color/success/light` | `color/success/default` | `radius/xs` | 12px |
| 警告标签 | `color/warning/light` | `color/warning/default` | `radius/xs` | 12px |
| 危险标签 | `color/danger/light` | `color/danger/default` | `radius/xs` | 12px |
| 红点 Badge | `color/danger/default` | `#FFFFFF` | `radius/full` | 10px |

### 11.7 Toast / Snackbar

| 属性 | 值 |
|---|---|
| 背景色 | `color/overlay/mask` |
| 文字色 | `#FFFFFF` |
| 圆角 | `radius/md` (8px) |
| 字号 | 14px Regular |
| 最大宽度 | 屏幕宽度 - 64px |
| 显示时长 | 2 秒（默认）/ 3.5 秒（长文本） |

---

## 12. 布局原则 Layout Principles

### 12.1 栅格系统

| 属性 | 值 |
|---|---|
| 页面宽度 | 设备宽度（100%） |
| 水平内边距 | 16px（左右各 16px） |
| 栅格列数 | 不固定（移动端以弹性布局为主） |
| 最小触控区域 | 44px × 44px |

### 12.2 间距哲学

- **4px 模块制**：所有间距值为 4 的倍数（特殊场景允许 2px 和 6px）
- **由内到外递增**：元素内部间距 < 元素间距 < 模块间距 < 区块间距
- **一致性优先**：相同层级的元素使用相同间距

### 12.3 布局模式

| 模式 | 说明 | 典型场景 |
|---|---|---|
| 列表布局 | 垂直排列，等宽卡片 | 职位列表、消息列表 |
| 网格布局 | 2 列等宽网格，间距 8px | 推荐职位、分类入口 |
| 瀑布流 | 不等高卡片，2 列 | 动态内容流 |
| 固定 + 滚动 | 顶部/底部固定，中间滚动 | 大部分页面结构 |

---

## 13. 无障碍规范 Accessibility

### 13.1 色彩对比度

| 场景 | 最低对比度 | 标准 | 说明 |
|---|---|---|---|
| 正文文字 vs 背景 | 4.5:1 | WCAG AA | 14px 及以下正文 |
| 大文字 vs 背景 | 3:1 | WCAG AA | 18px 及以上，或 14px Bold |
| 图标/控件 vs 背景 | 3:1 | WCAG AA | 非装饰性图标、表单控件边框 |
| 占位文字 vs 背景 | 3:1 | 建议 | 输入框占位符（非强制但建议） |

### 13.2 对比度验证（核心色对）

| 前景 | 背景 | 亮色对比度 | 暗夜对比度 | 是否达标 |
|---|---|---|---|---|
| `color/text/primary` | `color/bg/primary` | 约 13.9:1 | 约 13.9:1 | ✅ AA |
| `color/text/secondary` | `color/bg/primary` | 约 7.5:1 | 约 7.5:1 | ✅ AA |
| `color/text/tertiary` | `color/bg/primary` | 约 4.6:1 | 约 4.6:1 | ✅ AA |
| `color/primary/default` | `color/bg/primary` | 约 3.9:1 | 约 3.7:1 | ⚠️ 大文字 AA |
| `#FFFFFF` | `color/primary/default` | 约 3.9:1 | 约 3.7:1 | ⚠️ 大文字 AA |

> 主色蓝在白色背景上对比度略低于 4.5:1，用于按钮文字（白底蓝字）时建议字号 ≥ 16px Medium。

### 13.3 触控与交互

| 规范 | 值 | 说明 |
|---|---|---|
| 最小触控目标 | 44px × 44px | 符合 WCAG 2.5.5 Target Size |
| 触控目标间距 | ≥ 8px | 防止误触 |
| 焦点指示器 | 2px 描边 `color/primary/default` | 键盘导航时的焦点环 |
| 焦点偏移 | 2px offset | 焦点环与元素间距 |

### 13.4 语义化与辅助技术

- 所有图片和图标需提供 `contentDescription`（Android）/ `accessibilityLabel`（iOS）
- 装饰性图标设置 `importantForAccessibility="no"`
- 表单控件必须关联标签（`labelFor` / `accessibilityLabel`）
- 状态变化需通过 `announceForAccessibility` 通知屏幕阅读器
- 颜色不作为传达信息的唯一手段（如错误状态同时使用红色 + 图标 + 文字）

### 13.5 动效无障碍

- 尊重系统「减少动态效果」设置（`prefers-reduced-motion`）
- 开启减少动效时：转场改为即时切换，取消弹性动画
- 自动播放动画需提供暂停/停止控制
- 闪烁频率不超过 3 次/秒

---

## 14. 命名策略 Naming Strategy

> 参考 [有赞 Zan Design 命名策略](https://design.youzan.com/strategy/naming-strategy.html)

### 14.1 核心原则

| 原则 | 说明 | ✅ 正确示范 | ❌ 错误示范 |
|---|---|---|---|
| 用词专业严谨 | 符合行业标准，不生造词汇 | 简历投递 | 简历发射 |
| 直白描述为主 | 简单直白描述功能，减少认知成本 | 职位推荐 | 智能匹配引擎 |
| 适时概念包装 | 品牌宣传场景可适当包装 | 鱼泡直聘 | 蓝领招聘平台 |
| 考虑长远定位 | 命名需有沿用性和扩展性 | 求职服务 | 找工作 |
| 避免歧义 | 避免负面联想、谐音误读 | 薪资待遇 | 工资条件 |

### 14.2 Token 命名规范

```
格式：{类别}/{子类别}/{属性}
分隔符：/ (斜杠)
大小写：全小写，多词用连字符 (kebab-case)
语言：英文命名，中文注释

示例：
  color/primary/default     → 主色
  color/text/primary        → 主文字色
  spacing/lg                → 大间距 16px
  radius/md                 → 中圆角 8px
  font/size/base            → 基础字号 14px
  shadow/sm                 → 小阴影
```

### 14.3 组件命名规范

```
格式：{组件名}/{变体}/{状态}
示例：
  button/primary/default
  button/primary/pressed
  button/primary/disabled
  input/default/focus
  card/job/default
  tag/success/default
```

---

## 15. Do's and Don'ts 设计准则

### ✅ Do's

- 使用 Token 定义的颜色，不使用硬编码色值
- 间距使用 4px 模块制，保持节奏一致
- 文字层级不超过 3 级（主文字 → 次级文字 → 辅助文字）
- 按钮高度统一为 44px（主按钮）或 32px（小按钮）
- 图标使用 24px 标准尺寸，小图标 16px，大图标 32px
- 列表项最小高度 48px，确保触控友好
- 暗夜模式下降低图片透明度至 90%
- 使用语义化 Token 名称（`color/danger/default` 而非 `#E8362E`）
- 动效时长使用 Token 定义的标准值（100/200/300/500ms）
- 所有交互元素提供无障碍标签
- 颜色传达信息时同时使用图标或文字辅助
- 尊重系统「减少动态效果」偏好设置

### ❌ Don'ts

- 不要在同一页面使用超过 3 种字重
- 不要使用纯黑 `#000000` 作为文字色（使用透明度方案）
- 不要在暗夜模式下使用亮色模式的色值
- 不要让可点击区域小于 44px × 44px
- 不要在卡片内嵌套卡片（最多一层卡片）
- 不要使用超过 2 层阴影叠加
- 不要在移动端使用 hover 态作为唯一交互反馈
- 不要混用中文和英文 Token 命名
- 不要使用线性缓动（linear）作为 UI 动效曲线
- 不要让动画时长超过 500ms（用户会感到迟钝）
- 不要仅依赖颜色区分状态（需同时使用图标/文字）
- 不要在未验证对比度的情况下使用自定义颜色组合

---

## 16. 响应式与适配 Responsive Behavior

### 16.1 屏幕适配

| 设备类型 | 宽度范围 | 适配策略 |
|---|---|---|
| 小屏手机 | < 375px | 最小宽度兜底，水平滚动 |
| 标准手机 | 375px ~ 414px | 基准设计尺寸（375px） |
| 大屏手机 | 414px ~ 428px | 弹性拉伸，内容区域加宽 |
| 折叠屏/平板 | > 428px | 双列布局，内容区域最大宽度限制 |

### 16.2 安全区域

| 区域 | 说明 |
|---|---|
| 顶部安全区 | 状态栏高度（iOS: 44px / 47px，Android: 24px~） |
| 底部安全区 | Home Indicator 高度（iOS: 34px，Android: 视设备而定） |
| 刘海/挖孔 | 内容不可被遮挡，导航栏需适配 |

### 16.3 触控规范

- 最小触控目标：44px × 44px
- 触控目标间距：≥ 8px
- 滑动手势区域：从屏幕边缘 20px 内触发
- 长按触发时间：500ms

---

## 17. 字符串常量 String Tokens

> 用于原型演示中的数据填充，两套主题内容一致。

| Token 名称 | 语义 Token | 示例值 | 说明 |
|---|---|---|---|
| 项目名称 | `string/app-name` | `鱼泡直聘` | 应用名称 |
| 电话号码 | `string/phone` | `15888888888` | 完整电话 |
| 电话号码-隐藏 | `string/phone-masked` | `158****8888` | 脱敏展示 |
| 日期-点分隔 | `string/date-dot` | `2025.01.01` | 点号分隔格式 |
| 日期-单位分隔 | `string/date-cn` | `2025年1月1日` | 中文单位格式 |
| 时间-冒号分隔 | `string/time-colon` | `12:59:01` | 冒号分隔格式 |
| 时间-单位分隔 | `string/time-cn` | `12时59分1秒` | 中文单位格式 |

---

## 18. 主题对比摘要 Theme Summary

| 维度 | 鱼泡直聘（亮色） | 鱼泡暗夜（暗色） |
|---|---|---|
| 主背景 | `#FFFFFF` | `#1D1D1F` |
| 次级背景 | `#F5F6FA` | `#131314` |
| 主色 | `#0092FF` | `#149AFF` |
| 主文字 | `rgba(0,0,0,0.85)` | `rgba(255,255,255,0.85)` |
| 次级文字 | `rgba(0,0,0,0.65)` | `rgba(255,255,255,0.65)` |
| 辅助文字 | `rgba(0,0,0,0.45)` | `rgba(255,255,255,0.45)` |
| 禁用文字 | `rgba(0,0,0,0.25)` | `rgba(255,255,255,0.25)` |
| 分割线 | `#E9EDF3` | `#303033` |
| 蒙层透明度 | `70%` | `80%` |
| 位图透明度 | `100%` | `90%` |
| 圆角 / 间距 / 字号 | 两套主题完全一致 | ← |

---

## 19. 变更日志 Changelog

| 版本 | 日期 | 变更内容 |
|---|---|---|
| v1.0.0 | 2026-03-19 | 初始版本，从 Figma Token JSON 导出基础 Token 表 |
| v2.0.0 | 2026-04-13 | 重构为 DESIGN.md 格式；新增视觉理念、组件规范、布局原则、命名策略、Agent 指南 |
| v2.1.0 | 2026-04-13 | 新增图标规范、动效规范、无障碍规范；补充行高/字重映射；完善组件交互状态 |

> Token 变更需同步更新 Figma 变量库与本文档。重命名或删除 Token 属于 Breaking Change，需通知所有下游消费方。

---

## 20. Agent 快速参考 Agent Prompt Guide

### 颜色速查

```
主色蓝:     亮 #0092FF / 暗 #149AFF
品牌蓝:     #1A83FF（通用）
品牌黄:     #FECF05（通用）
白色背景:   亮 #FFFFFF / 暗 #1D1D1F
灰色背景:   亮 #F5F6FA / 暗 #131314
输入框背景: 亮 #F5F7FC / 暗 #2E2E31
红色错误:   亮 #E8362E / 暗 #FF5F5F
绿色成功:   亮 #06B578 / 暗 #44B138
橙色警告:   亮 #FF8904 / 暗 #EB8F26
青色信息:   亮 #00CBFF / 暗 #43B3DE
分割线:     亮 #E9EDF3 / 暗 #303033
```

### 常用组合速查

```
页面结构:   背景 color/bg/secondary + 卡片 color/bg/primary + 间距 spacing/lg
卡片样式:   圆角 radius/lg (12px) + 内边距 spacing/md (12px) + 阴影 shadow/sm
主按钮:     背景 color/primary/default + 白色文字 + 圆角 radius/md (8px) + 高度 44px
输入框:     背景 color/bg/input + 圆角 radius/md (8px) + 高度 44px
标题文字:   font/size/lg (17px) + font/weight/medium + color/text/primary
正文文字:   font/size/base (14px) + font/weight/regular + color/text/primary
辅助文字:   font/size/sm (12px) + font/weight/regular + color/text/tertiary
```

### 动效速查

```
按钮按压:   duration 100ms + easing standard + scale(0.95) + opacity 70%
页面转场:   duration 300ms + easing standard + translateX
弹窗出现:   duration 300ms + easing decelerate + translateY(从底部)
弹窗关闭:   duration 200ms + easing accelerate + translateY(向底部)
Toast:      duration 200ms + easing spring + 显示 2s 后 150ms 渐隐
Tab切换:    duration 200ms + easing standard + 下划线滑动
```

### 图标速查

```
标准图标:   24px + 线性 1.5px + color/text/secondary
选中图标:   24px + 线性 1.5px + color/primary/default
小图标:     16px + 行内使用
大图标:     32px + 功能入口
触控区域:   始终 ≥ 44px × 44px
```

### AI Agent 使用提示

当使用 AI Agent 生成鱼泡直聘相关 UI 时，请在 Prompt 中引用本文件：

```
@鱼泡直聘_DESIGN.md 请严格按照设计规范中定义的颜色、字号、间距和组件样式，
生成一个 [具体页面/组件描述]。不要发明任何规范之外的样式。
```

---

*文档版本 v2.1.0 · 更新于 2026-04-13*
*来源：鱼泡直聘_tokens.json / 鱼泡暗夜_tokens.json*
*参考规范：[有赞 Zan Design](https://design.youzan.com/strategy/naming-strategy.html) · [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) · [Specify Token Naming](https://specifyapp.com/blog/crafting-consistency-a-thoughtful-approach-for-naming-design-tokens)*
