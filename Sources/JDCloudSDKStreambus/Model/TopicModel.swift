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

///  topicModel
@objc(TopicModel)
public class TopicModel:NSObject,Codable{
    /// Topic
    var topic:Topic?
    /// Target
    var target:Target?
    /// 归档相关的具体参数，需要对归档进行新建，更新，删除，修改对应参数值即可。&lt;br&gt;ossFlag，bucketName，directory，objectName 这四个参数值与ossFlag有关，若ossFlag为false，后面三个可为空，若为true，后面三个为异常数据保存位置，按需要填写即可。&lt;br&gt; 1）如果归档到数据计算服务需要传database，table，type，example，delimiter，targetColumn，analysisColumn，partsTargetColumn，partsAnalysisColumn。&lt;br&gt;2）如果归档到JFS需要传bucket，prefix，infix。&lt;br&gt;3）如果归档到京东云 Elasticsearch需要传host，port，indexType，idType，indexName，indexReferField，timestampFieldFormat，timestampIndexFormat，typeName，idReferField，noResolve，username，password。&lt;br&gt; 4）如果归档到mysql，则需要传host，database，table，username，password，type，example，delimiter。 &lt;br&gt;5)如果要归档到京东云数据库则需要传rdsId，database，table，username，password，type，example，delimiter。
    var parameterList:[ParameterList?]?



    public override init(){
            super.init()
    }

    enum TopicModelCodingKeys: String, CodingKey {
        case topic
        case target
        case parameterList
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TopicModelCodingKeys.self)
        if decoderContainer.contains(.topic)
        {
            self.topic = try decoderContainer.decode(Topic?.self, forKey: .topic)
        }
        if decoderContainer.contains(.target)
        {
            self.target = try decoderContainer.decode(Target?.self, forKey: .target)
        }
        if decoderContainer.contains(.parameterList)
        {
            self.parameterList = try decoderContainer.decode([ParameterList?]?.self, forKey: .parameterList)
        }
    }
}
public extension TopicModel{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TopicModelCodingKeys.self)
         try encoderContainer.encode(topic, forKey: .topic)
         try encoderContainer.encode(target, forKey: .target)
         try encoderContainer.encode(parameterList, forKey: .parameterList)
    }
}
