//
//  SDKError.swift
//  Core
//
//  Created by 李士军 on 2018/12/3.
//

import Foundation


public enum SDKError:Error{
    case argumentNullError(String)
    case paramRequestError(String)
}
