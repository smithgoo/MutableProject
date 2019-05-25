#多项目依赖  
~我找了网上的大部分的多项目依赖都是从蘑菇街的模块化开始的 没有在操作上面 告诉我们怎么做 我自己看了下准备写个Demo 

1.新建项目 作为多项目依赖肯定涉及到pod管理工具 如果你现在还在拖文件夹管理第三方 我建议你就不要看了 
	
	cd  project 
	pod init
	这个时候就有个问题私有库和公有库的问题 
	#私有库
	pod 'PrivateVideoPlayer',:git=>'https://github.com/	smithgoo/movesPlayer.git'
	#公有库
	pod 'AFNetworking'

一般公有库和私有库创建并没有那么的繁琐 按照网络上的文档 你也可以构建自己的库文件 这里就不再讲了 这里主要说你可以在最后提交到自己的git验证的时候可能有错误 一般用这几条命令就能解决

	--verbose 显示检查编译的详细信息
	--allow-warnings 验证时允许有警告
	执行一下命令：通过验证
	$ pod lib lint --verbose --use-libraries --allow warnings
	
2.创建一个动态库或者静态库 你可以作为你的UI 或者网络请求的部分 反正你想怎么玩 自己验证就行了

	首先创建一个静态库文件 目录一定要和你的project 在一个层级上 选择新建的时候不要add 到当前的porject 中
	以ReqAPI 为例 我们创建好之后 还不能使用 这个时候我们需要将ReqAPI 的路径和生成的.a 文件和路径相关联
	01.jpg 
	然后在将.a文件拖入project 
	02.jpg 

3.这个时候在ViewController 里面就可以直接引用 然后测试了 
	
	如果 
	
	NSLog(@"ReqAPI 功能正常");
	
	那么就说明你的库文件加载成功了
	
	
	到这里 基本你就成功了一半了 
	
	这个时候你就可以写你要封装的方法来使用  
	但是你又会碰到一个问题 你没办法使用三方库文件 
4.引用三方库文件
	
	
	我使用的是 AFNetworkig 作为例子
	
	我们要做的是将pod 里面的AFN的目录拖入进 ReqAPI的 header path
	
	03.jpg 

这个时候你运行我写的方法 你会发现 

	
	
	 NSLog(@"AFN 功能引用正常");


#好了 现在就大功告成了 

 	
	
	
	
	
