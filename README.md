# JDCloudSDKSwift

## <em>notice:</em> this is not a release version

## 说明
这个是 swift 的京东云 sdk 暂时不支持 oc 引用，目前使用的是 `swift package manager` 进行编译，目标平台支持 iOS MacOS WatchOS TvOS,如果构建的项目使用`swift package manager`进行包管理，可以直接进行引用，否则只能使用xcode编译好framework，然后引用framework,目前没有进行 objective-c 测试。

* 本 SDK 目前没有自动创建xcode解决方案，如果需要使用 xcode 打开代码查询，请使用 `swift package manager` 工具生成 project 文件，命令如下：

``` bash
   swift package generate-xcodeproj --xcconfig-overrides Package.xcconfig	
```
  近期会在项目中添加 xcode 的解决方案，对原有的编译方案进行支持

* 编译的时候请使用 `swift build` 进行编译，或者生产 xcode 项目文件后使用 xcode 进行编译

## TODO
 
* 自动生成 xcode project 文件 能正常的使用 xcode 进行编译目标平台的包

* 对 `linux（ubuntu 18.04 LTS 16.04）`进行优化支持 

* 使用文档说明 代码优化

## 使用方法

* 大致的使用方法请查看Tests 文件夹下的 `VmTest.swift`
