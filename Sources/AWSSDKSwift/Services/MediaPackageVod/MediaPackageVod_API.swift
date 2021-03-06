//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS MediaPackageVod service.

AWS Elemental MediaPackage VOD
*/
public struct MediaPackageVod {

    // MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaPackageVod client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil
    ) {
        self.client = client
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "mediapackage-vod",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-07",
            endpoint: endpoint,
            possibleErrorTypes: [MediaPackageVodErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Creates a new MediaPackage VOD Asset resource.
    public func createAsset(_ input: CreateAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateAssetResponse> {
        return self.client.execute(operation: "CreateAsset", path: "/assets", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new MediaPackage VOD PackagingConfiguration resource.
    public func createPackagingConfiguration(_ input: CreatePackagingConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreatePackagingConfigurationResponse> {
        return self.client.execute(operation: "CreatePackagingConfiguration", path: "/packaging_configurations", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new MediaPackage VOD PackagingGroup resource.
    public func createPackagingGroup(_ input: CreatePackagingGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreatePackagingGroupResponse> {
        return self.client.execute(operation: "CreatePackagingGroup", path: "/packaging_groups", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an existing MediaPackage VOD Asset resource.
    public func deleteAsset(_ input: DeleteAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteAssetResponse> {
        return self.client.execute(operation: "DeleteAsset", path: "/assets/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a MediaPackage VOD PackagingConfiguration resource.
    public func deletePackagingConfiguration(_ input: DeletePackagingConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeletePackagingConfigurationResponse> {
        return self.client.execute(operation: "DeletePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a MediaPackage VOD PackagingGroup resource.
    public func deletePackagingGroup(_ input: DeletePackagingGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeletePackagingGroupResponse> {
        return self.client.execute(operation: "DeletePackagingGroup", path: "/packaging_groups/{id}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a description of a MediaPackage VOD Asset resource.
    public func describeAsset(_ input: DescribeAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeAssetResponse> {
        return self.client.execute(operation: "DescribeAsset", path: "/assets/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    public func describePackagingConfiguration(_ input: DescribePackagingConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribePackagingConfigurationResponse> {
        return self.client.execute(operation: "DescribePackagingConfiguration", path: "/packaging_configurations/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a description of a MediaPackage VOD PackagingGroup resource.
    public func describePackagingGroup(_ input: DescribePackagingGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribePackagingGroupResponse> {
        return self.client.execute(operation: "DescribePackagingGroup", path: "/packaging_groups/{id}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a collection of MediaPackage VOD Asset resources.
    public func listAssets(_ input: ListAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListAssetsResponse> {
        return self.client.execute(operation: "ListAssets", path: "/assets", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    public func listPackagingConfigurations(_ input: ListPackagingConfigurationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPackagingConfigurationsResponse> {
        return self.client.execute(operation: "ListPackagingConfigurations", path: "/packaging_configurations", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a collection of MediaPackage VOD PackagingGroup resources.
    public func listPackagingGroups(_ input: ListPackagingGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPackagingGroupsResponse> {
        return self.client.execute(operation: "ListPackagingGroups", path: "/packaging_groups", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the tags assigned to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: .GET, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds tags to the specified resource. You can specify one or more tags to add.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes tags from the specified resource. You can specify one or more tags to remove.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.
    public func updatePackagingGroup(_ input: UpdatePackagingGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdatePackagingGroupResponse> {
        return self.client.execute(operation: "UpdatePackagingGroup", path: "/packaging_groups/{id}", httpMethod: .PUT, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
