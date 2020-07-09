//
//  TableViewCell.swift
//  Lab4
//
//  Created by user165333 on 7/1/20.
//  Copyright © 2020 n01324321 Sudhir. All rights reserved.
//

import UIKit
import Foundation

class TableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mystatusimage: UIImageView!
    @IBOutlet weak var myLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    

}
