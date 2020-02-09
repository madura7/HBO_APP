//
//  UIAddMoviesViewController.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/27/20.
//  Copyright © 2020 Madhura. All rights reserved.
//


import Foundation
import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase
import Firebase
import LocalAuthentication

class UIAddMoviesViewController: UIViewController {
    
    
    
    @IBOutlet weak var lblAddMovies: UILabel!
    @IBOutlet weak var textMovieName: UITextField!
    @IBOutlet weak var textDirector: UITextField!
    @IBOutlet weak var textRating: UITextField!
    @IBOutlet weak var btnAddMovies: UIButton!
    
    
    @IBOutlet weak var btnAdd: btnCustom!
    var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addMovieButtonPress(_ sender: Any) {
        
        let validator = ValidateFields()
        
        let alert = AlertDialog()
        
        if(validator.validateMovieForm(name: textMovieName.text!, director: textDirector.text!, rating: textRating.text!)) {
            
            //self.btnAdd.loadingIndicator(show: true)
            var db: Firestore!
            
            db = Firestore.firestore()
            
            db.collection("movies").addDocument(data: [
                "name": textMovieName.text!,
                "director":textDirector.text!,
                "rating": textRating.text! ,
                "image":"https://i.ytimg.com/vi/Z1i8kbjsvHw/maxresdefault.jpg"
                ])
            { err in
                if let err = err {
                    
                    alert.showAlert(title: "Error occured", message: "Error adding document: \(err)",buttonText: "Try adding agian")
                    
                    print("Error")
                    print(err)
                    
                } else {
                    
                    self.clearFields()
                    //self.btnAdd.loadingIndicator(show: false)
                }
            }
            
        } else {
            
            alert.showAlert(title: "Error occured", message: "One or more fields values are invalid"
                ,buttonText: "Try adding agian")
            
        }
        
    }
    
    
    
    
    
    
    func clearFields()  {
        textMovieName.text = ""
        textDirector.text = ""
        textRating.text = ""
    }
    
}
