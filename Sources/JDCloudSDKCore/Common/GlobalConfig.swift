//
//  GlobalConfig.swift
//  Core
//
//  Created by 李士军 on 2018/12/8.
//

import Foundation


@objc(GlobalConfig)
public class  GlobalConfig:NSObject{
    
    public static var debug:Bool = false
    
    public static var sdkEnvironment:SDKEnvironment?
    
    public static var credential:Credential?
    
}


