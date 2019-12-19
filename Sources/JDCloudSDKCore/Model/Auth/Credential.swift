//
//  Credential.swift
//  Core
//
//  Created by 李士军 on 2018/11/23.
//

import Foundation

public struct Credential{
    
    var accessKeyId:String;
    
    var secretAccessKey:String;
    
    public init(accessKeyId:String,secretAccessKey:String) {
        self.accessKeyId = accessKeyId
        self.secretAccessKey = secretAccessKey
    }
}
