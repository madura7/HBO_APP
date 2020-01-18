//
//  UISignInView.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/15/20.
//  Copyright © 2020 Madhura. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

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

    @IBAction func btnSignInAction(_ sender: Any) {

        print("Login")
        let alert = AlertDialog();
        Auth.auth().signIn(withEmail: txtEmailAddress.text!, password: txtPassword.text!) { (user, error) in
            if error != nil {
                print(error)
                alert.showAlert(title: "Error occured", message: "You have error with your email and password", buttonText: "Home")
            }
            else if user != nil {
                print("Success")
                
                //let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "UIDashboardViewController") as! UIDashboardViewController
                //let navController = UINavigationController(rootViewController: VC1)
                //self.present(navController, animated:true, completion: nil)

                
                let vc = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "UIHomeViewController")
                self.present(vc, animated: true, completion: nil)
                
                
            }
        }

    }
    
    
    
}
