//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Andrew Liao on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self //not sure
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(for: painting)
        
        tableView.reloadRows(at: [indexPath], with: .fade)
        
    }
    //the delegate function
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GalleryCell", for: indexPath) as? PaintingTableViewCell else {return UITableViewCell()}
        cell.painting = paintingController.paintings[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    //MARK: Properties
    let paintingController = PaintingController()
    @IBOutlet weak var tableView: UITableView!
}
