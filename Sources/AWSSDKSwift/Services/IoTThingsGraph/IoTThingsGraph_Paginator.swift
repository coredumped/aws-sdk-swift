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

extension IoTThingsGraph {

    ///  Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.
    public func getFlowTemplateRevisionsPaginator(_ input: GetFlowTemplateRevisionsRequest, onPage: @escaping (GetFlowTemplateRevisionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getFlowTemplateRevisions, tokenKey: \GetFlowTemplateRevisionsResponse.nextToken, onPage: onPage)
    }

    ///  Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.
    public func getSystemTemplateRevisionsPaginator(_ input: GetSystemTemplateRevisionsRequest, onPage: @escaping (GetSystemTemplateRevisionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getSystemTemplateRevisions, tokenKey: \GetSystemTemplateRevisionsResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of objects that contain information about events in a flow execution.
    public func listFlowExecutionMessagesPaginator(_ input: ListFlowExecutionMessagesRequest, onPage: @escaping (ListFlowExecutionMessagesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFlowExecutionMessages, tokenKey: \ListFlowExecutionMessagesResponse.nextToken, onPage: onPage)
    }

    ///  Lists all tags on an AWS IoT Things Graph resource.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest, onPage: @escaping (ListTagsForResourceResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, onPage: onPage)
    }

    ///  Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.
    public func searchEntitiesPaginator(_ input: SearchEntitiesRequest, onPage: @escaping (SearchEntitiesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchEntities, tokenKey: \SearchEntitiesResponse.nextToken, onPage: onPage)
    }

    ///  Searches for AWS IoT Things Graph workflow execution instances.
    public func searchFlowExecutionsPaginator(_ input: SearchFlowExecutionsRequest, onPage: @escaping (SearchFlowExecutionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchFlowExecutions, tokenKey: \SearchFlowExecutionsResponse.nextToken, onPage: onPage)
    }

    ///  Searches for summary information about workflows.
    public func searchFlowTemplatesPaginator(_ input: SearchFlowTemplatesRequest, onPage: @escaping (SearchFlowTemplatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchFlowTemplates, tokenKey: \SearchFlowTemplatesResponse.nextToken, onPage: onPage)
    }

    ///  Searches for system instances in the user's account.
    public func searchSystemInstancesPaginator(_ input: SearchSystemInstancesRequest, onPage: @escaping (SearchSystemInstancesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchSystemInstances, tokenKey: \SearchSystemInstancesResponse.nextToken, onPage: onPage)
    }

    ///  Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.
    public func searchSystemTemplatesPaginator(_ input: SearchSystemTemplatesRequest, onPage: @escaping (SearchSystemTemplatesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchSystemTemplates, tokenKey: \SearchSystemTemplatesResponse.nextToken, onPage: onPage)
    }

    ///  Searches for things associated with the specified entity. You can search by both device and device model. For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. SearchThings(camera2) will return only thing2, but SearchThings(camera) will return both thing1 and thing2. This action searches for exact matches and doesn't perform partial text matching.
    public func searchThingsPaginator(_ input: SearchThingsRequest, onPage: @escaping (SearchThingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: searchThings, tokenKey: \SearchThingsResponse.nextToken, onPage: onPage)
    }

}

extension IoTThingsGraph.GetFlowTemplateRevisionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.GetFlowTemplateRevisionsRequest {
        return .init(
            id: self.id, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTThingsGraph.GetSystemTemplateRevisionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.GetSystemTemplateRevisionsRequest {
        return .init(
            id: self.id, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTThingsGraph.ListFlowExecutionMessagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.ListFlowExecutionMessagesRequest {
        return .init(
            flowExecutionId: self.flowExecutionId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTThingsGraph.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}

extension IoTThingsGraph.SearchEntitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.SearchEntitiesRequest {
        return .init(
            entityTypes: self.entityTypes, 
            filters: self.filters, 
            maxResults: self.maxResults, 
            namespaceVersion: self.namespaceVersion, 
            nextToken: token
        )

    }
}

extension IoTThingsGraph.SearchFlowExecutionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.SearchFlowExecutionsRequest {
        return .init(
            endTime: self.endTime, 
            flowExecutionId: self.flowExecutionId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            startTime: self.startTime, 
            systemInstanceId: self.systemInstanceId
        )

    }
}

extension IoTThingsGraph.SearchFlowTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.SearchFlowTemplatesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTThingsGraph.SearchSystemInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.SearchSystemInstancesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTThingsGraph.SearchSystemTemplatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.SearchSystemTemplatesRequest {
        return .init(
            filters: self.filters, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension IoTThingsGraph.SearchThingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> IoTThingsGraph.SearchThingsRequest {
        return .init(
            entityId: self.entityId, 
            maxResults: self.maxResults, 
            namespaceVersion: self.namespaceVersion, 
            nextToken: token
        )

    }
}

