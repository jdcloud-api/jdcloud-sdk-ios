# JDCloudSDKSwift
[![Actions Status](https://github.com/jdcloud-api/jdcloud-sdk-ios/workflows/JDCloudSDKSwift/badge.svg)](https://github.com/jdcloud-api/jdcloud-sdk-ios/actions)
## 简介

&emsp;&emsp;欢迎使用京东云开发者  iOS 工具套件（使用 swift 语言编写）。使用京东云 iOS SDK，您无需复杂编程就可以访问京东云提供的各种服务。    
&emsp;&emsp;为了方便您理解SDK中的一些概念和参数的含义，使用SDK前建议您先查看OpenAPI使用入门。要了解每个API的具体参数和含义，请参考程序注释或参考[OpenAPI&SDK](https://www.jdcloud.com/help/faq?act=3)下具体产品线的API文档。

## 环境准备 & 编译

* 此代码使用 Xcode 10.1 编写，swift 版本为 4.2 如果编译请注意开发 IDE 的版本和 Swift 的版本。

* 代码兼容`swift package manage` 可以使用 swift 命令在 Mac OS 系统下编译，可以使用 `Swift package manage` 进行包管理

* 如果您需要使用 Objective-C 版本的SDK[请点击此处](https://github.com/jdcloud-api/jdcloud-sdk-ios-oc)。

* 目前没有验证对 `linux（ubuntu 18.04 LTS and 16.04 LTS）`的编译和使用支持，如有需求遇到使用问题请在项目中提交Issues。

## SDK 使用方法

* 使用 Cocoapods 进行包管理的请使用 `pod install` 命令进行安装 需要使用的框架，目标框架会自动引用
    例如：

```shell
    pod install {framework name}
```

* 使用`swift package manage` 进行包管理的请将引用的包配置在自己的`Package.Swift` 的 `dependencies` 中

```swift
     dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/jdcloud-api/jdcloud-sdk-ios.git", from: "0.0.1"),
    ]
```

* 此外可以使用代码编译framework 直接引用 framework，或者直接将代码拷贝到项目中与项目一起编译

## 调用方法

    1. 设置accessKey和secretKey
    2. 创建Client
    3. 设置请求参数
    4. 执行请求得到响应

* 以下为查询用户主机实例列表的调用实例，具体请查看项目Tests目录下的 `VmTest.swift`.

```swift
        // 京东云官网 申请的 AccessKey 和 SecretAccessKey
        let credentials = Credential(accessKeyId: "your jdcloud ak", secretAccessKey: "your jdcloud sk");
        
        // 初始化调用业务线的客户端
        let vmClient = VmJDCloudClient(credential: credentials)
       
        // 创建请求参数，具体的请求参数查看 OPEN API 调用文档
        let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
       
        // 全局 debug 设定 打开后可以看到签名数据 方便调试
        GlobalConfig.debug = true
        
        // 执行请求，因有异常抛出需要自行处理，如果返回结果中有 AnyObject 类型需要 自行使用 SwiftJson 等框架处理resultString ，而requestResponse 中不会包含AnyObject 类型的结果
        try vmClient.describeInstancesAsync(request: describeInstancesRequest) { (statusCode, requestResponse, error,resultString) in
            // 回调方法执行自己的业务逻辑
            print(statusCode)
            print(requestResponse)
            print(error)
```
