//
//  AdvertisementTableViewCell.swift
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

class AdvertisementTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var bgView: UIView!
    var bgEventTempImageView: UIImageView!
    var sprayAndPrayLabel: UILabel!
    var hullTattoosANewLabel: UILabel!
    var sponsoredContentLabel: UILabel!


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
        
        // Setup bgEventTempImageView
        self.bgEventTempImageView = UIImageView()
        self.bgEventTempImageView.backgroundColor = UIColor.clear
        self.bgEventTempImageView.image = UIImage(named: "bg-event-temp")
        self.bgEventTempImageView.contentMode = .center
        self.contentView.addSubview(self.bgEventTempImageView)
        self.bgEventTempImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup sprayAndPrayLabel
        self.sprayAndPrayLabel = UILabel()
        self.sprayAndPrayLabel.numberOfLines = 0
        let sprayAndPrayLabelAttrString = NSMutableAttributedString(string: "Spray and Pray", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 14)!,
            .foregroundColor : UIColor(red: 0.85, green: 0.4, blue: 0.43, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.sprayAndPrayLabel.attributedText = sprayAndPrayLabelAttrString
        self.sprayAndPrayLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.sprayAndPrayLabel)
        self.sprayAndPrayLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup hullTattoosANewLabel
        self.hullTattoosANewLabel = UILabel()
        self.hullTattoosANewLabel.numberOfLines = 0
        self.hullTattoosANewLabel.text = "Hull tattoos? A new trend to follow in 2050"
        self.hullTattoosANewLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.hullTattoosANewLabel.textAlignment = .left
        self.hullTattoosANewLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.hullTattoosANewLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.hullTattoosANewLabel)
        self.hullTattoosANewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup sponsoredContentLabel
        self.sponsoredContentLabel = UILabel()
        self.sponsoredContentLabel.numberOfLines = 0
        self.sponsoredContentLabel.text = "Sponsored content"
        self.sponsoredContentLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.sponsoredContentLabel.textAlignment = .left
        self.sponsoredContentLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.sponsoredContentLabel.backgroundColor = UIColor.clear
        self.sponsoredContentLabel.alpha = 0.4
        self.contentView.addSubview(self.sponsoredContentLabel)
        self.sponsoredContentLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        self.bgView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 30).isActive = true
        self.bgView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        
        // Setup bgEventTempImageView
        self.bgEventTempImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.bgEventTempImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 30).isActive = true
        
        // Setup sprayAndPrayLabel
        self.sprayAndPrayLabel.leadingAnchor.constraint(equalTo: self.bgEventTempImageView.trailingAnchor, constant: 15).isActive = true
        self.sprayAndPrayLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 43).isActive = true
        
        // Setup hullTattoosANewLabel
        self.hullTattoosANewLabel.leadingAnchor.constraint(equalTo: self.bgEventTempImageView.trailingAnchor, constant: 15).isActive = true
        self.hullTattoosANewLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -42).isActive = true
        self.hullTattoosANewLabel.topAnchor.constraint(equalTo: self.sprayAndPrayLabel.bottomAnchor, constant: 5).isActive = true
        
        // Setup sponsoredContentLabel
        self.sponsoredContentLabel.leadingAnchor.constraint(equalTo: self.bgEventTempImageView.trailingAnchor, constant: 15).isActive = true
        self.sponsoredContentLabel.topAnchor.constraint(equalTo: self.hullTattoosANewLabel.bottomAnchor, constant: 10).isActive = true
        
    }
}
