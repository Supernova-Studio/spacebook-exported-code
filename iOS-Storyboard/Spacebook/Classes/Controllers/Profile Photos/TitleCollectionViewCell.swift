//
//  TitleCollectionViewCell.swift
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

class TitleCollectionViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var todayLabel: UILabel!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override public func awakeFromNib()  {
        // Configure SN Generated code
        super.awakeFromNib()
        
        self.setupComponents()
    }

    private func setupComponents()  {
        // Setup todayLabel
        let todayLabelAttrString = NSMutableAttributedString(string: "TODAY", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 13)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.08,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.todayLabel.attributedText = todayLabelAttrString
        
    }

    private func setupLocalization()  {
    
    }
}
