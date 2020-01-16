//
//  File.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/15/20.
//  Copyright © 2020 Madhura. All rights reserved.
//

import Foundation
import UIKit

class UIRegisterViewController: UIViewController {
    
   
    @IBOutlet weak var txtFName: UITextField!
    @IBOutlet weak var txtLName: UITextField!
    @IBOutlet weak var txtEmailAddress: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addStylesToRegister()
    }
   
    func addStylesToRegister()  {
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        
        
        txtFName.roundCorners([.topLeft,], radius: 10)
        txtLName.roundCorners([.topRight,], radius: 10)
        txtEmailAddress.roundCorners([.bottomLeft,.bottomRight], radius: 10)
        txtPassword.roundCorners([.topLeft,.topRight], radius: 10)
        txtConfirmPassword.roundCorners([.bottomLeft,.bottomRight], radius: 10)
        
        txtFName.setLeftPaddingPoints(8)
        txtLName.setLeftPaddingPoints(8)
        txtEmailAddress.setLeftPaddingPoints(8)
        txtPassword.setLeftPaddingPoints(8)
        txtConfirmPassword.setLeftPaddingPoints(8)

        txtFName.placeholderColor(color: UIColor.white)
        txtLName.placeholderColor(color: UIColor.white)
        txtEmailAddress.placeholderColor(color: UIColor.white)
        txtPassword.placeholderColor(color: UIColor.white)
        txtConfirmPassword.placeholderColor(color: UIColor.white)
    }
    
    func fieldValidate(){
        showAlert()
    }
    
    func showAlert(){
        
        

    }
    
    @IBAction func btnRegisterAction(_ sender: Any) {
        fieldValidate()
    }
    
}


