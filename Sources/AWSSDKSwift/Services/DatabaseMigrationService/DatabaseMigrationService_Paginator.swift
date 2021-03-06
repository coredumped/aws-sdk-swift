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

import AWSSDKSwiftCore

// MARK: Paginators

extension DatabaseMigrationService {

    ///  Provides a list of individual assessments that you can specify for a new premigration assessment run, given one or more parameters. If you specify an existing migration task, this operation provides the default individual assessments you can specify for that task. Otherwise, the specified parameters model elements of a possible migration task on which to base a premigration assessment run. To use these migration task modeling parameters, you must specify an existing replication instance, a source database engine, a target database engine, and a migration type. This combination of parameters potentially limits the default individual assessments available for an assessment run created for a corresponding migration task. If you specify no parameters, this operation provides a list of all possible individual assessments that you can specify for an assessment run. If you specify any one of the task modeling parameters, you must specify all of them or the operation cannot provide a list of individual assessments. The only parameter that you can specify alone is for an existing migration task. The specified task definition then determines the default list of individual assessments that you can specify in an assessment run for the task.
    public func describeApplicableIndividualAssessmentsPaginator(
        _ input: DescribeApplicableIndividualAssessmentsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeApplicableIndividualAssessmentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeApplicableIndividualAssessments, tokenKey: \DescribeApplicableIndividualAssessmentsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Provides a description of the certificate.
    public func describeCertificatesPaginator(
        _ input: DescribeCertificatesMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeCertificatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeCertificates, tokenKey: \DescribeCertificatesResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
    public func describeConnectionsPaginator(
        _ input: DescribeConnectionsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeConnections, tokenKey: \DescribeConnectionsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about the type of endpoints available.
    public func describeEndpointTypesPaginator(
        _ input: DescribeEndpointTypesMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeEndpointTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEndpointTypes, tokenKey: \DescribeEndpointTypesResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about the endpoints for your account in the current region.
    public func describeEndpointsPaginator(
        _ input: DescribeEndpointsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEndpoints, tokenKey: \DescribeEndpointsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.
    public func describeEventSubscriptionsPaginator(
        _ input: DescribeEventSubscriptionsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeEventSubscriptionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEventSubscriptions, tokenKey: \DescribeEventSubscriptionsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///   Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see Working with Events and Notifications in the AWS Database Migration User Guide. 
    public func describeEventsPaginator(
        _ input: DescribeEventsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEvents, tokenKey: \DescribeEventsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about the replication instance types that can be created in the specified region.
    public func describeOrderableReplicationInstancesPaginator(
        _ input: DescribeOrderableReplicationInstancesMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeOrderableReplicationInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeOrderableReplicationInstances, tokenKey: \DescribeOrderableReplicationInstancesResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  For internal use only
    public func describePendingMaintenanceActionsPaginator(
        _ input: DescribePendingMaintenanceActionsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribePendingMaintenanceActionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describePendingMaintenanceActions, tokenKey: \DescribePendingMaintenanceActionsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about the task logs for the specified task.
    public func describeReplicationInstanceTaskLogsPaginator(
        _ input: DescribeReplicationInstanceTaskLogsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReplicationInstanceTaskLogsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReplicationInstanceTaskLogs, tokenKey: \DescribeReplicationInstanceTaskLogsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about replication instances for your account in the current region.
    public func describeReplicationInstancesPaginator(
        _ input: DescribeReplicationInstancesMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReplicationInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReplicationInstances, tokenKey: \DescribeReplicationInstancesResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about the replication subnet groups.
    public func describeReplicationSubnetGroupsPaginator(
        _ input: DescribeReplicationSubnetGroupsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReplicationSubnetGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReplicationSubnetGroups, tokenKey: \DescribeReplicationSubnetGroupsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns the task assessment results from Amazon S3. This action always returns the latest results.
    public func describeReplicationTaskAssessmentResultsPaginator(
        _ input: DescribeReplicationTaskAssessmentResultsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReplicationTaskAssessmentResultsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReplicationTaskAssessmentResults, tokenKey: \DescribeReplicationTaskAssessmentResultsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns a paginated list of premigration assessment runs based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, replication instances, and assessment run status values.  This operation doesn't return information about individual assessments. For this information, see the DescribeReplicationTaskIndividualAssessments operation.  
    public func describeReplicationTaskAssessmentRunsPaginator(
        _ input: DescribeReplicationTaskAssessmentRunsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReplicationTaskAssessmentRunsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReplicationTaskAssessmentRuns, tokenKey: \DescribeReplicationTaskAssessmentRunsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns a paginated list of individual assessments based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, and assessment status values.
    public func describeReplicationTaskIndividualAssessmentsPaginator(
        _ input: DescribeReplicationTaskIndividualAssessmentsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReplicationTaskIndividualAssessmentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReplicationTaskIndividualAssessments, tokenKey: \DescribeReplicationTaskIndividualAssessmentsResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about replication tasks for your account in the current region.
    public func describeReplicationTasksPaginator(
        _ input: DescribeReplicationTasksMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeReplicationTasksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeReplicationTasks, tokenKey: \DescribeReplicationTasksResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about the schema for the specified endpoint. 
    public func describeSchemasPaginator(
        _ input: DescribeSchemasMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeSchemasResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeSchemas, tokenKey: \DescribeSchemasResponse.marker, on: eventLoop, onPage: onPage)
    }

    ///  Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
    public func describeTableStatisticsPaginator(
        _ input: DescribeTableStatisticsMessage,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeTableStatisticsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeTableStatistics, tokenKey: \DescribeTableStatisticsResponse.marker, on: eventLoop, onPage: onPage)
    }

}

extension DatabaseMigrationService.DescribeApplicableIndividualAssessmentsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeApplicableIndividualAssessmentsMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            migrationType: self.migrationType,
            replicationInstanceArn: self.replicationInstanceArn,
            replicationTaskArn: self.replicationTaskArn,
            sourceEngineName: self.sourceEngineName,
            targetEngineName: self.targetEngineName
        )

    }
}

extension DatabaseMigrationService.DescribeCertificatesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeCertificatesMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeConnectionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeConnectionsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeEndpointTypesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeEndpointTypesMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeEndpointsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeEndpointsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeEventSubscriptionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeEventSubscriptionsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            subscriptionName: self.subscriptionName
        )

    }
}

extension DatabaseMigrationService.DescribeEventsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeEventsMessage {
        return .init(
            duration: self.duration,
            endTime: self.endTime,
            eventCategories: self.eventCategories,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            sourceIdentifier: self.sourceIdentifier,
            sourceType: self.sourceType,
            startTime: self.startTime
        )

    }
}

extension DatabaseMigrationService.DescribeOrderableReplicationInstancesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeOrderableReplicationInstancesMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribePendingMaintenanceActionsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribePendingMaintenanceActionsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            replicationInstanceArn: self.replicationInstanceArn
        )

    }
}

extension DatabaseMigrationService.DescribeReplicationInstanceTaskLogsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeReplicationInstanceTaskLogsMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            replicationInstanceArn: self.replicationInstanceArn
        )

    }
}

extension DatabaseMigrationService.DescribeReplicationInstancesMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeReplicationInstancesMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeReplicationSubnetGroupsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeReplicationSubnetGroupsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeReplicationTaskAssessmentResultsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeReplicationTaskAssessmentResultsMessage {
        return .init(
            marker: token,
            maxRecords: self.maxRecords,
            replicationTaskArn: self.replicationTaskArn
        )

    }
}

extension DatabaseMigrationService.DescribeReplicationTaskAssessmentRunsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeReplicationTaskAssessmentRunsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeReplicationTaskIndividualAssessmentsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeReplicationTaskIndividualAssessmentsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeReplicationTasksMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeReplicationTasksMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            withoutSettings: self.withoutSettings
        )

    }
}

extension DatabaseMigrationService.DescribeSchemasMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeSchemasMessage {
        return .init(
            endpointArn: self.endpointArn,
            marker: token,
            maxRecords: self.maxRecords
        )

    }
}

extension DatabaseMigrationService.DescribeTableStatisticsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DatabaseMigrationService.DescribeTableStatisticsMessage {
        return .init(
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            replicationTaskArn: self.replicationTaskArn
        )

    }
}

