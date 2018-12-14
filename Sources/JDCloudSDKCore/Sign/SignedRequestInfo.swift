//
//  SignedRequestInfo.swift
//  Core
//
//  Created by 李士军 on 2018/12/6.
//

import Foundation

public struct SignedRequestInfo{
    
    var requestNonceId:String
    
    var requestHead:[String:String]
    
    var contentSha256:String
    
    var canonicalRequest:String
    
    var stringToSign:String
    
    var StringSignature:String
    
    var SignedHeaders:String
    
}
