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

   TOPIC相关 API
   流数据总线topic相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

///  查看指定主题的所有消费组
public class GetConsumerGroupListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/consumerGroupList")
    }
    
}
///  创建consumerGroupName
public class CreateConsumerGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/consumerGroup")
    }
    
}
///  删除consumerGroupName
public class DeleteConsumerGroupExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/consumerGroup")
    }
    
}
///  查询topic列表，返回topic的集合
public class GetTopicListExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/topicList")
    }
    
}
///  查询指定主题,如果已归档会返回归档信息
public class DescribeTopicExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "GET", url: "/regions/{regionId}/topic")
    }
    
}
///  创建topic时，topicModel中只需要传topic参数，另外两个参数可为空
public class AddTopicExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "POST", url: "/regions/{regionId}/topic")
    }
    
}
///  此接口可以用来更新主题，创建归档，修改归档，删除归档，传入不同的参数可以实现不同的功能。修改归档只需要修改相应归档的参数，删除归档只需要把归档参数置为空即可
public class UpdateTopicExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "PUT", url: "/regions/{regionId}/topic")
    }
    
}
///  删除topic
public class DeleteTopicExecutor:JDCloudExecutor {
    
    public init(jdCloudClient: JDCloudClient) {
        super.init(jdCloudClient: jdCloudClient, method: "DELETE", url: "/regions/{regionId}/topic")
    }
    
}