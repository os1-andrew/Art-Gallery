//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Andrew Liao on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
   
}
class PaintingTableViewCell: UITableViewCell {

    //Mark: Methods
    func updateViews(){
        guard let painting = painting else {return}
        galleryImageView.image = painting.image
        galleryImageView.contentMode = .scaleAspectFit
        if painting.isLiked{
            likeButtonDisplay.setTitle("Unlike", for: .normal)
        } else {
            likeButtonDisplay.setTitle("Like", for: .normal)
        }
    }

    
    //MARK: IBAction
    @IBAction func likeButtonAction(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self) //optional conditioning
    }
    
    //MARK: Properties
    var painting: Painting? {
        didSet{
            updateViews()
        }
    }
     weak var delegate: PaintingTableViewCellDelegate?
    @IBOutlet weak var galleryImageView: UIImageView!
    @IBOutlet weak var likeButtonDisplay: UIButton!
    

}
