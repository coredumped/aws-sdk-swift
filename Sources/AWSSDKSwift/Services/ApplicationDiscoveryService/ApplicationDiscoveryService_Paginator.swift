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

import NIO

//MARK: Paginators

extension ApplicationDiscoveryService {

    ///  Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
    public func describeContinuousExportsPaginator(_ input: DescribeContinuousExportsRequest, onPage: @escaping (DescribeContinuousExportsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeContinuousExports, tokenKey: \DescribeContinuousExportsResponse.nextToken, onPage: onPage)
    }

    ///  Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
    public func describeImportTasksPaginator(_ input: DescribeImportTasksRequest, onPage: @escaping (DescribeImportTasksResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeImportTasks, tokenKey: \DescribeImportTasksResponse.nextToken, onPage: onPage)
    }

}

extension ApplicationDiscoveryService.DescribeContinuousExportsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeContinuousExportsRequest {
        return .init(
            exportIds: self.exportIds, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension ApplicationDiscoveryService.DescribeImportTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ApplicationDiscoveryService.DescribeImportTasksRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

