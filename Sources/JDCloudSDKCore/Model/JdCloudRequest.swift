//
//  JdcloudRequest.swift
//  Core
//
//  Created by 李士军 on 2018/11/23.
//

import Foundation


open class  JdCloudRequest:NSObject,Encodable{
    // 版本信息
    var regionId:String;
    
    var version:String?
    
    public init(regionId:String) {
        self.regionId = regionId
    }
    
    
}

extension JdCloudRequest{
    public convenience init(regionId:String,version:String)
    {
        self.init(regionId: regionId)
        self.version = version
    }
}
