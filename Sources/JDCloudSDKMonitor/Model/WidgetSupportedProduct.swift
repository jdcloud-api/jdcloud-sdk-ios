/* Copyright 2018 JDCLOUD.COM

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http:#www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  widgetSupportedProduct
@objc(WidgetSupportedProduct)
public class WidgetSupportedProduct:NSObject,Codable{
    /// Name
    var name:String?
    /// ServiceCode
    var serviceCode:String?



    public override init(){
            super.init()
    }

    enum WidgetSupportedProductCodingKeys: String, CodingKey {
        case name
        case serviceCode
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: WidgetSupportedProductCodingKeys.self)
        if decoderContainer.contains(.name)
        {
            self.name = try decoderContainer.decode(String?.self, forKey: .name)
        }
        if decoderContainer.contains(.serviceCode)
        {
            self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        }
    }
}
public extension WidgetSupportedProduct{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: WidgetSupportedProductCodingKeys.self)
         try encoderContainer.encode(name, forKey: .name)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
    }
}
