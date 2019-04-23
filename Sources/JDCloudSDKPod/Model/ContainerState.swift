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

///  pod 中的 contianer 状态
@objc(ContainerState)
public class ContainerState:NSObject,Codable{
    /// 容器running的详细信息
    var running:ContainerStateRunning?
    /// 容器Terminated的详细信息
    var terminated:ContainerStateTerminated?
    /// 容器waiting的详细信息
    var waiting:ContainerStateWaiting?



    public override init(){
            super.init()
    }

    enum ContainerStateCodingKeys: String, CodingKey {
        case running
        case terminated
        case waiting
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ContainerStateCodingKeys.self)
        if decoderContainer.contains(.running)
        {
            self.running = try decoderContainer.decode(ContainerStateRunning?.self, forKey: .running)
        }
        if decoderContainer.contains(.terminated)
        {
            self.terminated = try decoderContainer.decode(ContainerStateTerminated?.self, forKey: .terminated)
        }
        if decoderContainer.contains(.waiting)
        {
            self.waiting = try decoderContainer.decode(ContainerStateWaiting?.self, forKey: .waiting)
        }
    }
}
public extension ContainerState{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ContainerStateCodingKeys.self)
         try encoderContainer.encode(running, forKey: .running)
         try encoderContainer.encode(terminated, forKey: .terminated)
         try encoderContainer.encode(waiting, forKey: .waiting)
    }
}