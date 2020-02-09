//
//  UIHomeViewController.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/18/20.
//  Copyright © 2020 Madhura. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase
import Firebase
import LocalAuthentication
import SwiftyJSON

class UIHomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var Movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Movies = createArray()
        
    }
    
    func createArray() -> [Movie] {
        var tempMovies : [Movie] = []
        let movie1 = Movie(image: "", title: "Movie 1")
        let movie2 = Movie(image: "HBONOW", title: "Movie 2")
        let movie3 = Movie(image: "4cbb96f6ec860f96ab3351a9a1612d5a", title: "Movie 3")
        
        tempMovies.append(movie1)
        tempMovies.append(movie2)
        tempMovies.append(movie3)
        
        return tempMovies
    }
    
}

extension UIHomeViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = Movies[indexPath.row]
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "MovieViewCell") as! MovieViewCell
        cell.setMovie
        
        return cell
    }
}


