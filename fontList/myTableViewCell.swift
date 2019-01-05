//
//  myTableViewCell.swift
//  fontList
//
//  Created by 遠野ひろし on 2019/01/05.
//  Copyright © 2019 遠野工房. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
