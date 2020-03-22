// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Neptune {

    ///  Returns a list of the available DB engines.
    public func describeDBEngineVersionsPaginator(_ input: DescribeDBEngineVersionsMessage, onPage: @escaping (DBEngineVersionMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBEngineVersions, tokenKey: \DBEngineVersionMessage.marker, onPage: onPage)
    }

    ///  Returns information about provisioned instances, and supports pagination.  This operation can also return information for Amazon RDS instances and Amazon DocDB instances. 
    public func describeDBInstancesPaginator(_ input: DescribeDBInstancesMessage, onPage: @escaping (DBInstanceMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBInstances, tokenKey: \DBInstanceMessage.marker, onPage: onPage)
    }

    ///  Returns a list of DBParameterGroup descriptions. If a DBParameterGroupName is specified, the list will contain only the description of the specified DB parameter group.
    public func describeDBParameterGroupsPaginator(_ input: DescribeDBParameterGroupsMessage, onPage: @escaping (DBParameterGroupsMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBParameterGroups, tokenKey: \DBParameterGroupsMessage.marker, onPage: onPage)
    }

    ///  Returns the detailed parameter list for a particular DB parameter group.
    public func describeDBParametersPaginator(_ input: DescribeDBParametersMessage, onPage: @escaping (DBParameterGroupDetails, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBParameters, tokenKey: \DBParameterGroupDetails.marker, onPage: onPage)
    }

    ///  Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup. For an overview of CIDR ranges, go to the Wikipedia Tutorial.
    public func describeDBSubnetGroupsPaginator(_ input: DescribeDBSubnetGroupsMessage, onPage: @escaping (DBSubnetGroupMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDBSubnetGroups, tokenKey: \DBSubnetGroupMessage.marker, onPage: onPage)
    }

    ///  Returns the default engine and system parameter information for the specified database engine.
    public func describeEngineDefaultParametersPaginator(_ input: DescribeEngineDefaultParametersMessage, onPage: @escaping (DescribeEngineDefaultParametersResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEngineDefaultParameters, tokenKey: \DescribeEngineDefaultParametersResult.engineDefaults?.marker, onPage: onPage)
    }

    ///  Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status. If you specify a SubscriptionName, lists the description for that subscription.
    public func describeEventSubscriptionsPaginator(_ input: DescribeEventSubscriptionsMessage, onPage: @escaping (EventSubscriptionsMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEventSubscriptions, tokenKey: \EventSubscriptionsMessage.marker, onPage: onPage)
    }

    ///  Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.
    public func describeEventsPaginator(_ input: DescribeEventsMessage, onPage: @escaping (EventsMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEvents, tokenKey: \EventsMessage.marker, onPage: onPage)
    }

    ///  Returns a list of orderable DB instance options for the specified engine.
    public func describeOrderableDBInstanceOptionsPaginator(_ input: DescribeOrderableDBInstanceOptionsMessage, onPage: @escaping (OrderableDBInstanceOptionsMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeOrderableDBInstanceOptions, tokenKey: \OrderableDBInstanceOptionsMessage.marker, onPage: onPage)
    }

}

extension Neptune.DescribeDBEngineVersionsMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeDBEngineVersionsMessage {
        return .init(
            dBParameterGroupFamily: self.dBParameterGroupFamily, 
            defaultOnly: self.defaultOnly, 
            engine: self.engine, 
            engineVersion: self.engineVersion, 
            filters: self.filters, 
            listSupportedCharacterSets: self.listSupportedCharacterSets, 
            listSupportedTimezones: self.listSupportedTimezones, 
            marker: token, 
            maxRecords: self.maxRecords
        )

    }
}

extension Neptune.DescribeDBInstancesMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeDBInstancesMessage {
        return .init(
            dBInstanceIdentifier: self.dBInstanceIdentifier, 
            filters: self.filters, 
            marker: token, 
            maxRecords: self.maxRecords
        )

    }
}

extension Neptune.DescribeDBParameterGroupsMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeDBParameterGroupsMessage {
        return .init(
            dBParameterGroupName: self.dBParameterGroupName, 
            filters: self.filters, 
            marker: token, 
            maxRecords: self.maxRecords
        )

    }
}

extension Neptune.DescribeDBParametersMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeDBParametersMessage {
        return .init(
            dBParameterGroupName: self.dBParameterGroupName, 
            filters: self.filters, 
            marker: token, 
            maxRecords: self.maxRecords, 
            source: self.source
        )

    }
}

extension Neptune.DescribeDBSubnetGroupsMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeDBSubnetGroupsMessage {
        return .init(
            dBSubnetGroupName: self.dBSubnetGroupName, 
            filters: self.filters, 
            marker: token, 
            maxRecords: self.maxRecords
        )

    }
}

extension Neptune.DescribeEngineDefaultParametersMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeEngineDefaultParametersMessage {
        return .init(
            dBParameterGroupFamily: self.dBParameterGroupFamily, 
            filters: self.filters, 
            marker: token, 
            maxRecords: self.maxRecords
        )

    }
}

extension Neptune.DescribeEventSubscriptionsMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeEventSubscriptionsMessage {
        return .init(
            filters: self.filters, 
            marker: token, 
            maxRecords: self.maxRecords, 
            subscriptionName: self.subscriptionName
        )

    }
}

extension Neptune.DescribeEventsMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeEventsMessage {
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

extension Neptune.DescribeOrderableDBInstanceOptionsMessage: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Neptune.DescribeOrderableDBInstanceOptionsMessage {
        return .init(
            dBInstanceClass: self.dBInstanceClass, 
            engine: self.engine, 
            engineVersion: self.engineVersion, 
            filters: self.filters, 
            licenseModel: self.licenseModel, 
            marker: token, 
            maxRecords: self.maxRecords, 
            vpc: self.vpc
        )

    }
}


