相关本地化文件下载
####################

目前，游戏内未集成，且无法保证将来游戏内会集成相关的汉化文件。

因此，本页面提供了与《DCS：F-14 “雄猫” 中文飞行手册》配套的游戏内按键设置页和驾驶舱提示的中文本地化，同时也包括数个训练任务的中文本地化。

.. raw:: html

	<br>


游戏本地化文件集合包（推荐）
=============================

**包含所有目前可用的本地化文件。直接解压至DCS World安装目录中，并覆盖原文件。**	

:download:`F-14-localization-pack.zip <download/F-14-localization-pack.zip>`

:注意: 如果下载了本集合包，则无需单独下载下文中的按键设置和驾驶舱提示和任务文件。



------------------------------
	
	

按键设置和驾驶舱提示
=======================


====================================================================================================================     ===========================
请选择下列安装方式中的一种                                                                                                 安装说明
====================================================================================================================     ===========================
\ :download:`F-14-cn.zip <download/F-14-cn.zip>`			                                                              下载\*.zip文件，然后将压缩包中的 :code:`Mods` 文件夹\ **直接解压至DCS World安装路径的根目录**\ 。
																		                                                  :什么是安装路径: 常见安装路径\ :code:`D:\Eagle Dynamics\DCS World` 或 :code:`C:\Program Files\Eagle Dynamics\DCS World` 或 :code:`F:\游戏\DCS World`
																		                                                  :Steam版怎么办: 找到Steam库路径，如 :code:`C:\Program Files (x86)\Steam\steamapps\common\DCS World` 或 :code:`D:\SteamLibrary\steamapps\common\DCS World`，然后解压至该文件夹中。
																		
\ :download:`F-14-cn.po <download/F-14-cn.po>` / :download:`F-14-cn.mo <download/F-14-cn.mo>`                               **除非需要自行编辑文字，否则不推荐这种方法**

                                                                                                                          下载*.po文件，然后：

                                                                                                                          * 下载并安装\ `Poedit <https://poedit.net/>`_\ ，通过Poedit打开\*.po文件，选择左上角的File > Compile to MO来生成*.mo文件，然后将其放入对应的路径中并重命名。
																	  
                                                                                                                          或
																		 
                                                                                                                          * 使用msgfmt（GnuWin32等），将\*.po编译为\*.mo文件
																		                                                  
                                                                                                                          或
																														  
                                                                                                                          * 使用其他在线服务/网站编译*.mo
																														  
                                                                                                                          或
																														  
                                                                                                                          直接下载提供的*.mo文件，然后将其放入：
																														  
                                                                                                                          > :code:`Eagle Dynamics` > :code:`DCS World` > :code:`Mods` > :code:`aircraft` > :code:`F14` > :code:`l10n` > :code:`cn` > :code:`LC_MESSAGES`
																		
                                                                                                                          **然后将**\ :code:`F-14-cn.mo`\ **重命名为**\ :code:`messages.mo` 。
																		
																		                                                  :注意:
																			                                                    （此方法暂时无效）放入 :code:`CoreMods` 和 :code:`Mods` 文件夹均可；如放入 :code:`CoreMods` 文件夹，未购买F-14的用户也可看到编辑器中相关文字的翻译；如果放入 :code:`Mods` 文件夹，只有购买了F-14的用户可以看到相关翻译。

																		                                                  :注意:
																			                                                    如果\ :code:`F-14`\ 目录中缺少\ :code:`l10n`\ 、\ :code:`cn`\ 或\ :code:`LC_MESSAGES`\ 这三个文件夹中的任何一个或多个文件夹，那么请按照上述文件结构，自行新建文件夹并将它们重命名。

																		                                                  :注意:
																			                                                    请注意文件扩展名。如果您的资源管理器中隐藏了文件扩展名（也就是所谓的“文件类型”——本文件的 :code:`*.mo` 是这个文件的扩展名，如同\ :code:`.exe`\ 、\ :code:`.png`\ 、\ :code:`.pdf`\ 等），\ **请注意不要将文件误命名为**\ :code:`messages.mo.mo` ）
====================================================================================================================     ===========================

------------------------------------------------


训练任务
===========

=====================    =====================
训练任务名称               下载
=====================    =====================
M61航炮 空对空             :download:`F-14B tutorial AA M61.miz <download/Miz/Training/F-14B tutorial AA M61.miz>`
CASE I 航降               :download:`F-14B tutorial carrier-based Case1.miz <download/Miz/Training/F-14B tutorial carrier-based Case1.miz>`
CASE I 弹射起飞            :download:`F-14B tutorial carrier-based Takeoff Case1.miz <download/Miz/Training/F-14B tutorial carrier-based Takeoff Case1.miz>`
冷启动 飞行员              :download:`F-14B tutorial cold start.miz <download/Miz/Training/F-14B tutorial cold start.miz>`
导航                      :download:`F-14B tutorial Navigation.miz <download/Miz/Training/F-14B tutorial Navigation.miz>`
岸基着陆                  :download:`F-14B tutorial Shore-based Landing.miz <download/Miz/Training/F-14B tutorial Shore-based Landing.miz>`
岸基起飞                  :download:`F-14B tutorial Shore-based Takeoff.miz <download/Miz/Training/F-14B tutorial Shore-based Takeoff.miz>`
AWG-9 课程1                :download:`F-14B-AWG-9-1.miz <download/Miz/Training/F-14B-AWG-9-1.miz>`
AWG-9 课程2                :download:`F-14B-AWG-9-2.miz <download/Miz/Training/F-14B-AWG-9-2.miz>`
AWG-9 课程3                :download:`F-14B-AWG-9-3.miz <download/Miz/Training/F-14B-AWG-9-3.miz>`
冷启动 RIO                :download:`F-14B-RIO Cold Start.miz <download/Miz/Training/F-14B-RIO Cold Start.miz>`
=====================    =====================  

下载文件后，将其放入DCS World安装根目录中的对应文件夹，并覆盖原文件。详细路径如下：

> :code:`Eagle Dynamics` > :code:`DCS World` > :code:`Mods` > :code:`aircraft` > :code:`F14` > :code:`Missions` > :code:`Training`

**Steam版**
首先找到Steam库的路径，如 :code:`C:\Program Files (x86)\Steam\steamapps\common\DCS World` 
或 :code:`D:\SteamLibrary\steamapps\common\DCS World`

然后将任务文件放入 :code:`DCS World` 目录中的 :code:`Mods` > :code:`aircraft` > :code:`F14` > :code:`Missions` > :code:`Training`

.. raw:: html

	<br>
	<br>
	<br>

另一种方式则是将*.miz文件作为单独的任务，从主菜单的 **任务** 或 **任务编辑器** 中打开运行。将下载好的文件放入：

:code:`C:` > :code:`Users` > :code:`[UserName]` > :code:`Saved Games` > :code:`DCS.openbeta` > :code:`Missions`

中文Windows操作系统中的路径如下：

:code:`C:` > :code:`用户` > :code:`[你的用户名]` > :code:`保存的游戏` > :code:`DCS.openbeta` > :code:`Missions`

:注意: 根据版本的不同，:code:`保存的游戏` 中的DCS目录文件名可能是 :code:`DCS` 或 :code:`DCS.openbeta` 或其他分支，请确认选择了正确的版本对应的文件夹。
