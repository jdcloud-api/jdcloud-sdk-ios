# JDCloudSDKSwift

## 说明
这个是 swift 的京东云 sdk 暂时不支持 oc 引用，目前使用的是 `swift package manager` 进行编译，目标平台支持 iOS MacOS WatchOS TvOS,如果构建的项目使用`swift package manager`进行包管理，可以直接进行引用，否则只能使用xcode编译好framework，然后引用framework,目前没有进行 objective-c 测试。

* 目前已经有项目的解决方案文件和 `objc` 的头支持，如果要编写 Objective-c 的 framework目前没有研究，具体请使用 c++ 签名库进行编译支持

* 目前只测试了部分的方法，后续还需要完整的测试，欢迎使用提出问题

## TODO
 

* 对 `linux（ubuntu 18.04 LTS 16.04）`进行优化支持 

* 使用文档说明 代码优化

* 详细的测试
## 使用方法

* 大致的使用方法请查看Tests 文件夹下的 `VmTest.swift`
