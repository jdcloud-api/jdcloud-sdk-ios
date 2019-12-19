//
//  SDKEnvironment.swift
//  Core
//
//  Created by 李士军 on 2018/12/3.
//

import Foundation

open class SDKEnvironment{
    
    var endPoint:String
    open
    var realEndPoint:String?
    
    public init(endPoint:String,realEndPoint:String) {
        self.endPoint=endPoint
        self.realEndPoint=realEndPoint
    }
    public init(endPoint:String) {
        self.endPoint = endPoint
    }
}
