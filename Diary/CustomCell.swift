//
//  CustomCell.swift
//  Diary
//
//  Created by 藤崎嶺 on 2020/08/15.
//  Copyright © 2020 藤崎嶺. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    

    @IBOutlet weak var sampleLabel: UILabel!
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

