//
//  JDCloudSignProtocol.swift
//  JDCloudSDKSwift
//
//  Created by 李士军 on 2019/12/18.
//  Copyright © 2019 李士军. All rights reserved.
//

import Foundation


public protocol JDCloudSignProtocol{
    
    func doSign(requestInfo:RequestInfo)throws ->SignedRequestInfo;
}
