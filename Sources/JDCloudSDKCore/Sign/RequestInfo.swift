//
//  RequestInfo.swift
//  Core
//
//  Created by 李士军 on 2018/12/6.
//

import Foundation

public struct RequestInfo{
    
    var requestUrl:String
    
    var requestBodyContent:String
    
    var requestParams:String
    
    var requestPath:String
    
    var requestMethod:String
    
    var requestHeader:[String:String]
    
    var contentType:String
    
    var signedHost:String
    
    var requestHost:String
    
}
