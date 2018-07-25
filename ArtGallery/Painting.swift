//
//  Painting.swift
//  ArtGallery
//
//  Created by Andrew Liao on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool
    
    init (image:UIImage, isLiked: Bool = false){
        self.image = image
        self.isLiked = isLiked
    }
    
}
