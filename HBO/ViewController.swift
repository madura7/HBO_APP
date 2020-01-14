//
//  ViewController.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/13/20.
//  Copyright © 2020 Madhura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //setBackground();
    }

    func setBackground(){
        view.addSubview(BackgroundImageView)
        BackgroundImageView.translatesAutoresizingMaskIntoConstraints = false;
        BackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        BackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        BackgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        BackgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        BackgroundImageView.image = UIImage(named: "4cbb96f6ec860f96ab3351a9a1612d5a")
    }

    let BackgroundImageView = UIImageView()
    @IBOutlet weak var txtFName: UITextField!
    @IBOutlet weak var txtLName: UITextField!
    @IBOutlet weak var txtEmailAddress: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    
}

