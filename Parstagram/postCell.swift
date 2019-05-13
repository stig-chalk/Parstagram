//
//  postCell.swift
//  Parstagram
//
//  Created by Yuhui Chen on 5/13/19.
//  Copyright © 2019 Yuhui Chen. All rights reserved.
//

import UIKit

class postCell: UITableViewCell {

    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var caption: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
