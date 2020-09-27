//
//  inAppTableViewCell.swift
//  SkillSwApp
//
//  Created by Alvaro Alva on 9/27/20.
//

import UIKit

class inAppTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var skillLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        userImageView.clipsToBounds = true
        userImageView.layer.cornerRadius = userImageView.frame.width/2
    }
    func setupCell(username: String, message: String) {
        usernameLabel.text = username
        skillLabel.text = message
    }
    
}
