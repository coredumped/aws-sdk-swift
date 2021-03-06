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
Client object for interacting with AWS CodeBuild service.

AWS CodeBuild AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about AWS CodeBuild, see the  AWS CodeBuild User Guide.  AWS CodeBuild supports these operations:    BatchDeleteBuilds: Deletes one or more builds.    BatchGetBuilds: Gets information about one or more builds.    BatchGetProjects: Gets information about one or more build projects. A build project defines how AWS CodeBuild runs a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A build environment is a representation of operating system, programming language runtime, and tools that AWS CodeBuild uses to run a build. You can add tags to build projects to help manage your resources and costs.    BatchGetReportGroups: Returns an array of report groups.     BatchGetReports: Returns an array of reports.     CreateProject: Creates a build project.    CreateReportGroup: Creates a report group. A report group contains a collection of reports.     CreateWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.    DeleteProject: Deletes a build project.    DeleteReport: Deletes a report.     DeleteReportGroup: Deletes a report group.     DeleteResourcePolicy: Deletes a resource policy that is identified by its resource ARN.     DeleteSourceCredentials: Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.    DeleteWebhook: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.    DescribeTestCases: Returns a list of details about test cases for a report.     GetResourcePolicy: Gets a resource policy that is identified by its resource ARN.     ImportSourceCredentials: Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.    InvalidateProjectCache: Resets the cache for a project.    ListBuilds: Gets a list of build IDs, with each build ID representing a single build.    ListBuildsForProject: Gets a list of build IDs for the specified build project, with each build ID representing a single build.    ListCuratedEnvironmentImages: Gets information about Docker images that are managed by AWS CodeBuild.    ListProjects: Gets a list of build project names, with each build project name representing a single build project.    ListReportGroups: Gets a list ARNs for the report groups in the current AWS account.     ListReports: Gets a list ARNs for the reports in the current AWS account.     ListReportsForReportGroup: Returns a list of ARNs for the reports that belong to a ReportGroup.     ListSharedProjects: Gets a list of ARNs associated with projects shared with the current AWS account or user.    ListSharedReportGroups: Gets a list of ARNs associated with report groups shared with the current AWS account or user    ListSourceCredentials: Returns a list of SourceCredentialsInfo objects. Each SourceCredentialsInfo object includes the authentication type, token ARN, and type of source provider for one set of credentials.    PutResourcePolicy: Stores a resource policy for the ARN of a Project or ReportGroup object.     StartBuild: Starts running a build.    StopBuild: Attempts to stop running a build.    UpdateProject: Changes the settings of an existing build project.    UpdateReportGroup: Changes a report group.    UpdateWebhook: Changes the settings of an existing webhook.  
*/
public struct CodeBuild {

    // MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeBuild client
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
            amzTarget: "CodeBuild_20161006",
            service: "codebuild",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-06",
            endpoint: endpoint,
            possibleErrorTypes: [CodeBuildErrorType.self],
            timeout: timeout
        )
    }
    
    // MARK: API Calls

    ///  Deletes one or more builds.
    public func batchDeleteBuilds(_ input: BatchDeleteBuildsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDeleteBuildsOutput> {
        return self.client.execute(operation: "BatchDeleteBuilds", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves information about one or more batch builds.
    public func batchGetBuildBatches(_ input: BatchGetBuildBatchesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetBuildBatchesOutput> {
        return self.client.execute(operation: "BatchGetBuildBatches", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about one or more builds.
    public func batchGetBuilds(_ input: BatchGetBuildsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetBuildsOutput> {
        return self.client.execute(operation: "BatchGetBuilds", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about one or more build projects.
    public func batchGetProjects(_ input: BatchGetProjectsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetProjectsOutput> {
        return self.client.execute(operation: "BatchGetProjects", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns an array of report groups. 
    public func batchGetReportGroups(_ input: BatchGetReportGroupsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetReportGroupsOutput> {
        return self.client.execute(operation: "BatchGetReportGroups", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns an array of reports. 
    public func batchGetReports(_ input: BatchGetReportsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchGetReportsOutput> {
        return self.client.execute(operation: "BatchGetReports", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a build project.
    public func createProject(_ input: CreateProjectInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateProjectOutput> {
        return self.client.execute(operation: "CreateProject", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Creates a report group. A report group contains a collection of reports. 
    public func createReportGroup(_ input: CreateReportGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateReportGroupOutput> {
        return self.client.execute(operation: "CreateReportGroup", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.  If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in Change a Build Project's Settings. 
    public func createWebhook(_ input: CreateWebhookInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateWebhookOutput> {
        return self.client.execute(operation: "CreateWebhook", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a batch build.
    public func deleteBuildBatch(_ input: DeleteBuildBatchInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteBuildBatchOutput> {
        return self.client.execute(operation: "DeleteBuildBatch", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes a build project. When you delete a project, its builds are not deleted. 
    public func deleteProject(_ input: DeleteProjectInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteProjectOutput> {
        return self.client.execute(operation: "DeleteProject", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes a report. 
    public func deleteReport(_ input: DeleteReportInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteReportOutput> {
        return self.client.execute(operation: "DeleteReport", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   DeleteReportGroup: Deletes a report group. Before you delete a report group, you must delete its reports. Use ListReportsForReportGroup to get the reports in a report group. Use DeleteReport to delete the reports. If you call DeleteReportGroup for a report group that contains one or more reports, an exception is thrown. 
    public func deleteReportGroup(_ input: DeleteReportGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteReportGroupOutput> {
        return self.client.execute(operation: "DeleteReportGroup", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes a resource policy that is identified by its resource ARN. 
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteResourcePolicyOutput> {
        return self.client.execute(operation: "DeleteResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. 
    public func deleteSourceCredentials(_ input: DeleteSourceCredentialsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteSourceCredentialsOutput> {
        return self.client.execute(operation: "DeleteSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.
    public func deleteWebhook(_ input: DeleteWebhookInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteWebhookOutput> {
        return self.client.execute(operation: "DeleteWebhook", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves one or more code coverage reports.
    public func describeCodeCoverages(_ input: DescribeCodeCoveragesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeCodeCoveragesOutput> {
        return self.client.execute(operation: "DescribeCodeCoverages", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of details about test cases for a report. 
    public func describeTestCases(_ input: DescribeTestCasesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeTestCasesOutput> {
        return self.client.execute(operation: "DescribeTestCases", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets a resource policy that is identified by its resource ARN. 
    public func getResourcePolicy(_ input: GetResourcePolicyInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResourcePolicyOutput> {
        return self.client.execute(operation: "GetResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. 
    public func importSourceCredentials(_ input: ImportSourceCredentialsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ImportSourceCredentialsOutput> {
        return self.client.execute(operation: "ImportSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Resets the cache for a project.
    public func invalidateProjectCache(_ input: InvalidateProjectCacheInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<InvalidateProjectCacheOutput> {
        return self.client.execute(operation: "InvalidateProjectCache", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the identifiers of your build batches in the current region.
    public func listBuildBatches(_ input: ListBuildBatchesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBuildBatchesOutput> {
        return self.client.execute(operation: "ListBuildBatches", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the identifiers of the build batches for a specific project.
    public func listBuildBatchesForProject(_ input: ListBuildBatchesForProjectInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBuildBatchesForProjectOutput> {
        return self.client.execute(operation: "ListBuildBatchesForProject", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of build IDs, with each build ID representing a single build.
    public func listBuilds(_ input: ListBuildsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBuildsOutput> {
        return self.client.execute(operation: "ListBuilds", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of build IDs for the specified build project, with each build ID representing a single build.
    public func listBuildsForProject(_ input: ListBuildsForProjectInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBuildsForProjectOutput> {
        return self.client.execute(operation: "ListBuildsForProject", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about Docker images that are managed by AWS CodeBuild.
    public func listCuratedEnvironmentImages(_ input: ListCuratedEnvironmentImagesInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListCuratedEnvironmentImagesOutput> {
        return self.client.execute(operation: "ListCuratedEnvironmentImages", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets a list of build project names, with each build project name representing a single build project.
    public func listProjects(_ input: ListProjectsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListProjectsOutput> {
        return self.client.execute(operation: "ListProjects", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets a list ARNs for the report groups in the current AWS account. 
    public func listReportGroups(_ input: ListReportGroupsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListReportGroupsOutput> {
        return self.client.execute(operation: "ListReportGroups", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of ARNs for the reports in the current AWS account. 
    public func listReports(_ input: ListReportsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListReportsOutput> {
        return self.client.execute(operation: "ListReports", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of ARNs for the reports that belong to a ReportGroup. 
    public func listReportsForReportGroup(_ input: ListReportsForReportGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListReportsForReportGroupOutput> {
        return self.client.execute(operation: "ListReportsForReportGroup", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets a list of projects that are shared with other AWS accounts or users. 
    public func listSharedProjects(_ input: ListSharedProjectsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSharedProjectsOutput> {
        return self.client.execute(operation: "ListSharedProjects", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets a list of report groups that are shared with other AWS accounts or users. 
    public func listSharedReportGroups(_ input: ListSharedReportGroupsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSharedReportGroupsOutput> {
        return self.client.execute(operation: "ListSharedReportGroups", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of SourceCredentialsInfo objects. 
    public func listSourceCredentials(_ input: ListSourceCredentialsInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListSourceCredentialsOutput> {
        return self.client.execute(operation: "ListSourceCredentials", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Stores a resource policy for the ARN of a Project or ReportGroup object. 
    public func putResourcePolicy(_ input: PutResourcePolicyInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutResourcePolicyOutput> {
        return self.client.execute(operation: "PutResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Restarts a build.
    public func retryBuild(_ input: RetryBuildInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RetryBuildOutput> {
        return self.client.execute(operation: "RetryBuild", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Restarts a batch build.
    public func retryBuildBatch(_ input: RetryBuildBatchInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RetryBuildBatchOutput> {
        return self.client.execute(operation: "RetryBuildBatch", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts running a build.
    public func startBuild(_ input: StartBuildInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartBuildOutput> {
        return self.client.execute(operation: "StartBuild", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts a batch build for a project.
    public func startBuildBatch(_ input: StartBuildBatchInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartBuildBatchOutput> {
        return self.client.execute(operation: "StartBuildBatch", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Attempts to stop running a build.
    public func stopBuild(_ input: StopBuildInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopBuildOutput> {
        return self.client.execute(operation: "StopBuild", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a running batch build.
    public func stopBuildBatch(_ input: StopBuildBatchInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopBuildBatchOutput> {
        return self.client.execute(operation: "StopBuildBatch", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes the settings of a build project.
    public func updateProject(_ input: UpdateProjectInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateProjectOutput> {
        return self.client.execute(operation: "UpdateProject", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Updates a report group. 
    public func updateReportGroup(_ input: UpdateReportGroupInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateReportGroupOutput> {
        return self.client.execute(operation: "UpdateReportGroup", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }

    ///   Updates the webhook associated with an AWS CodeBuild build project.    If you use Bitbucket for your repository, rotateSecret is ignored.  
    public func updateWebhook(_ input: UpdateWebhookInput, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateWebhookOutput> {
        return self.client.execute(operation: "UpdateWebhook", path: "/", httpMethod: .POST, serviceConfig: serviceConfig, input: input, on: eventLoop, logger: logger)
    }
}
