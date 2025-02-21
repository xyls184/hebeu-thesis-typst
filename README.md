# 由于本人已经毕业了，后续不再维护

# 由于 Typst 0.13 引入了许多不兼容改进，所以请在原文的基础上修改，不要从本文的基础上修改

[如果非要用的话这里是改动说明](https://github.com/nju-lug/modern-nju-thesis/pull/13)

# 河北工程大学大学学位论文 hebeu-thesis-typst（非官方）


刚发现还没写的东西，正在修复
- [ ] **无法完美解决**：行间距标准与 word 不一致，导致调整需要打开两篇文档分别对比调整，肉眼观感很相似但是不严谨的符合学校要求，字体大小虽然和标准标定的一致但是和 word 里的不一样大。
- [ ] 黑体和 Windows word 中的不一致。
- [ ] 河工程 logo 清晰度有点低


![image](https://github.com/xyls184/hebeu-thesis-typst/assets/20354136/3726d2b1-b93a-4183-9df0-67d3742b903e)

## 注意本模板为非官方模板！！！！！！！！！！！可能会出错/过不了差

![731d3d6b2f359cb529bed745d7f12e57](https://github.com/xyls184/hebeu-thesis-typst/assets/20354136/b1474eaf-9dd6-448d-a95f-9a3af6b5905e)

## 预览
[开题报告 PDF 预览](https://github.com/xyls184/hebeu-thesis-typst/blob/main/others/bachelor-proposal.pdf)
[论文模板 PDF 预览](https://github.com/xyls184/hebeu-thesis-typst/blob/main/thesis.pdf)

## 安装
我没有除 Windows 以外的其他系统，所以下面的教程都基于 Windows 11/10。其他系统的步骤应该类似。

如果使用 vscode 编写，请安装以下组件：
- [typst-lsp 主要组件](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp)
- [typst pdf 预览组件](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview)
- [（可选）typst 快捷键）](https://marketplace.visualstudio.com/items?itemName=CalebFiggers.typst-companion)
一般写完后 vscode 内的组件会为你自动编译。

如果想要自己编译，请参照[官方教程](https://github.com/typst/typst?tab=readme-ov-file#installation)（注：新手不用学，用 vscode 就好）

![image](https://github.com/xyls184/hebeu-thesis-typst/assets/20354136/342ade30-9003-4011-b56a-b9512516145f)

使用上图中任意一种方法把项目下载到本地（注：新手不知道 clone 是啥直接下载 zip 解压到你想工作的位置就好）。

右键单击文件夹内选择你的编译器内打开。这里我用的是 vscode：

首先选择 thesis.typ，在其中任意位置单击光标。如果你安装了我上面说的插件之后，右上角会出现这个按钮（注意不要和 LaTeX 的搞混）。
![image](https://github.com/xyls184/hebeu-thesis-typst/assets/20354136/d2737d2a-60cd-445b-a50e-6d0ae03e524b)

熟悉一下文件结构
```bash
│  thesis.pdf
│  thesis.typ···········**你的论文源文件**
├─bibs··················放包含**参考文献**的文档的位置
├─fonts·················字体
├─nju-thesis············模板目录，改样式主要在这里面改，内容看开发文档
│  │
│  │  template.typ
│  │
│  ├─assets
│  │  └─vi··············放图片的
│  │
│  ├─layouts············放横跨多个页面的函数的地方
│  │
│  ├─templates··········放独立页面函数的地方
│  ├
│  └─utils··············各种自定义辅助函数
└─others················本科生和研究生的开题报告（这个项目暂时还没改，别用）
```

其他教程：
- [官方文档](https://typst.app/docs/)
- [非官方中文文档](https://typst-doc-cn.github.io/docs/)
- [没写完的中文教程](https://github.com/typst-doc-cn/tutorial)

## 移植
请前往本项目的原链接查看说明：[nju-thesis-typst](https://github.com/nju-lug/nju-thesis-typst)。

## 致谢

- 感谢 [@atxy-blip](https://github.com/atxy-blip) 开发的 [NJUThesis](https://github.com/nju-lug/NJUThesis) LaTeX 模板，文档十分详细，本模板大体结构都是参考 NJUThesis 的文档开发的。
- 感谢 [HUST-typst-template](https://github.com/werifu/HUST-typst-template) 与 [sysu-thesis-typst](https://github.com/howardlau1999/sysu-thesis-typst) 等 Typst 中文论文模板。
- 感谢 [nju-thesis-typst](https://github.com/nju-lug/nju-thesis-typst)提供非常方便改的源码，如果复刻建议用他的。
- 感谢 [tablex 库](https://github.com/PgBiel/typst-tablex)让学校提出对表的要求成为可能。
- 感谢 [typst 官方](https://typst.app/)。
- 感谢 [typst 非官方中文文档](https://typst-doc-cn.github.io/docs/)。
- 感谢 [让我知道以上项目的聚合网站](https://github.com/typst-cn/awesome-typst-cn?tab=readme-ov-file)。
- 感谢 🐦‍⬛、Typst 非官方社区好心人能解答我的问题。
- 感谢父母，感谢群友，感谢我的学校，感谢 Miku，感谢啤酒烧烤，感谢所有支持我的人，谢谢大家。

## License

This project is licensed under the MIT License.
