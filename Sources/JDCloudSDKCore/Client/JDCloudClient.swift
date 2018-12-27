//
//  JdCloudClient.swift
//  Core
//
//  Created by 李士军 on 2018/11/23.
//

import Foundation

public protocol JDCloudClient {
    
    // 用户请求的 自定义 浏览器 agent 标识
    var userAgent:String{ get }
    
    // 服务名称
    var serviceName:String{ get }
    
    // 当前 sdk 使用的版本
    var version:String { get }
    
    // 认证信息 ak sk
    var credential:Credential{ get set }
    
    // 环境信息 请求环境地址
    var sdkEnvironment:SDKEnvironment{ get set }
    
    // 自定义请求头
    var customHeader:[String:String]{ get set}
    
    var httpRequestProtocol:String { get set }
    
    var contentType:String{ get }
    
    //添加自定义请求头
    func addCustomer(key:String,value:String) ;
    
}


