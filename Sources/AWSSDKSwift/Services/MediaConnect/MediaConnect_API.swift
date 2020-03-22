// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS MediaConnect service.

API for AWS Elemental MediaConnect
*/
public struct MediaConnect {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaConnect client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "mediaconnect",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaConnectErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds outputs to an existing flow. You can create up to 50 outputs per flow.
    public func addFlowOutputs(_ input: AddFlowOutputsRequest) -> EventLoopFuture<AddFlowOutputsResponse> {
        return client.send(operation: "AddFlowOutputs", path: "/v1/flows/{flowArn}/outputs", httpMethod: "POST", input: input)
    }

    ///  Adds Sources to flow
    public func addFlowSources(_ input: AddFlowSourcesRequest) -> EventLoopFuture<AddFlowSourcesResponse> {
        return client.send(operation: "AddFlowSources", path: "/v1/flows/{flowArn}/source", httpMethod: "POST", input: input)
    }

    ///  Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    public func createFlow(_ input: CreateFlowRequest) -> EventLoopFuture<CreateFlowResponse> {
        return client.send(operation: "CreateFlow", path: "/v1/flows", httpMethod: "POST", input: input)
    }

    ///  Deletes a flow. Before you can delete a flow, you must stop the flow.
    public func deleteFlow(_ input: DeleteFlowRequest) -> EventLoopFuture<DeleteFlowResponse> {
        return client.send(operation: "DeleteFlow", path: "/v1/flows/{flowArn}", httpMethod: "DELETE", input: input)
    }

    ///  Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
    public func describeFlow(_ input: DescribeFlowRequest) -> EventLoopFuture<DescribeFlowResponse> {
        return client.send(operation: "DescribeFlow", path: "/v1/flows/{flowArn}", httpMethod: "GET", input: input)
    }

    ///  Grants entitlements to an existing flow.
    public func grantFlowEntitlements(_ input: GrantFlowEntitlementsRequest) -> EventLoopFuture<GrantFlowEntitlementsResponse> {
        return client.send(operation: "GrantFlowEntitlements", path: "/v1/flows/{flowArn}/entitlements", httpMethod: "POST", input: input)
    }

    ///  Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    public func listEntitlements(_ input: ListEntitlementsRequest) -> EventLoopFuture<ListEntitlementsResponse> {
        return client.send(operation: "ListEntitlements", path: "/v1/entitlements", httpMethod: "GET", input: input)
    }

    ///  Displays a list of flows that are associated with this account. This request returns a paginated result.
    public func listFlows(_ input: ListFlowsRequest) -> EventLoopFuture<ListFlowsResponse> {
        return client.send(operation: "ListFlows", path: "/v1/flows", httpMethod: "GET", input: input)
    }

    ///  List all tags on an AWS Elemental MediaConnect resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
    public func removeFlowOutput(_ input: RemoveFlowOutputRequest) -> EventLoopFuture<RemoveFlowOutputResponse> {
        return client.send(operation: "RemoveFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: "DELETE", input: input)
    }

    ///  Removes a source from an existing flow. This request can be made only if there is more than one source on the flow.
    public func removeFlowSource(_ input: RemoveFlowSourceRequest) -> EventLoopFuture<RemoveFlowSourceResponse> {
        return client.send(operation: "RemoveFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
    public func revokeFlowEntitlement(_ input: RevokeFlowEntitlementRequest) -> EventLoopFuture<RevokeFlowEntitlementResponse> {
        return client.send(operation: "RevokeFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: "DELETE", input: input)
    }

    ///  Starts a flow.
    public func startFlow(_ input: StartFlowRequest) -> EventLoopFuture<StartFlowResponse> {
        return client.send(operation: "StartFlow", path: "/v1/flows/start/{flowArn}", httpMethod: "POST", input: input)
    }

    ///  Stops a flow.
    public func stopFlow(_ input: StopFlowRequest) -> EventLoopFuture<StopFlowResponse> {
        return client.send(operation: "StopFlow", path: "/v1/flows/stop/{flowArn}", httpMethod: "POST", input: input)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    @discardableResult public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Deletes specified tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates flow
    public func updateFlow(_ input: UpdateFlowRequest) -> EventLoopFuture<UpdateFlowResponse> {
        return client.send(operation: "UpdateFlow", path: "/v1/flows/{flowArn}", httpMethod: "PUT", input: input)
    }

    ///  You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
    public func updateFlowEntitlement(_ input: UpdateFlowEntitlementRequest) -> EventLoopFuture<UpdateFlowEntitlementResponse> {
        return client.send(operation: "UpdateFlowEntitlement", path: "/v1/flows/{flowArn}/entitlements/{entitlementArn}", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing flow output.
    public func updateFlowOutput(_ input: UpdateFlowOutputRequest) -> EventLoopFuture<UpdateFlowOutputResponse> {
        return client.send(operation: "UpdateFlowOutput", path: "/v1/flows/{flowArn}/outputs/{outputArn}", httpMethod: "PUT", input: input)
    }

    ///  Updates the source of a flow.
    public func updateFlowSource(_ input: UpdateFlowSourceRequest) -> EventLoopFuture<UpdateFlowSourceResponse> {
        return client.send(operation: "UpdateFlowSource", path: "/v1/flows/{flowArn}/source/{sourceArn}", httpMethod: "PUT", input: input)
    }
}
