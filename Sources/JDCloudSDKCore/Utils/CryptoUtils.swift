//
//  CryptoUtils.swift
//  Core
//
//  Created by 李士军 on 2018/12/12.
//

import Foundation


///
/// Various utility functions for conversions
///
public struct CryptoUtils {
    
    ///
    /// Converts a single hexadecimal digit encoded as a Unicode Scalar to it's corresponding value.
    ///
    /// - Parameter digit: A Unicode scalar in the set 0..9a..fA..F
    ///
    /// - Returns: The hexadecimal value of the digit
    ///
    static func convert(hexDigit digit: UnicodeScalar) -> UInt8 {
        
        switch digit {
            
        case UnicodeScalar(unicodeScalarLiteral:"0")...UnicodeScalar(unicodeScalarLiteral:"9"):
            return UInt8(digit.value - UnicodeScalar(unicodeScalarLiteral:"0").value)
            
        case UnicodeScalar(unicodeScalarLiteral:"a")...UnicodeScalar(unicodeScalarLiteral:"f"):
            return UInt8(digit.value - UnicodeScalar(unicodeScalarLiteral:"a").value + 0xa)
            
        case UnicodeScalar(unicodeScalarLiteral:"A")...UnicodeScalar(unicodeScalarLiteral:"F"):
            return UInt8(digit.value - UnicodeScalar(unicodeScalarLiteral:"A").value + 0xa)
            
        default:
            fatalError("convertHexDigit: Invalid hex digit")
        }
    }
    
    ///
    /// Converts a string of hexadecimal digits to a byte array.
    ///
    /// - Parameter string: The hex string (must contain an even number of digits)
    ///
    /// - Returns: A byte array
    ///
    public static func byteArray(fromHex string: String) -> [UInt8] {
        
        var iterator = string.unicodeScalars.makeIterator()
        var byteArray: [UInt8] = []
        while let msn = iterator.next() {
            
            if let lsn = iterator.next() {
                
                byteArray += [ (convert(hexDigit: msn) << 4 | convert(hexDigit: lsn)) ]
                
            } else {
                
                fatalError("arrayFromHexString: String must contain even number of characters")
            }
        }
        return byteArray
    }
    
    ///
    /// Converts a UTF-8 String to a byte array.
    ///
    /// - Parameter string: the string
    ///
    /// - Returns: A byte array
    ///
    public static func byteArray(from string: String) -> [UInt8] {
        
        let array = [UInt8](string.utf8)
        return array
    }
    
    ///
    /// Converts a string of hexadecimal digits to an `NSData` object.
    ///
    /// - Parameter string: The hex string (must contain an even number of digits)
    ///
    /// - Returns: An `NSData` object
    ///
    public static func data(fromHex string: String) -> NSData {
        
        let a = byteArray(fromHex: string)
        return NSData(bytes:a, length:a.count)
    }
    
    ///
    /// Converts a string of hexadecimal digits to an `Data` object.
    ///
    /// - Parameter string: The hex string (must contain an even number of digits)
    ///
    /// - Returns: An `Data` object
    ///
    public static func data(fromHex string: String) -> Data {
        
        let a = byteArray(fromHex: string)
        return Data(bytes: a, count: a.count)
    }
    
    ///
    /// Converts a byte array to an `NSData` object.
    ///
    /// - Parameter byteArray: The byte array
    ///
    /// - Returns: An `NSData` object
    ///
    public static func data(from byteArray: [UInt8]) -> NSData {
        
        return NSData(bytes:byteArray, length:byteArray.count)
    }
    
    ///
    /// Converts a byte array to an `Data` object.
    ///
    /// - Parameter byteArray: The byte array
    ///
    /// - Returns: An `Data` object
    ///
    public static func data(from byteArray: [UInt8]) -> Data {
        
        return Data(bytes: byteArray, count: byteArray.count)
    }
    
    ///
    /// Converts a byte array to a string of hexadecimal digits.
    ///
    /// - Parameters:
    ///        - byteArray: The Swift array
    ///     - uppercase: True to use uppercase for letter digits, lowercase otherwise
    ///
    /// - Returns: A String
    ///
    public static func hexString(from byteArray: [UInt8], uppercase: Bool = false) -> String {
        
        return byteArray.map() { String(format: (uppercase) ? "%02X" : "%02x", $0) }.reduce("", +)
    }
    
    ///
    /// Converts a Swift array to an `NSString` object.
    ///
    /// - Parameters:
    ///        - byteArray: The Swift array
    ///     - uppercase: True to use uppercase for letter digits, lowercase otherwise
    ///
    /// - Returns: An `NSString` object
    ///
    public static func hexNSString(from byteArray: [UInt8], uppercase: Bool = false) -> NSString {
        
        let formatString = (uppercase) ? "%02X" : "%02x"
        #if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
        return byteArray.map() { String(format: formatString, $0) }.reduce("", +) as NSString
        #else
        let aString = byteArray.map() { String(format: formatString, $0) }.reduce("", +)
        return NSString(string: aString)
        #endif
    }
    
    ///
    /// Converts a byte array to a String containing a comma separated list of bytes.
    /// This is used to generate test data programmatically.
    ///
    /// - Parameter byteArray: The byte array
    ///
    /// - Returns: A String
    ///
    public static func hexList(from byteArray: [UInt8]) -> String {
        
        return byteArray.map() { String(format:"0x%02x, ", $0) }.reduce("", +)
    }
    
    ///
    /// Zero pads a byte array such that it is an integral number of `blockSizeinBytes` long.
    ///
    /// - Parameters:
    ///        - byteArray:         The byte array
    ///     - blockSizeInBytes: The block size in bytes.
    ///
    /// - Returns: A Swift string
    ///
    public static func zeroPad(byteArray: [UInt8], blockSize: Int) -> [UInt8] {
        
        let pad = blockSize - (byteArray.count % blockSize)
        guard pad != 0 else {
            return byteArray
        }
        return byteArray + Array<UInt8>(repeating: 0, count: pad)
    }
    
    ///
    /// Zero pads a String (after UTF8 conversion)  such that it is an integral number of `blockSizeinBytes` long.
    ///
    /// - Parameters:
    ///        - string:             The String
    ///     - blockSizeInBytes:    The block size in bytes
    ///
    /// - Returns: A byte array
    ///
    public static func zeroPad(string: String, blockSize: Int) -> [UInt8] {
        
        return zeroPad(byteArray: Array<UInt8>(string.utf8), blockSize: blockSize)
    }
    
}
