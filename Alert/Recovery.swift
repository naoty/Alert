//
//  Recovery.swift
//  Alert
//
//  Created by Naoto Kaneko on 2/16/16.
//  Copyright © 2016 Naoto Kaneko. All rights reserved.
//

public struct Recovery {
    let name: String
    let style: RecoveryStyle
    let recover: UIAlertAction -> Void
    
    enum RecoveryStyle {
        case Nondestructive
        case Destructive
    }
}
