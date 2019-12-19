import XCTest
@testable import JDCloudSDKCore
@testable import JDCloudSDKVm

class VmTests: XCTestCase{
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
      //  XCTAssertEqual(Core.text, "Hello, World!")
        var queryParamString = "?a=1&b=2"
        queryParamString = String(queryParamString.suffix(queryParamString.count-1))
        print(queryParamString)
    }

    func testVmClient() throws{ 
        let semaphore = DispatchSemaphore(value: 0)
        let credentials = Credential(accessKeyId: "your jdcloud access key id", secretAccessKey: "your jdcloud secret access key id");
        let sdkEnvironment = SDKEnvironment(endPoint: "apigw-internal.cn-north-1.jcloudcs.com")
        let vmClient = VmJDCloudClient(credential: credentials,sdkEnvironment: sdkEnvironment)
        vmClient.httpRequestProtocol="http"
        let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
       // let describeInstancesRequestExt = DescribeInstancesRequestExt(regionId: "cn-north-1");
        GlobalConfig.debug = true ;
        try vmClient.describeInstancesAsync(request: describeInstancesRequest) { (statusCode, requestResponse, error,data) in
             print(statusCode)
             print(requestResponse)
             print(error)
            semaphore.signal()
        }
         _ = semaphore.wait(timeout: DispatchTime.distantFuture)
    }

     static var allTests = [
        ("testVmClient", testVmClient),
    ]
}
