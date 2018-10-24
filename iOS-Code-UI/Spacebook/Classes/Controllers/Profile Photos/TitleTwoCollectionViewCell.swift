//
//  TitleTwoCollectionViewCell.swift
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

class TitleTwoCollectionViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var tomorrowLabel: UILabel!


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
        // Setup tomorrowLabel
        self.tomorrowLabel = UILabel()
        self.tomorrowLabel.numberOfLines = 0
        let tomorrowLabelAttrString = NSMutableAttributedString(string: "TOMORROW", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 13)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.08,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.tomorrowLabel.attributedText = tomorrowLabelAttrString
        self.tomorrowLabel.backgroundColor = UIColor.clear
        self.tomorrowLabel.alpha = 0.4
        self.contentView.addSubview(self.tomorrowLabel)
        self.tomorrowLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup tomorrowLabel
        self.tomorrowLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
        self.tomorrowLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor, constant: 0).isActive = true
        
    }
}
