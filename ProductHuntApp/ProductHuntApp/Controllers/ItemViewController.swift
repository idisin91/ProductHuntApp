//
//  ViewController.swift
//  ProductHuntApp
//
//  Created by Никита Скрынников on 27.11.17.
//  Copyright © 2017 ForMe. All rights reserved.
//

import UIKit
import Alamofire

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
        Alamofire.request((data?.imageUrl!)!).response() {
            response in
            if let respData = response.data {
                self.imageView?.image = UIImage(data: respData)
            }
        }
    }
    
    @IBAction func getButtonPressed(_ sender: Any) {
        if let url = data?.mainUrl {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    
}

