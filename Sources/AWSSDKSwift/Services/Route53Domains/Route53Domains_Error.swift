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

/// Error enum for Route53Domains
public enum Route53DomainsErrorType: AWSErrorType {
    case domainLimitExceeded(message: String?)
    case duplicateRequest(message: String?)
    case invalidInput(message: String?)
    case operationLimitExceeded(message: String?)
    case tLDRulesViolation(message: String?)
    case unsupportedTLD(message: String?)
}

extension Route53DomainsErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DomainLimitExceeded":
            self = .domainLimitExceeded(message: message)
        case "DuplicateRequest":
            self = .duplicateRequest(message: message)
        case "InvalidInput":
            self = .invalidInput(message: message)
        case "OperationLimitExceeded":
            self = .operationLimitExceeded(message: message)
        case "TLDRulesViolation":
            self = .tLDRulesViolation(message: message)
        case "UnsupportedTLD":
            self = .unsupportedTLD(message: message)
        default:
            return nil
        }
    }
}

extension Route53DomainsErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .domainLimitExceeded(let message):
            return "DomainLimitExceeded: \(message ?? "")"
        case .duplicateRequest(let message):
            return "DuplicateRequest: \(message ?? "")"
        case .invalidInput(let message):
            return "InvalidInput: \(message ?? "")"
        case .operationLimitExceeded(let message):
            return "OperationLimitExceeded: \(message ?? "")"
        case .tLDRulesViolation(let message):
            return "TLDRulesViolation: \(message ?? "")"
        case .unsupportedTLD(let message):
            return "UnsupportedTLD: \(message ?? "")"
        }
    }
}
