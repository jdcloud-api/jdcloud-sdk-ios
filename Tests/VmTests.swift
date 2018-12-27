import XCTest
@testable import JDCloudSDKCore
@testable import JDCloudSDKVm

class VmTests: XCTestCase{
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //  XCTAssertEqual(Core.text, "Hello, World!")
    }
    
    func testVmClient() throws{
        
        let semaphore = DispatchSemaphore(value: 0)
        let credentials = Credential(accessKeyId: "TEST AK", secretAccessKey: "TEST SK");
        let sdkEnvironment = SDKEnvironment(endPoint: "TEST END POINT ,IF NOT SET USE DEFALUT")
        let vmClient = VmJDCloudClient(credential: credentials,sdkEnvironment: sdkEnvironment)
        let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
        GlobalConfig.debug = true
        try vmClient.describeInstancesAsync(request: describeInstancesRequest) { (statusCode, requestResponse, error,resultString) in
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
