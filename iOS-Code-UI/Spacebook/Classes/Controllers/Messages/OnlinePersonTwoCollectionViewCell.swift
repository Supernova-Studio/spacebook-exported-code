//
//  OnlinePersonTwoCollectionViewCell.swift
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

class OnlinePersonTwoCollectionViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var jackLabel: UILabel!
    var avatarTempImageView: UIImageView!


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
        // Setup jackLabel
        self.jackLabel = UILabel()
        self.jackLabel.numberOfLines = 0
        self.jackLabel.text = "Jack"
        self.jackLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.jackLabel.textAlignment = .center
        self.jackLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.jackLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.jackLabel)
        self.jackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup avatarTempImageView
        self.avatarTempImageView = UIImageView()
        self.avatarTempImageView.backgroundColor = UIColor.clear
        self.avatarTempImageView.image = UIImage(named: "avatar-temp-3")
        self.avatarTempImageView.contentMode = .center
        self.contentView.addSubview(self.avatarTempImageView)
        self.avatarTempImageView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup jackLabel
        self.jackLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 18).isActive = true
        self.jackLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -18).isActive = true
        self.jackLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        
        // Setup avatarTempImageView
        self.avatarTempImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: -1).isActive = true
        self.avatarTempImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 1).isActive = true
        self.avatarTempImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: -1).isActive = true
        
    }
}
