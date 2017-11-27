//
//  ViewController.swift
//  ProductHuntApp
//
//  Created by Никита Скрынников on 27.11.17.
//  Copyright © 2017 ForMe. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var upvotesLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var data: CellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.descriptionLabel.text = data?.description
        self.nameLabel.text = data?.name
        self.upvotesLabel.text = "\(data?.upvotes! ?? 0)"
    }
    
    @IBAction func getButtonPressed(_ sender: Any) {
        if let url = data?.mainUrl {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    
}

