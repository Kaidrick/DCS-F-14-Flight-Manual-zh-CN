# DCS-F-14-Flight-Manual-zh-CN
Source for Heatblur online F-14 manual based on Sphinx with ReadDoc theme.

repos中包括source和build

其中source是通过Heatblur站点获取的图片和Sphinx / reStructuredText（rST）文件

build > html中是生成的html文件，主页是index.html

source > locale/cn/LC_MESSAGES 包含了用于本地化rST的所有po文件。需要使用po编辑器打开（如poedit）。

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
      
    为什么：“-”属于Sphinx中定义的syntax，所以需要添加“\”表示转义，“\-”转义符号表示“-”
