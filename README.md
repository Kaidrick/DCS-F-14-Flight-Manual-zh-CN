# DCS F-14 Flight Manual zh-CN translation
This repository contains source files for the online DCS: F-14 flight manual built with Sphinx in ReadDoc theme. These sources files (images and reStructedText files) are pulled with the permission by Heatblur Simulations from their official website.

Along with the source files are `*.pot` files extracted from reStructuredText and `*.po` files translated in Simplified Chinese; also included are translated training/quick start/single/multiplayer missions and campaigns.
These `*.pot` files may be useful if you want to translate the manual into other languages.

The translated manual can be read from:
https://alphabet-ghost.gitee.io/dcs-f-14-flight-online-manual-zh-cn/

**Special thanks to Heatblur Simulations for making necessary files publically available for translation, and to all individuals and groups for their efforts and involvement in the translation, proofreading and technical support of this project.**


# DCS: F-14 “雄猫” 飞行手册汉化项目
这个程序库包含了DCS：F-14在线飞行手册的源文件，手册使用Sphinx-doc搭配ReadDoc主题生成。这些源文件（图片和reStructuredText文件），经Heatblur Simulations许可，获取自他们的官方网站。

除了这些源文件，程序库中还包括从reStructuredText中提取的`*.pot`文件和已经翻译成简体中文的`*.po`文件；游戏中的训练/快速任务/单人/多人任务和战役也已翻译完毕，包括在这些文件中。
如果要将手册翻译成其他语言，这些`*.pot`文件可能会很有用。

手册链接：
https://alphabet-ghost.gitee.io/dcs-f-14-flight-online-manual-zh-cn/


**在此特别感谢Heatblur Simulations公开了翻译所需的文件，也感谢所有参与此项目翻译、校对、技术支持和镜像分流的玩家个人/群体。**



# 程序库分支和内容

这个repos包括两个分支，分别是`master`和`html-only`。

`master`分支中包含了所有源文件以及未压缩图片及其他包括游戏内训练和战役任务在内的二进制文件，体积庞大。
`html-only`分支仅包含搭建站点所需的网页文件，如果你想架设网站为本手册分流，可以考虑下载`html-only`分支。

master分支中包括`source`和`build`两个文件夹。
`source`是通过Heatblur站点获取的图片和Sphinx / reStructuredText（rST）文件

`build > html`中是生成的html文件，手册的主页是`index.html`

`source > locale/cn/LC_MESSAGES` 包含了用于本地化rST的所有po文件。需要使用po编辑器打开（如poedit）。

# **非常重要**

所有rst syntax前后需用空格分割：
表示 \*\*强调\*\* 的标识
这是一个``` :ref:`引用` ```

翻译*.po文件时，不要改动rST的标记，常见的标记如下：
* ``` :ref:`引用名称` ```
  注意，是\` （数字1左边的飘号），而不是单引号，更不是汉语中的单引号。
  单独出现时无视；在句中出现时，无视``` :ref:`引用名称` ```部分，翻译其他内容
  
    比如：
  
    > The :ref:\`liqcool\` controls these cooling systems and should be set to \*\*AWG-9\*\* to enable only the AN/AWG-9 cooler if no AIM-54 Phoenix missiles are carried.
    
    应翻译为：
    
    > :ref:\`liqcool\` 控制这些冷却系统，如果未携带AIM-54“不死鸟”导弹，这个开关应被拨至 \*\*AWG-9\*\* 档位来激活AN/AWG-9冷却器。

    编译为html后的显示为：
    
    > [液冷控制面板](README.md) 控制这些冷却系统，如果未携带AIM-54“不死鸟”导弹，这个开关应被拨至 **AWG-9** 档位来启用AN/AWG-9冷却器。
    
    
    因为``` :ref:`liqcool` ```代表一个引用，会自动寻找被引用的内容。这里liqcool在文中指向了cockpit.html下预先定义好的的Liquid Cooling Control Panel，因此返回这个字串，接着这个字串因为在cockpit章节对应的po文件中被汉化，所以返回一个中文字符串。
    
    如果翻译时不知道这个``` :ref:`引用对象` ```是什么，可以在查看手册原文
    
    在地址栏中输入
    http://www.heatblur.se/F-14Manual/cockpit.html#liqcool
    也就是，对应的页面（如cockpit.html）+ # + 引用（liqcool）也可直接跳转至引用位置。


* ```**加粗标记**```
  通常出现在开关、仪表和旋钮的字样上，翻译时请保留前后的\*\*，翻译中间的文字。如果作为开关/控制出现，则保留英文原文，不翻译
  
    比如：
      The \*\*TOTAL\*\* (\*\*2\*\*) indicator displays total carried fuel.
      The \*\*MASTER GEN\*\* (\*\*1\*\*) switches control connection
      
  在po文件中的翻译应为：
      \*\*TOTAL\*\*指示器显示了燃油总量。
      \*\*MASTER GEN\*\* (\*\*1\*\*)开关控制连接
      
  这样一来 编译为html后，显示为：**TOTAL**指示器显示了燃油总量。**MASTER GEN** (**1**) 开关控制连接


* 句首出现 - （短横）的情况
  通常在文中用于做额外解释或表示列表中的项目
  凡是句首出现短横的情况，需改写为\-
  
    比如：
    
       - Pull
      
    在po文件中的翻译应为：
    
       \- 抽出
      
    为什么：“-”属于Sphinx中定义的syntax，所以需要添加“\”表示转义，“\\-”转义符号表示“-”
