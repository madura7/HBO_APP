//
//  Post.swift
//  HBO
//
//  Created by Malithi Sathsarani Mallawaarachchi on 1/26/20.
//  Copyright © 2020 Madhura. All rights reserved.
//


import Foundation


class Post {
    var id:String
    var author:String
    var text:String
    
    init(id:String, author:String,text:String) {
        self.id = id
        self.author = author
        self.text = text
    }
}
