//
//  ServiceError.swift
//  Core
//
//  Created by 李士军 on 2018/11/23.
//

import Foundation

public class ServiceError:Codable{
    
    var Code:Int32?;
    
    var Message:String?;
    
    var Status:String?
    
    var Details:[String:String]?
    
}
