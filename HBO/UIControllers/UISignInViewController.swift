//
//  UISignInView.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/15/20.
//  Copyright © 2020 Madhura. All rights reserved.
//

import Foundation
import UIKit

class UISignInViewController: UIViewController {
    
    @IBOutlet weak var txtEmailAddress: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSylesToLogin()
    }
    
    func addSylesToLogin() {
        txtEmailAddress.roundCorners([.topLeft,.topRight], radius: 10)
        txtPassword.roundCorners([.bottomLeft,.bottomRight], radius: 10)
        txtEmailAddress.setLeftPaddingPoints(8)
        txtPassword.setLeftPaddingPoints(8)
        txtEmailAddress.placeholderColor(color: UIColor.white)
        txtPassword.placeholderColor(color: UIColor.white)
    }

    
}
