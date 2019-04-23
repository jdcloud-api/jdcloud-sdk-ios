//
//  ServiceError.swift
//  Core
//
//  Created by 李士军 on 2018/11/23.
//

import Foundation

@objc(ServiceError)
public class ServiceError:NSObject,Codable{
    
    var code:Int32?;
    
    var message:String?;
    
    var status:String?
    
    var details:[String:String]?
    enum ServiceErrorCodingKeys: String, CodingKey {
        case code
        case message
        case status
        case details
    }
    
    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ServiceErrorCodingKeys.self)
        self.code = try decoderContainer.decodeIfPresent(Int32?.self, forKey: .code) ?? nil
        self.message = try decoderContainer.decodeIfPresent(String?.self, forKey: .message) ?? nil
        self.status = try decoderContainer.decodeIfPresent(String?.self, forKey: .status) ?? nil
        self.details = try decoderContainer.decodeIfPresent([String:String]?.self, forKey: .details) ?? nil
    }
}
public extension ServiceError{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ServiceErrorCodingKeys.self)
        try encoderContainer.encode(code, forKey: .code)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(details, forKey: .details)
    }
}
