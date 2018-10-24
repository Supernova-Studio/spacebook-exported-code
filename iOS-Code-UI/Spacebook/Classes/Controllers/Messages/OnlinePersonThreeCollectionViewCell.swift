//
//  OnlinePersonThreeCollectionViewCell.swift
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

class OnlinePersonThreeCollectionViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var gideonLabel: UILabel!
    var uiAvatarSmallCopy2ImageView: UIImageView!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override init(frame: CGRect) {
        super.init(frame: frame)
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
        // Setup gideonLabel
        self.gideonLabel = UILabel()
        self.gideonLabel.numberOfLines = 0
        self.gideonLabel.text = "Gideon"
        self.gideonLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.gideonLabel.textAlignment = .center
        self.gideonLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.gideonLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.gideonLabel)
        self.gideonLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup uiAvatarSmallCopy2ImageView
        self.uiAvatarSmallCopy2ImageView = UIImageView()
        self.uiAvatarSmallCopy2ImageView.backgroundColor = UIColor.clear
        self.uiAvatarSmallCopy2ImageView.image = UIImage(named: "ui-avatar-small-copy-2")
        self.uiAvatarSmallCopy2ImageView.contentMode = .center
        self.contentView.addSubview(self.uiAvatarSmallCopy2ImageView)
        self.uiAvatarSmallCopy2ImageView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup gideonLabel
        self.gideonLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 11).isActive = true
        self.gideonLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10).isActive = true
        self.gideonLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        
        // Setup uiAvatarSmallCopy2ImageView
        self.uiAvatarSmallCopy2ImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: -1).isActive = true
        self.uiAvatarSmallCopy2ImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 1).isActive = true
        self.uiAvatarSmallCopy2ImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: -1).isActive = true
        
    }
}
