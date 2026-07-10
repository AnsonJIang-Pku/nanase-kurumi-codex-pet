# Nanase Kurumi Codex Pet / 七濑胡桃 Codex 宠物

> 希望你每次看到胡桃，都能开心一点。  
> May Kurumi bring a little joy to your coding day.

这是一个面向 **ChatGPT / Codex Pets** 的七濑胡桃（Nanase Kurumi）自定义宠物包。它把胡桃适配成一个本地可安装的 Codex Pet：当 Codex 正在运行、等待输入、完成任务或遇到阻塞时，她可以作为一个小小的状态陪伴角色出现在桌面或终端中。

本仓库是粉丝向、非商业、分享性质的适配包，不是 JOYNET、Pomu、OpenAI、ChatGPT 或 Codex 的官方项目。

---

## 预览

<details>
<summary>点击展开 spritesheet 预览</summary>

<img src="kurumi-v3/spritesheet.webp" alt="Nanase Kurumi Codex Pet spritesheet" width="384" />

</details>

---

## 仓库内容

```text
.
├── README.md
├── NOTICE.md
├── install.sh
├── .gitignore
└── kurumi-v3/
    ├── pet.json
    └── spritesheet.webp
```

其中 `kurumi-v3/pet.json` 当前配置为：

```json
{
  "id": "kurumi",
  "displayName": "胡桃",
  "description": "一个害羞可爱、穿深灰紫色连帽衫的胡桃表情包女孩宠物。",
  "spriteVersionNumber": 2,
  "spritesheetPath": "spritesheet.webp"
}
```

`spritesheet.webp` 是透明背景 WebP，尺寸为 `1536 × 2288 px`。

---

## 快速安装

```bash
git clone https://github.com/AnsonJIang-Pku/nanase-kurumi-codex-pet.git
cd nanase-kurumi-codex-pet
chmod +x install.sh
./install.sh
```

安装脚本会把 `kurumi-v3/pet.json` 和 `kurumi-v3/spritesheet.webp` 复制到：

```text
${CODEX_HOME:-$HOME/.codex}/pets/kurumi/
```

安装完成后，重启 ChatGPT / Codex，进入 **Settings > Pets**，点击刷新并选择 **胡桃**。在支持的 Codex CLI 中，也可以使用：

```text
/pets
```

打开宠物选择器，或者直接尝试：

```text
/pets kurumi
```

---

## 手动安装

如果你不想运行脚本，可以手动复制：

```bash
PET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/kurumi"
mkdir -p "$PET_DIR"
cp kurumi-v3/pet.json "$PET_DIR/pet.json"
cp kurumi-v3/spritesheet.webp "$PET_DIR/spritesheet.webp"
```

然后重启 ChatGPT / Codex，并在 Pets 设置页刷新宠物列表。

---

## 使用说明

### ChatGPT / Codex Desktop

在桌面应用中：

1. 打开个人菜单或 **Settings**。
2. 进入 **Pets**。
3. 选择 **胡桃**。
4. 输入 `/pet`，或在命令菜单中选择 **Wake Pet**。
5. 再次输入 `/pet`，或选择 **Tuck Away Pet**，可以收起宠物。

宠物只是界面陪伴与状态提示，不会改变 ChatGPT 或 Codex 完成任务的方式。

### Codex CLI

在交互式 Codex CLI 会话中：

```text
/pets
```

打开宠物选择器。

```text
/pets kurumi
```

直接选择胡桃。

```text
/pets off
```

关闭终端宠物。

终端宠物通常需要支持图片显示的终端环境，例如 iTerm2、Kitty graphics 或 Sixel。部分 `tmux`、`Zellij`、远程 SSH 环境可能无法正常显示。

### ChatGPT Web

Web 版 Pets 上传功能与本地 Codex Pet 包并不完全相同。官方文档目前写明，网页端上传自定义宠物需要透明 PNG 或 WebP，尺寸必须为 `1536 × 1872 px`，文件不超过 `20 MiB`。

本仓库的 `spritesheet.webp` 尺寸是 `1536 × 2288 px`，更适合作为本地 Codex Desktop / Codex CLI 宠物包使用；直接上传到 Web 版可能会失败。

---

## 状态含义

Codex Pet 会根据任务活动切换状态。常见状态包括：

| 状态 | 含义 |
|---|---|
| Running | Codex 正在工作 |
| Needs input | 需要你的确认、回答或审批 |
| Ready | 任务完成，有新的活动可查看 |
| Blocked | 任务失败或遇到系统错误 |

胡桃会在这些状态之间切换，像一个小小的桌面陪伴者，提醒你 Codex 当前正在做什么。

---

## 关于七濑胡桃

七濑胡桃（日语：七瀬胡桃；罗马字：Nanase Kurumi）也常被称为 Menhera-chan。根据中文维基百科条目介绍，她是 JOYNET 株式会社所属画师 Pomu 创作的虚拟少女形象，最初自 2017 年起以 LINE 贴图形式发售。经典形象是一位穿黑色连帽衫、拥有深色短发的高中生少女。

我很喜欢胡桃那种“陪伴感”：有点害羞，有点孩子气，也很容易让人心情变好。因此把她做成 Codex Pet 后，也希望大家在写代码、调 bug、等 CI、改论文、赶 deadline 的时候，能因为看到胡桃而开心一点。

---

## 版权与使用声明

七濑胡桃 / Nanase Kurumi 是 JOYNET 株式会社及相关权利方拥有或管理的角色 IP。本仓库不主张角色版权、原始素材版权或官方授权身份。

本仓库内容仅用于个人学习、桌面美化、粉丝交流和非商业分享。请不要将本仓库素材用于商业用途、付费分发、误导性宣传，或任何可能损害原角色、作者、权利方与粉丝社区的用途。

如果你是相关权利方，认为本仓库内容存在不妥，请通过 Issue 或仓库主页提供的联系方式联系我。我会及时处理、修改或移除相关内容。

---

## 常见问题

### 安装后看不到胡桃怎么办？

请依次检查：

- `pet.json` 和 `spritesheet.webp` 是否在同一目录下；
- 目录是否为 `${CODEX_HOME:-$HOME/.codex}/pets/kurumi/`；
- `pet.json` 中的 `spritesheetPath` 是否为 `spritesheet.webp`；
- 是否已经重启 ChatGPT / Codex；
- 是否在 **Settings > Pets** 中刷新宠物列表。

### 这个宠物会影响 Codex 的任务结果吗？

不会。宠物只改变界面外观和状态提示，不会改变模型行为、工具调用、任务逻辑或代码生成质量。

### 为什么不放开源许可证？

因为本仓库包含角色相关素材，普通软件开源许可证并不适合覆盖这些内容。请以粉丝非商业分享的方式使用，并尊重原角色、作者和权利方。

---

## 参考资料

- [ChatGPT Learn: Pets](https://learn.chatgpt.com/docs/pets?surface=app)
- [OpenAI Skills: hatch-pet](https://github.com/openai/skills/tree/main/skills/.curated/hatch-pet)
- [中文维基百科：七濑胡桃](https://zh.wikipedia.org/wiki/%E4%B8%83%E6%BF%91%E8%83%A1%E6%A1%83)

---

愿胡桃陪你写出更少 bug、更多开心。
