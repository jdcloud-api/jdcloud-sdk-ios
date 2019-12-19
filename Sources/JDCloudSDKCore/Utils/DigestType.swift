//
//  DigestType.swift
//  JDCloudSDKCore
//
//  Created by 李士军 on 2019/3/1.
//

import Foundation


internal protocol DigestType {
    func calculate(for bytes: Array<UInt8>) -> Array<UInt8>
}
