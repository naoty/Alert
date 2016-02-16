//
//  NSError+AlertMessageConvertible.swift
//  Alert
//
//  Created by Naoto Kaneko on 2/16/16.
//  Copyright © 2016 Naoto Kaneko. All rights reserved.
//

extension NSError: AlertMessageConvertible {
    public var alertTitle: String {
        return localizedDescription
    }
    
    public var alertBody: String {
        var body = ""
        
        if let failureReason = userInfo[NSLocalizedFailureReasonErrorKey] as? String {
            body += failureReason
            body += "\n"
        }
        
        if let recoverySuggestion = userInfo[NSLocalizedRecoverySuggestionErrorKey] as? String {
            body += recoverySuggestion
        }
        
        return body
    }
}
