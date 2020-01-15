//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by user161182 on 1/15/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBuble: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        messageBuble.layer.cornerRadius = messageBuble.frame.size.height/5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
