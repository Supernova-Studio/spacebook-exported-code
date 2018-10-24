//
//  MessageTwoTableViewCell.swift
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

class MessageTwoTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var avatarView: UIView!
    var uiAvatarSmallCopyView: UIView!
    var avatarAstronautImageView: UIImageView!
    var nameLabel: UILabel!
    var iMTellingYouTheLabel: UILabel!
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
        
        // Setup avatarView
        self.avatarView = UIView(frame: .zero)
        self.avatarView.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.avatarView)
        self.avatarView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup uiAvatarSmallCopyView
        self.uiAvatarSmallCopyView = UIView(frame: .zero)
        self.uiAvatarSmallCopyView.backgroundColor = UIColor.clear
        self.avatarView.addSubview(self.uiAvatarSmallCopyView)
        self.uiAvatarSmallCopyView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup avatarAstronautImageView
        self.avatarAstronautImageView = UIImageView()
        self.avatarAstronautImageView.backgroundColor = UIColor.clear
        self.avatarAstronautImageView.image = UIImage(named: "avatarastronaut-2")
        self.avatarAstronautImageView.contentMode = .center
        self.uiAvatarSmallCopyView.addSubview(self.avatarAstronautImageView)
        self.avatarAstronautImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup nameLabel
        self.nameLabel = UILabel()
        self.nameLabel.numberOfLines = 0
        self.nameLabel.text = "Fox Murder"
        self.nameLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.nameLabel.textAlignment = .left
        self.nameLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.nameLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.nameLabel)
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup iMTellingYouTheLabel
        self.iMTellingYouTheLabel = UILabel()
        self.iMTellingYouTheLabel.numberOfLines = 0
        self.iMTellingYouTheLabel.text = "I’m telling you, they are amongst us! #scared"
        self.iMTellingYouTheLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.iMTellingYouTheLabel.textAlignment = .left
        self.iMTellingYouTheLabel.font = UIFont(name: "Lato-Bold", size: 10)
        
        self.iMTellingYouTheLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.iMTellingYouTheLabel)
        self.iMTellingYouTheLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        // Setup avatarView
        self.avatarView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 15).isActive = true
        self.avatarView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0).isActive = true
        self.avatarView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        self.avatarView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup uiAvatarSmallCopyView
        self.uiAvatarSmallCopyView.leadingAnchor.constraint(equalTo: self.avatarView.leadingAnchor, constant: 0).isActive = true
        self.uiAvatarSmallCopyView.trailingAnchor.constraint(equalTo: self.avatarView.trailingAnchor, constant: 0).isActive = true
        self.uiAvatarSmallCopyView.centerYAnchor.constraint(equalTo: self.avatarView.centerYAnchor, constant: 0).isActive = true
        self.uiAvatarSmallCopyView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup avatarAstronautImageView
        self.avatarAstronautImageView.leadingAnchor.constraint(equalTo: self.uiAvatarSmallCopyView.leadingAnchor, constant: -1).isActive = true
        self.avatarAstronautImageView.trailingAnchor.constraint(equalTo: self.uiAvatarSmallCopyView.trailingAnchor, constant: 1).isActive = true
        self.avatarAstronautImageView.centerYAnchor.constraint(equalTo: self.uiAvatarSmallCopyView.centerYAnchor, constant: 0).isActive = true
        
        // Setup nameLabel
        self.nameLabel.leadingAnchor.constraint(equalTo: self.avatarView.trailingAnchor, constant: 10).isActive = true
        self.nameLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 23).isActive = true
        
        // Setup iMTellingYouTheLabel
        self.iMTellingYouTheLabel.leadingAnchor.constraint(equalTo: self.avatarView.trailingAnchor, constant: 10).isActive = true
        self.iMTellingYouTheLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 4).isActive = true
        
        // Setup path2ImageView
        self.path2ImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -19).isActive = true
        self.path2ImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0).isActive = true
        
    }
}
