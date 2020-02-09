//
//  PostTableViewCell.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/27/20.
//  Copyright © 2020 Madhura. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {


    
    
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var postTextLabel: UILabel!
    @IBOutlet weak var profileimageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func set(post:Post) {
        usernameLabel.text = post.text
        postTextLabel.text = post.text
    }
    
}
