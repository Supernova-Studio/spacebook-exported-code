//
//  MessageFiveTableViewCell.swift
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

class MessageFiveTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var avatarImageView: UIImageView!
    var nameLabel: UILabel!
    var finallyHavingADatLabel: UILabel!
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
        self.avatarImageView.image = UIImage(named: "avatar-temp-3")
        self.avatarImageView.contentMode = .center
        self.contentView.addSubview(self.avatarImageView)
        self.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup nameLabel
        self.nameLabel = UILabel()
        self.nameLabel.numberOfLines = 0
        self.nameLabel.text = "Jack O’ Kneel"
        self.nameLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.nameLabel.textAlignment = .left
        self.nameLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.nameLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.nameLabel)
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup finallyHavingADatLabel
        self.finallyHavingADatLabel = UILabel()
        self.finallyHavingADatLabel.numberOfLines = 0
        self.finallyHavingADatLabel.text = "Finally having a date with Pam, took like 10 years."
        self.finallyHavingADatLabel.textColor = UIColor(red: 0.58, green: 0.58, blue: 0.58, alpha: 1) /* #949494 */
        self.finallyHavingADatLabel.textAlignment = .left
        self.finallyHavingADatLabel.font = UIFont(name: "Lato-Regular", size: 10)
        
        self.finallyHavingADatLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.finallyHavingADatLabel)
        self.finallyHavingADatLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        // Setup finallyHavingADatLabel
        self.finallyHavingADatLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 9).isActive = true
        self.finallyHavingADatLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 4).isActive = true
        
        // Setup path2ImageView
        self.path2ImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -19).isActive = true
        self.path2ImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0).isActive = true
        
    }
}
