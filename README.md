# JDCloudSDKSwift

## <em>notice:</em> this is not a release version

## 说明
  这个是 swift 的京东云 sdk 暂时不支持 oc 引用，目前使用的是 `swift package manager` 进行编译，目标平台支持 iOS MacOS WatchOS TvOS,如果构建的项目使用 使用`swift package manager` 可以进行引用，负责只能使用 xcode 编译好 framework 引用 framework,目前没有测试在 object c 下面进行引用。

* 本 SDK 目前不能创建 xcode 解决方案，需要用 xcode 打开的请使用 `swift package manager` 工具生成 project 文件，命令如下：

``` bash
   swift package generate-xcodeproj --xcconfig-overrides Package.xcconfig	
```
  近期会在项目中添加 xcode 的解决方案

* 编译的时候请使用 `swift build` 进行编译

## TODO
 
* 自动生成 xcode project 文件 能正常的使用 xcode 进行编译目标平台的包

* 对 `linux（ubuntu 18.04 LTS 16.04）`进行优化支持 
