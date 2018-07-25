//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Andrew Dhan on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit


class PaintingController {
    var paintings = [Painting]()
    
    init() {
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets(){
        for count in 1...12{
            let imageName = "Image" + String(count)
            guard let image = UIImage(named:imageName) else {return}
            paintings.append(Painting(image:image))
            
        }
    }
    
    func toggleIsLiked(for painting: Painting){
        if painting.isLiked == true {
            painting.isLiked = false
        } else {
            painting.isLiked = true
        }
    }
    
}
