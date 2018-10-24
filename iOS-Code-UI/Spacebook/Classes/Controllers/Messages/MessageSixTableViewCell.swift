//
//  MessageSixTableViewCell.swift
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class MessageSixTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var avatarImageView: UIImageView!
    var nameLabel: UILabel!
    var weVeBeenForcedToLabel: UILabel!
    var path2ImageView: UIImageView!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }

    private func commonInit()  {
        self.setupComponents()
        self.setupLayout()
    }

    private func setupComponents()  {
        // Selection
        self.selectedBackgroundView = UIView()
        self.selectedBackgroundView?.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1) /* #D9D9D9 */
        
        // Setup avatarImageView
        self.avatarImageView = UIImageView()
        self.avatarImageView.backgroundColor = UIColor.clear
        self.avatarImageView.image = UIImage(named: "avatar-temp-2")
        self.avatarImageView.contentMode = .center
        self.contentView.addSubview(self.avatarImageView)
        self.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup nameLabel
        self.nameLabel = UILabel()
        self.nameLabel.numberOfLines = 0
        self.nameLabel.text = "Mrs. Doya"
        self.nameLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.nameLabel.textAlignment = .left
        self.nameLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.nameLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.nameLabel)
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup weVeBeenForcedToLabel
        self.weVeBeenForcedToLabel = UILabel()
        self.weVeBeenForcedToLabel.numberOfLines = 0
        self.weVeBeenForcedToLabel.text = "We’ve been forced to add you a new friend"
        self.weVeBeenForcedToLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.weVeBeenForcedToLabel.textAlignment = .left
        self.weVeBeenForcedToLabel.font = UIFont(name: "Lato-Bold", size: 10)
        
        self.weVeBeenForcedToLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.weVeBeenForcedToLabel)
        self.weVeBeenForcedToLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup path2ImageView
        self.path2ImageView = UIImageView()
        self.path2ImageView.backgroundColor = UIColor.clear
        self.path2ImageView.image = UIImage(named: "path-2")
        self.path2ImageView.contentMode = .center
        self.contentView.addSubview(self.path2ImageView)
        self.path2ImageView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup avatarImageView
        self.avatarImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 14).isActive = true
        self.avatarImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0).isActive = true
        
        // Setup nameLabel
        self.nameLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 9).isActive = true
        self.nameLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 23).isActive = true
        
        // Setup weVeBeenForcedToLabel
        self.weVeBeenForcedToLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 9).isActive = true
        self.weVeBeenForcedToLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 4).isActive = true
        
        // Setup path2ImageView
        self.path2ImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -19).isActive = true
        self.path2ImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0).isActive = true
        
    }
}
