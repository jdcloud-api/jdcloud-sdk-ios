//
//  JdCloudResponse.swift
//  Core
//
//  Created by 李士军 on 2018/11/23.
//

import Foundation

public class JdCloudResponse<T>:Codable  where T:JdCloudResult   {
   
    var requestId:String?;
    
    var error:ServiceError?;
    
    var result:T?;
    
//    enum JdCloudResponseCodaKeys: String, Codable {
//        case <#case#>
//    }
//    
//    
//    required init(from decoder: Decoder) throws {
//        self.testResult = try TestReturnModel(from: decoder)
//        super.init()
//    }
   
}
