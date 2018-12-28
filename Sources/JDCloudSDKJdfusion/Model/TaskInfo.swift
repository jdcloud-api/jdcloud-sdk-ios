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

///  taskInfo
@objc(TaskInfo)
public class TaskInfo:NSObject,Codable{
    /// 任务执行开始时间
    var beginTime:String?
    /// 任务执行结束时间
    var endTime:String?
    /// 任务执行状态：running、finished
    var taskStatus:String?
    /// 任务执行结果：done、error、nochange
    var taskResult:String?
    /// 任务执行最后编码:
      /// CREATEING_RESOURCE_INFO-&gt;未完成:正在构建目标资源信息
      /// CREATE_RESOURCE_INFO_ERROR-&gt;失败完成:目标资源描述信息创建失败！
      /// CREATE_RESOURCE_INFO_SUCCESS-&gt;未完成:目标资源描述信息创建成功！开始初始化构建程序
      /// PROGRAM_INITING-&gt;未完成:正在初始化构建程序
      /// PROGRAM_INIT_ERROR-&gt;失败完成:构建程序初始化失败！
      /// PROGRAM_INIT_SUCCESS-&gt;未完成:构建程序初始化成功！开始分析本次构建任务
      /// TASK_PLAN_ERROR-&gt;失败完成:构建分析发生错误！
      /// TASK_PLAN_NOCHANGE-&gt;完成:本次构建无可执行操作
      /// TASK_PLAN_SUCCESS-&gt;未完成:分析完成！开始执行资源构建
      /// TASK_RUN_FAILED-&gt;失败完成:资源构建任务执行失败！
      /// TASK_RUN_NOCHANGE-&gt;完成:本次构建未执行任何操作
      /// TASK_RUN_SUCCESS-&gt;完成:资源构建任务执行完毕！
    var lastCode:String?
    /// 任务执行之后编码描述
    var taskLastInfo:String?
    /// 任务执行成功后返回的ID列表
    var resourceIDs:[AnyObject?]?
    /// 任务执行日志信息
    var msg:[AnyObject?]?



    public override init(){
            super.init()
    }

    enum TaskInfoCodingKeys: String, CodingKey {
        case beginTime
        case endTime
        case taskStatus
        case taskResult
        case lastCode
        case taskLastInfo
        case resourceIDs
        case msg
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: TaskInfoCodingKeys.self)
        self.beginTime = try decoderContainer.decode(String?.self, forKey: .beginTime)
        self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        self.taskStatus = try decoderContainer.decode(String?.self, forKey: .taskStatus)
        self.taskResult = try decoderContainer.decode(String?.self, forKey: .taskResult)
        self.lastCode = try decoderContainer.decode(String?.self, forKey: .lastCode)
        self.taskLastInfo = try decoderContainer.decode(String?.self, forKey: .taskLastInfo)
    }
}
public extension TaskInfo{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: TaskInfoCodingKeys.self)
         try encoderContainer.encode(beginTime, forKey: .beginTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(taskStatus, forKey: .taskStatus)
         try encoderContainer.encode(taskResult, forKey: .taskResult)
         try encoderContainer.encode(lastCode, forKey: .lastCode)
         try encoderContainer.encode(taskLastInfo, forKey: .taskLastInfo)
    }
}
