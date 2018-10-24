//
//  OnlinePersonCollectionViewCell.swift
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

class OnlinePersonCollectionViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var mrsDoyaLabel: UILabel!
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
        // Setup mrsDoyaLabel
        self.mrsDoyaLabel = UILabel()
        self.mrsDoyaLabel.numberOfLines = 0
        self.mrsDoyaLabel.text = "Mrs. Doya"
        self.mrsDoyaLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.mrsDoyaLabel.textAlignment = .center
        self.mrsDoyaLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.mrsDoyaLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.mrsDoyaLabel)
        self.mrsDoyaLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup avatarTempImageView
        self.avatarTempImageView = UIImageView()
        self.avatarTempImageView.backgroundColor = UIColor.clear
        self.avatarTempImageView.image = UIImage(named: "avatar-temp-2")
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
        // Setup mrsDoyaLabel
        self.mrsDoyaLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 3).isActive = true
        self.mrsDoyaLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -2).isActive = true
        self.mrsDoyaLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        
        // Setup avatarTempImageView
        self.avatarTempImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: -1).isActive = true
        self.avatarTempImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 1).isActive = true
        self.avatarTempImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: -1).isActive = true
        
    }
}
