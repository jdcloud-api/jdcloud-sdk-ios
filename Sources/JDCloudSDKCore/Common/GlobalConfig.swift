//
//  GlobalConfig.swift
//  Core
//
//  Created by 李士军 on 2018/12/8.
//

import Foundation

public enum JDCloudSignVersion{
    case JDCLOUD_SIGN_V2
    case JDCLOUD_SIGN_V3
}

public struct  GlobalConfig{
    
    public static var debug:Bool = false
    
    public static var sdkEnvironment:SDKEnvironment?
    
    public static var credential:Credential?
    
    private static var signVersion:JDCloudSignVersion = JDCloudSignVersion.JDCLOUD_SIGN_V2
    
}

extension GlobalConfig {
//    public static func setSignVersion(jdcloudSignVersion:JDCloudSignVersion) {
//         signVersion = jdcloudSignVersion
//    }
    
    public static func getSignVersion()-> JDCloudSignVersion{
           return signVersion
    }
}


