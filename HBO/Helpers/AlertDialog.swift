//
//  AlertDialog.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/18/20.
//  Copyright © 2020 Madhura. All rights reserved.
//

import Foundation
import UIKit
class AlertDialog {
    func showAlert(title: String,message: String,buttonText: String)  {
        let alert = UIAlertView()
        alert.title = title
        alert.message = message
        alert.addButton(withTitle: buttonText)
        alert.show()
    }
}
