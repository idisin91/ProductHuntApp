//
//  MainTableViewCell.swift
//  ProductHuntApp
//
//  Created by Никита Скрынников on 27.11.17.
//  Copyright © 2017 ForMe. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    var data: CellData?
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var upvotesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
