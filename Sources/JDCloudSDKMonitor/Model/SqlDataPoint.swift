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

///  sqlDataPoint
@objc(SqlDataPoint)
public class SqlDataPoint:NSObject,Codable{
    /// 目前统一用jcloud
    /// Required:true
    var appCode:String
    /// 资源的类型，取值sqlserver
    /// Required:true
    var serviceCode:String
    /// 资源所在的地域
    /// Required:true
    var region:String
    /// 资源的uuid
    /// Required:true
    var resourceId:String
    /// 监控指标名称，长度不超过255字节，只允许英文、数字、下划线_、点.,  [0-9][a-z] [A-Z] [. _ ]， 其它会返回err
    /// Required:true
    var metric:String
    /// 毫秒级时间戳，早于当前时间30天的不能写入；建议的上报时间戳：上报时间间隔的整数倍，如上报间隔为5ms，则建议上报的时间戳为 time &#x3D; current timestamp - (current timestamp % time interval) &#x3D; 1487647187007 - （1487647187007 % 5） &#x3D; 1487647187007 -2 &#x3D; 1487647187005
    /// Required:true
    var time:Int64
    /// 上报的监控值，即慢sql语句已经执行的时间(单位s)
    /// Required:true
    var value:Int64
    /// SQL开始执行的时间
    /// Required:true
    var start_time:String
    /// SQL已执行时间(单位s)
    /// Required:true
    var execution_time:Int64
    /// 会话ID
    /// Required:true
    var session_id:String
    /// 数据库库名
    /// Required:true
    var database:String
    /// 客户端IP地址
    /// Required:true
    var client_net_address:String
    /// 用户名
    /// Required:true
    var loginname:String
    /// SQL会话请求状态
    /// Required:true
    var status:String
    /// SQL详细文本
    /// Required:true
    var sqlstr:String



    public  init(appCode:String,serviceCode:String,region:String,resourceId:String,metric:String,time:Int64,value:Int64,start_time:String,execution_time:Int64,session_id:String,database:String,client_net_address:String,loginname:String,status:String,sqlstr:String){
             self.appCode = appCode
             self.serviceCode = serviceCode
             self.region = region
             self.resourceId = resourceId
             self.metric = metric
             self.time = time
             self.value = value
             self.start_time = start_time
             self.execution_time = execution_time
             self.session_id = session_id
             self.database = database
             self.client_net_address = client_net_address
             self.loginname = loginname
             self.status = status
             self.sqlstr = sqlstr
    }

    enum SqlDataPointCodingKeys: String, CodingKey {
        case appCode
        case serviceCode
        case region
        case resourceId
        case metric
        case time
        case value
        case start_time
        case execution_time
        case session_id
        case database
        case client_net_address
        case loginname
        case status
        case sqlstr
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: SqlDataPointCodingKeys.self)
        self.appCode = try decoderContainer.decode(String.self, forKey: .appCode)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
        self.region = try decoderContainer.decode(String.self, forKey: .region)
        self.resourceId = try decoderContainer.decode(String.self, forKey: .resourceId)
        self.metric = try decoderContainer.decode(String.self, forKey: .metric)
        self.time = try decoderContainer.decode(Int64.self, forKey: .time)
        self.value = try decoderContainer.decode(Int64.self, forKey: .value)
        self.start_time = try decoderContainer.decode(String.self, forKey: .start_time)
        self.execution_time = try decoderContainer.decode(Int64.self, forKey: .execution_time)
        self.session_id = try decoderContainer.decode(String.self, forKey: .session_id)
        self.database = try decoderContainer.decode(String.self, forKey: .database)
        self.client_net_address = try decoderContainer.decode(String.self, forKey: .client_net_address)
        self.loginname = try decoderContainer.decode(String.self, forKey: .loginname)
        self.status = try decoderContainer.decode(String.self, forKey: .status)
        self.sqlstr = try decoderContainer.decode(String.self, forKey: .sqlstr)
    }
}
public extension SqlDataPoint{
    func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SqlDataPointCodingKeys.self)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(metric, forKey: .metric)
         try encoderContainer.encode(time, forKey: .time)
         try encoderContainer.encode(value, forKey: .value)
         try encoderContainer.encode(start_time, forKey: .start_time)
         try encoderContainer.encode(execution_time, forKey: .execution_time)
         try encoderContainer.encode(session_id, forKey: .session_id)
         try encoderContainer.encode(database, forKey: .database)
         try encoderContainer.encode(client_net_address, forKey: .client_net_address)
         try encoderContainer.encode(loginname, forKey: .loginname)
         try encoderContainer.encode(status, forKey: .status)
         try encoderContainer.encode(sqlstr, forKey: .sqlstr)
    }
}
