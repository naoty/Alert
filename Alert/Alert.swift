//
//  Alert.swift
//  Alert
//
//  Created by Naoto Kaneko on 2/16/16.
//  Copyright © 2016 Naoto Kaneko. All rights reserved.
//

public enum Alert {
    case Confirmation(AlertMessageConvertible)
    case Suggestion(AlertMessageConvertible, Recovery)
    
    var viewController: UIAlertController {
        switch self {
        case .Confirmation(let alertMessage):
            let alertController = buildAlertControllerWithAlertMessage(alertMessage)
            
            // TODO: Localize texts
            let cancel = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            alertController.addAction(cancel)
            
            return alertController
        case .Suggestion(let alertMessage, let recovery):
            let alertController = buildAlertControllerWithAlertMessage(alertMessage)
            let cancel = UIAlertAction(title: "Cancel", style: .Default, handler: nil)
            
            switch recovery.style {
            case .Nondestructive:
                let recover = UIAlertAction(title: recovery.name, style: .Default, handler: recovery.recover)
                alertController.addAction(cancel)
                alertController.addAction(recover)
            case .Destructive:
                let recover = UIAlertAction(title: recovery.name, style: .Destructive, handler: recovery.recover)
                alertController.addAction(recover)
                alertController.addAction(cancel)
            }
            
            return alertController
        }
    }
    
    private func buildAlertControllerWithAlertMessage(alertMessage: AlertMessageConvertible) -> UIAlertController {
        return UIAlertController(title: alertMessage.alertTitle, message: alertMessage.alertBody, preferredStyle: .Alert)
    }
}
