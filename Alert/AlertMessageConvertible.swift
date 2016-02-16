//
//  AlertMessageConvertible.swift
//  Alert
//
//  Created by Naoto Kaneko on 2/16/16.
//  Copyright © 2016 Naoto Kaneko. All rights reserved.
//

public protocol AlertMessageConvertible: ErrorType {
    var alertTitle: String { get }
    var alertBody: String { get }
}
