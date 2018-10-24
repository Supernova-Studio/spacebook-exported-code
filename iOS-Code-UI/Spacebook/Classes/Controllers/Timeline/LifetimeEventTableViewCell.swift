//
//  LifetimeEventTableViewCell.swift
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

class LifetimeEventTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var bgView: UIView!
    var avatarAstronautImageView: UIImageView!
    var plutoPostedANewLLabel: UILabel!
    var inAComplicatedRelLabel: UILabel!


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
        
        // Setup bgView
        self.bgView = UIView(frame: .zero)
        self.bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.contentView.addSubview(self.bgView)
        self.bgView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup avatarAstronautImageView
        self.avatarAstronautImageView = UIImageView()
        self.avatarAstronautImageView.backgroundColor = UIColor.clear
        self.avatarAstronautImageView.image = UIImage(named: "avatarastronaut")
        self.avatarAstronautImageView.contentMode = .center
        self.contentView.addSubview(self.avatarAstronautImageView)
        self.avatarAstronautImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup plutoPostedANewLLabel
        self.plutoPostedANewLLabel = UILabel()
        self.plutoPostedANewLLabel.numberOfLines = 0
        self.plutoPostedANewLLabel.text = "Pluto posted a new life event"
        self.plutoPostedANewLLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.plutoPostedANewLLabel.textAlignment = .center
        self.plutoPostedANewLLabel.font = UIFont(name: "Lato-Light", size: 14)
        
        self.plutoPostedANewLLabel.backgroundColor = UIColor.clear
        self.plutoPostedANewLLabel.alpha = 0.4
        self.contentView.addSubview(self.plutoPostedANewLLabel)
        self.plutoPostedANewLLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup inAComplicatedRelLabel
        self.inAComplicatedRelLabel = UILabel()
        self.inAComplicatedRelLabel.numberOfLines = 0
        self.inAComplicatedRelLabel.text = "In a complicated relationship"
        self.inAComplicatedRelLabel.textColor = UIColor(red: 0.184, green: 0.184, blue: 0.184, alpha: 1) /* #2F2F2F */
        self.inAComplicatedRelLabel.textAlignment = .center
        self.inAComplicatedRelLabel.font = UIFont(name: "Lato-Black", size: 18)
        
        self.inAComplicatedRelLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.inAComplicatedRelLabel)
        self.inAComplicatedRelLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup bgView
        self.bgView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.bgView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.bgView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 29).isActive = true
        self.bgView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -1).isActive = true
        
        // Setup avatarAstronautImageView
        self.avatarAstronautImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor, constant: 0).isActive = true
        self.avatarAstronautImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 18).isActive = true
        
        // Setup plutoPostedANewLLabel
        self.plutoPostedANewLLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor, constant: 0).isActive = true
        self.plutoPostedANewLLabel.topAnchor.constraint(equalTo: self.avatarAstronautImageView.bottomAnchor, constant: 12).isActive = true
        
        // Setup inAComplicatedRelLabel
        self.inAComplicatedRelLabel.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor, constant: 0).isActive = true
        self.inAComplicatedRelLabel.topAnchor.constraint(equalTo: self.plutoPostedANewLLabel.bottomAnchor, constant: 2).isActive = true
        
    }
}
