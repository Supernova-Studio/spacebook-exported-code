//
//  NewsTableViewCell.swift
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

class NewsTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var bgWhiteView: UIView!
    var bgNewsTempImageView: UIImageView!
    var viewView: UIView!
    var spacecrunchLabel: UILabel!
    var today145PmLabel: UILabel!
    var iconAvatarImageView: UIImageView!
    var melonHuskLaunchesLabel: UILabel!
    var viewTwoView: UIView!
    var iconLikeImageView: UIImageView!
    var spacewoman185kLiLabel: UILabel!
    var iconCommentImageView: UIImageView!
    var kCommentsLabel: UILabel!


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
        
        // Setup bgNewsTempImageView
        self.bgNewsTempImageView = UIImageView()
        self.bgNewsTempImageView.backgroundColor = UIColor.clear
        self.bgNewsTempImageView.image = UIImage(named: "bg-news-temp-2")
        self.bgNewsTempImageView.contentMode = .scaleToFill
        self.contentView.addSubview(self.bgNewsTempImageView)
        self.bgNewsTempImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup viewView
        self.viewView = UIView(frame: .zero)
        self.viewView.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.viewView)
        self.viewView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup spacecrunchLabel
        self.spacecrunchLabel = UILabel()
        self.spacecrunchLabel.numberOfLines = 0
        self.spacecrunchLabel.text = "SpaceCrunch"
        self.spacecrunchLabel.textColor = UIColor(red: 0.059, green: 0.059, blue: 0.059, alpha: 1) /* #0F0F0F */
        self.spacecrunchLabel.textAlignment = .left
        self.spacecrunchLabel.font = UIFont(name: "Lato-Bold", size: 14)
        
        self.spacecrunchLabel.backgroundColor = UIColor.clear
        self.viewView.addSubview(self.spacecrunchLabel)
        self.spacecrunchLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup today145PmLabel
        self.today145PmLabel = UILabel()
        self.today145PmLabel.numberOfLines = 0
        self.today145PmLabel.text = "Today, 1:45 PM"
        self.today145PmLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.today145PmLabel.textAlignment = .left
        self.today145PmLabel.font = UIFont(name: "Lato-Regular", size: 10)
        
        self.today145PmLabel.backgroundColor = UIColor.clear
        self.today145PmLabel.alpha = 0.4
        self.viewView.addSubview(self.today145PmLabel)
        self.today145PmLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup iconAvatarImageView
        self.iconAvatarImageView = UIImageView()
        self.iconAvatarImageView.backgroundColor = UIColor.clear
        self.iconAvatarImageView.image = UIImage(named: "icon-avatar")
        self.iconAvatarImageView.contentMode = .center
        self.viewView.addSubview(self.iconAvatarImageView)
        self.iconAvatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup melonHuskLaunchesLabel
        self.melonHuskLaunchesLabel = UILabel()
        self.melonHuskLaunchesLabel.numberOfLines = 0
        let melonHuskLaunchesLabelAttrString = NSMutableAttributedString(string: "Melon Husk launches the first car that can travel a galaxy on a single tank of gas.", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 14)!,
            .foregroundColor : UIColor(red: 0.03, green: 0.03, blue: 0.03, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.melonHuskLaunchesLabel.attributedText = melonHuskLaunchesLabelAttrString
        self.melonHuskLaunchesLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.melonHuskLaunchesLabel)
        self.melonHuskLaunchesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup viewTwoView
        self.viewTwoView = UIView(frame: .zero)
        self.viewTwoView.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1) /* #FAFAFA */
        self.contentView.addSubview(self.viewTwoView)
        self.viewTwoView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup iconLikeImageView
        self.iconLikeImageView = UIImageView()
        self.iconLikeImageView.backgroundColor = UIColor.clear
        self.iconLikeImageView.image = UIImage(named: "icon-like")
        self.iconLikeImageView.contentMode = .center
        self.viewTwoView.addSubview(self.iconLikeImageView)
        self.iconLikeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup spacewoman185kLiLabel
        self.spacewoman185kLiLabel = UILabel()
        self.spacewoman185kLiLabel.numberOfLines = 0
        self.spacewoman185kLiLabel.text = "Spacewoman & 185k like this"
        self.spacewoman185kLiLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.spacewoman185kLiLabel.textAlignment = .left
        self.spacewoman185kLiLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.spacewoman185kLiLabel.backgroundColor = UIColor.clear
        self.spacewoman185kLiLabel.alpha = 0.4
        self.viewTwoView.addSubview(self.spacewoman185kLiLabel)
        self.spacewoman185kLiLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup iconCommentImageView
        self.iconCommentImageView = UIImageView()
        self.iconCommentImageView.backgroundColor = UIColor.clear
        self.iconCommentImageView.image = UIImage(named: "icon-comment")
        self.iconCommentImageView.contentMode = .center
        self.viewTwoView.addSubview(self.iconCommentImageView)
        self.iconCommentImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup kCommentsLabel
        self.kCommentsLabel = UILabel()
        self.kCommentsLabel.numberOfLines = 0
        self.kCommentsLabel.text = "21k comments"
        self.kCommentsLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.kCommentsLabel.textAlignment = .left
        self.kCommentsLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.kCommentsLabel.backgroundColor = UIColor.clear
        self.kCommentsLabel.alpha = 0.4
        self.viewTwoView.addSubview(self.kCommentsLabel)
        self.kCommentsLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        self.bgWhiteView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 30).isActive = true
        self.bgWhiteView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        
        // Setup bgNewsTempImageView
        self.bgNewsTempImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.bgNewsTempImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.bgNewsTempImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 80).isActive = true
        
        // Setup viewView
        self.viewView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 9).isActive = true
        self.viewView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -9).isActive = true
        self.viewView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 14).isActive = true
        self.viewView.heightAnchor.constraint(equalToConstant: 82).isActive = true
        
        // Setup spacecrunchLabel
        self.spacecrunchLabel.leadingAnchor.constraint(equalTo: self.iconAvatarImageView.trailingAnchor, constant: 8).isActive = true
        self.spacecrunchLabel.topAnchor.constraint(equalTo: self.viewView.topAnchor, constant: 25).isActive = true
        
        // Setup today145PmLabel
        self.today145PmLabel.leadingAnchor.constraint(equalTo: self.iconAvatarImageView.trailingAnchor, constant: 8).isActive = true
        self.today145PmLabel.topAnchor.constraint(equalTo: self.spacecrunchLabel.bottomAnchor, constant: 3).isActive = true
        
        // Setup iconAvatarImageView
        self.iconAvatarImageView.leadingAnchor.constraint(equalTo: self.viewView.leadingAnchor, constant: 0).isActive = true
        self.iconAvatarImageView.topAnchor.constraint(equalTo: self.viewView.topAnchor, constant: 0).isActive = true
        
        // Setup melonHuskLaunchesLabel
        self.melonHuskLaunchesLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
        self.melonHuskLaunchesLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        self.melonHuskLaunchesLabel.topAnchor.constraint(equalTo: self.bgNewsTempImageView.bottomAnchor, constant: 18).isActive = true
        self.melonHuskLaunchesLabel.bottomAnchor.constraint(equalTo: self.viewTwoView.topAnchor, constant: -22).isActive = true
        self.melonHuskLaunchesLabel.widthAnchor.constraint(equalToConstant: 335).isActive = true
        self.melonHuskLaunchesLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // Setup viewTwoView
        self.viewTwoView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.viewTwoView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.viewTwoView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        self.viewTwoView.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        // Setup iconLikeImageView
        self.iconLikeImageView.leadingAnchor.constraint(equalTo: self.viewTwoView.leadingAnchor, constant: 20).isActive = true
        self.iconLikeImageView.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup spacewoman185kLiLabel
        self.spacewoman185kLiLabel.leadingAnchor.constraint(equalTo: self.iconLikeImageView.trailingAnchor, constant: 5).isActive = true
        self.spacewoman185kLiLabel.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup iconCommentImageView
        self.iconCommentImageView.trailingAnchor.constraint(equalTo: self.kCommentsLabel.leadingAnchor, constant: -5).isActive = true
        self.iconCommentImageView.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup kCommentsLabel
        self.kCommentsLabel.trailingAnchor.constraint(equalTo: self.viewTwoView.trailingAnchor, constant: -20).isActive = true
        self.kCommentsLabel.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
    }
}
