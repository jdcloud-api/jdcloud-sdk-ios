//
//  UInt8+Extension.swift
//  JDCloudSDKCore
//
//  Created by 李士军 on 2019/3/1.
//

#if canImport(Darwin)
import Darwin
#else
import Glibc
#endif

public protocol _UInt8Type {}
extension UInt8: _UInt8Type {}

/** casting */
extension UInt8 {
    /** cast because UInt8(<UInt32>) because std initializer crash if value is > byte */
    static func with(value: UInt64) -> UInt8 {
        let tmp = value & 0xff
        return UInt8(tmp)
    }
    
    static func with(value: UInt32) -> UInt8 {
        let tmp = value & 0xff
        return UInt8(tmp)
    }
    
    static func with(value: UInt16) -> UInt8 {
        let tmp = value & 0xff
        return UInt8(tmp)
    }
}

/** Bits */
extension UInt8 {
    init(bits: [Bit]) {
        self.init(integerFrom(bits) as UInt8)
    }
    
    /** array of bits */
    public func bits() -> [Bit] {
        let totalBitsCount = MemoryLayout<UInt8>.size * 8
        
        var bitsArray = [Bit](repeating: Bit.zero, count: totalBitsCount)
        
        for j in 0..<totalBitsCount {
            let bitVal: UInt8 = 1 << UInt8(totalBitsCount - 1 - j)
            let check = self & bitVal
            
            if check != 0 {
                bitsArray[j] = Bit.one
            }
        }
        return bitsArray
    }
    
    public func bits() -> String {
        var s = String()
        let arr: [Bit] = bits()
        for idx in arr.indices {
            s += (arr[idx] == Bit.one ? "1" : "0")
            if idx.advanced(by: 1) % 8 == 0 { s += " " }
        }
        return s
    }
}
