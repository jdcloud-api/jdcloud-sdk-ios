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
        let credentials = Credential(accessKeyId: "ak for jdcloud user", secretAccessKey: "sk for jdcloud user");
	
	/// if use defalut endPoint not need create this 
        let sdkEnvironment = SDKEnvironment(endPoint: "")
	
	/// if use default endPoint please use `VmJDCloudClient(credential:credentials)` to init 
        let vmClient = VmJDCloudClient(credential: credentials,sdkEnvironment: sdkEnvironment)
        
	/// the http scheme default is https if use http set this param
	vmClient.httpRequestProtocol = "http"
       
	/// the request param
	let describeInstancesRequest = DescribeInstancesRequest(regionId: "cn-north-1");
        
	/// Global param setting like credentials and sdkEnvironment
	GlobalConfig.debug = true 
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
