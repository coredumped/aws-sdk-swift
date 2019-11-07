// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudSearch
public enum CloudSearchErrorType: AWSErrorType {
    case baseException(message: String?)
    case disabledOperationException(message: String?)
    case internalException(message: String?)
    case invalidTypeException(message: String?)
    case limitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension CloudSearchErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BaseException":
            self = .baseException(message: message)
        case "DisabledAction":
            self = .disabledOperationException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidType":
            self = .invalidTypeException(message: message)
        case "LimitExceeded":
            self = .limitExceededException(message: message)
        case "ResourceNotFound":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension CloudSearchErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .baseException(let message):
            return "BaseException: \(message ?? "")"
        case .disabledOperationException(let message):
            return "DisabledAction: \(message ?? "")"
        case .internalException(let message):
            return "InternalException: \(message ?? "")"
        case .invalidTypeException(let message):
            return "InvalidType: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceeded: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFound: \(message ?? "")"
        }
    }
}
