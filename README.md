# JDCloudSDKSwift

## 说明
这个是 swift 的京东云 OPEN API SDK，目前没有添加 pod 支持，需要自己编译 framework 引用 或者使用 `swift package manage` 引用。

* 目前已经有项目的解决方案文件和 `objc` 的头支持，如果要编写 Objective-c 的 framework 请使用 c++ 签名库，将代码放到项目中进行 C , OC 和 C++ 混合编译，后期会完善 OC 代码的支持

## TODO
 
* 对 `linux（ubuntu 18.04 LTS and 16.04 LTS）`进行优化支持 

* 使用文档说明 代码优化

* 详细的测试

## 使用方法

* 如果 使用 swift 进行 iOS 和 Mac OS X 应用开发， 直接编译要使用的模块的SDK和相关引用的模块引用到项目中。

* 如果使用 Objective-c  进行 iOS 和 Mac OS X 应用开发，引用需要的 framework, 然后在头文件中引用`<{使用的framework名称}/{使用的framework名称}-swift.h>` 的头文件，引用后能调用相关 framework 的方法。

* Api 调用方法请查看Tests文件夹下的 `VmTest.swift`.
```swift
        // 京东云官网 申请的 AccessKey 和 SecretAccessKey
        let credentials = Credential(accessKeyId: "your jdcloud ak", secretAccessKey: "your jdcloud sk");
        
        // 初始化调用业务线的客户端
        let vmClient = VmJDCloudClient(credential: credentials)
       
        // 创建请求参数，具体的请求参数查看 OPEN API 调用文档
        let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
       
        // 全局 debug 设定 打开后可以看到签名数据 方便调试
        GlobalConfig.debug = true
        
        try vmClient.describeInstancesAsync(request: describeInstancesRequest) { (statusCode, requestResponse, error,resultString) in
            // 回调方法执行自己的业务逻辑
            print(statusCode)
            print(requestResponse)
            print(error) 

```
