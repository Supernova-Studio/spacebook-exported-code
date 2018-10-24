//
//  EventTableViewCell.swift
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

class EventTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var bgWhiteView: UIView!
    var headerView: UIView!
    var bgEventTempImageView: UIImageView!
    var labelLabel: UILabel!
    var guessWhoSBackLabel: SupernovaLabel!
    var viewView: UIView!
    var avatarImageView: UIImageView!
    var laikaCreatedANewLabel: UILabel!
    var backFromTheSpaceLabel: UILabel!
    var viewTwoView: UIView!
    var johnJoeAndJackLabel: UILabel!


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
        
        // Setup bgWhiteView
        self.bgWhiteView = UIView(frame: .zero)
        self.bgWhiteView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.contentView.addSubview(self.bgWhiteView)
        self.bgWhiteView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup headerView
        self.headerView = UIView(frame: .zero)
        self.headerView.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.headerView)
        self.headerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup bgEventTempImageView
        self.bgEventTempImageView = UIImageView()
        self.bgEventTempImageView.backgroundColor = UIColor.clear
        self.bgEventTempImageView.image = UIImage(named: "bg-event-temp-2")
        self.bgEventTempImageView.contentMode = .scaleToFill
        self.headerView.addSubview(self.bgEventTempImageView)
        self.bgEventTempImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelLabel
        self.labelLabel = UILabel()
        self.labelLabel.numberOfLines = 0
        self.labelLabel.text = "3/13/2050"
        self.labelLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.labelLabel.textAlignment = .left
        self.labelLabel.font = UIFont(name: "Lato-Regular", size: 14)
        
        self.labelLabel.backgroundColor = UIColor.clear
        self.headerView.addSubview(self.labelLabel)
        self.labelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup guessWhoSBackLabel
        self.guessWhoSBackLabel = SupernovaLabel()
        self.guessWhoSBackLabel.numberOfLines = 0
        let guessWhoSBackLabelAttrString = NSMutableAttributedString(string: "Guess who’s back?", attributes: [
            .font : UIFont(name: ".SFNSDisplay", size: 24)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .right, lineHeight: 24, paragraphSpacing: 0)
        ])
        self.guessWhoSBackLabel.attributedText = guessWhoSBackLabelAttrString
        self.guessWhoSBackLabel.backgroundColor = UIColor.clear
        self.headerView.addSubview(self.guessWhoSBackLabel)
        self.guessWhoSBackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup viewView
        self.viewView = UIView(frame: .zero)
        self.viewView.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.viewView)
        self.viewView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup avatarImageView
        self.avatarImageView = UIImageView()
        self.avatarImageView.backgroundColor = UIColor.clear
        self.avatarImageView.image = UIImage(named: "avatar-2")
        self.avatarImageView.contentMode = .center
        self.viewView.addSubview(self.avatarImageView)
        self.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup laikaCreatedANewLabel
        self.laikaCreatedANewLabel = UILabel()
        self.laikaCreatedANewLabel.numberOfLines = 0
        self.laikaCreatedANewLabel.text = "Laika created a new event near you"
        self.laikaCreatedANewLabel.textColor = UIColor(red: 0.059, green: 0.059, blue: 0.059, alpha: 1) /* #0F0F0F */
        self.laikaCreatedANewLabel.textAlignment = .left
        self.laikaCreatedANewLabel.font = UIFont(name: "Lato-Bold", size: 14)
        
        self.laikaCreatedANewLabel.backgroundColor = UIColor.clear
        self.viewView.addSubview(self.laikaCreatedANewLabel)
        self.laikaCreatedANewLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup backFromTheSpaceLabel
        self.backFromTheSpaceLabel = UILabel()
        self.backFromTheSpaceLabel.numberOfLines = 0
        self.backFromTheSpaceLabel.text = "Back from the space trip! Come everyone."
        self.backFromTheSpaceLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.backFromTheSpaceLabel.textAlignment = .left
        self.backFromTheSpaceLabel.font = UIFont(name: "Lato-Regular", size: 10)
        
        self.backFromTheSpaceLabel.backgroundColor = UIColor.clear
        self.backFromTheSpaceLabel.alpha = 0.4
        self.viewView.addSubview(self.backFromTheSpaceLabel)
        self.backFromTheSpaceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup viewTwoView
        self.viewTwoView = UIView(frame: .zero)
        self.viewTwoView.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1) /* #FAFAFA */
        self.contentView.addSubview(self.viewTwoView)
        self.viewTwoView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup johnJoeAndJackLabel
        self.johnJoeAndJackLabel = UILabel()
        self.johnJoeAndJackLabel.numberOfLines = 0
        self.johnJoeAndJackLabel.text = "John, Joe and Jack & 18k are coming"
        self.johnJoeAndJackLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.johnJoeAndJackLabel.textAlignment = .left
        self.johnJoeAndJackLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.johnJoeAndJackLabel.backgroundColor = UIColor.clear
        self.johnJoeAndJackLabel.alpha = 0.4
        self.viewTwoView.addSubview(self.johnJoeAndJackLabel)
        self.johnJoeAndJackLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup bgWhiteView
        self.bgWhiteView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.bgWhiteView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.bgWhiteView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 31).isActive = true
        self.bgWhiteView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        
        // Setup headerView
        self.headerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.headerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.headerView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 84).isActive = true
        self.headerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -52).isActive = true
        
        // Setup bgEventTempImageView
        self.bgEventTempImageView.leadingAnchor.constraint(equalTo: self.headerView.leadingAnchor, constant: 0).isActive = true
        self.bgEventTempImageView.trailingAnchor.constraint(equalTo: self.headerView.trailingAnchor, constant: 0).isActive = true
        self.bgEventTempImageView.topAnchor.constraint(equalTo: self.headerView.topAnchor, constant: 0).isActive = true
        self.bgEventTempImageView.bottomAnchor.constraint(equalTo: self.headerView.bottomAnchor, constant: 0).isActive = true
        
        // Setup labelLabel
        self.labelLabel.leadingAnchor.constraint(equalTo: self.headerView.leadingAnchor, constant: 20).isActive = true
        self.labelLabel.bottomAnchor.constraint(equalTo: self.headerView.bottomAnchor, constant: -24).isActive = true
        
        // Setup guessWhoSBackLabel
        self.guessWhoSBackLabel.trailingAnchor.constraint(equalTo: self.headerView.trailingAnchor, constant: -20).isActive = true
        self.guessWhoSBackLabel.bottomAnchor.constraint(equalTo: self.headerView.bottomAnchor, constant: -22).isActive = true
        
        // Setup viewView
        self.viewView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 9).isActive = true
        self.viewView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        self.viewView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 15).isActive = true
        self.viewView.heightAnchor.constraint(equalToConstant: 82).isActive = true
        
        // Setup avatarImageView
        self.avatarImageView.leadingAnchor.constraint(equalTo: self.viewView.leadingAnchor, constant: 0).isActive = true
        self.avatarImageView.topAnchor.constraint(equalTo: self.viewView.topAnchor, constant: 0).isActive = true
        
        // Setup laikaCreatedANewLabel
        self.laikaCreatedANewLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 8).isActive = true
        self.laikaCreatedANewLabel.topAnchor.constraint(equalTo: self.viewView.topAnchor, constant: 25).isActive = true
        
        // Setup backFromTheSpaceLabel
        self.backFromTheSpaceLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 8).isActive = true
        self.backFromTheSpaceLabel.topAnchor.constraint(equalTo: self.laikaCreatedANewLabel.bottomAnchor, constant: 3).isActive = true
        
        // Setup viewTwoView
        self.viewTwoView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.viewTwoView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.viewTwoView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        self.viewTwoView.heightAnchor.constraint(equalToConstant: 53).isActive = true
        
        // Setup johnJoeAndJackLabel
        self.johnJoeAndJackLabel.leadingAnchor.constraint(equalTo: self.viewTwoView.leadingAnchor, constant: 20).isActive = true
        self.johnJoeAndJackLabel.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
    }
}
