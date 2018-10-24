//
//  NewsTwoTableViewCell.swift
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

class NewsTwoTableViewCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var bgWhiteView: UIView!
    var bgNewsTempImageView: UIImageView!
    var viewView: UIView!
    var iconAvatarImageView: UIImageView!
    var theGoodOldTimesLabel: UILabel!
    var today145PmLabel: UILabel!
    var raidersFromTheGemLabel: UILabel!
    var viewTwoView: UIView!
    var iconLikeImageView: UIImageView!
    var varthDader3kLikLabel: UILabel!
    var commentsDisabledByLabel: UILabel!


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
        self.bgNewsTempImageView.image = UIImage(named: "bg-news-temp")
        self.bgNewsTempImageView.contentMode = .scaleToFill
        self.contentView.addSubview(self.bgNewsTempImageView)
        self.bgNewsTempImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup viewView
        self.viewView = UIView(frame: .zero)
        self.viewView.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.viewView)
        self.viewView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup iconAvatarImageView
        self.iconAvatarImageView = UIImageView()
        self.iconAvatarImageView.backgroundColor = UIColor.clear
        self.iconAvatarImageView.image = UIImage(named: "icon-avatar-2")
        self.iconAvatarImageView.contentMode = .center
        self.viewView.addSubview(self.iconAvatarImageView)
        self.iconAvatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup theGoodOldTimesLabel
        self.theGoodOldTimesLabel = UILabel()
        self.theGoodOldTimesLabel.numberOfLines = 0
        self.theGoodOldTimesLabel.text = "The Good Old Times"
        self.theGoodOldTimesLabel.textColor = UIColor(red: 0.059, green: 0.059, blue: 0.059, alpha: 1) /* #0F0F0F */
        self.theGoodOldTimesLabel.textAlignment = .left
        self.theGoodOldTimesLabel.font = UIFont(name: "Lato-Bold", size: 14)
        
        self.theGoodOldTimesLabel.backgroundColor = UIColor.clear
        self.viewView.addSubview(self.theGoodOldTimesLabel)
        self.theGoodOldTimesLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        // Setup raidersFromTheGemLabel
        self.raidersFromTheGemLabel = UILabel()
        self.raidersFromTheGemLabel.numberOfLines = 0
        let raidersFromTheGemLabelAttrString = NSMutableAttributedString(string: "Raiders from the Gemini Cluster are attacking colonial trader ships. When will the Federation step in?", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 14)!,
            .foregroundColor : UIColor(red: 0.03, green: 0.03, blue: 0.03, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.raidersFromTheGemLabel.attributedText = raidersFromTheGemLabelAttrString
        self.raidersFromTheGemLabel.backgroundColor = UIColor.clear
        self.contentView.addSubview(self.raidersFromTheGemLabel)
        self.raidersFromTheGemLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        // Setup varthDader3kLikLabel
        self.varthDader3kLikLabel = UILabel()
        self.varthDader3kLikLabel.numberOfLines = 0
        self.varthDader3kLikLabel.text = "Varth Dader & 3k like this"
        self.varthDader3kLikLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.varthDader3kLikLabel.textAlignment = .left
        self.varthDader3kLikLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.varthDader3kLikLabel.backgroundColor = UIColor.clear
        self.varthDader3kLikLabel.alpha = 0.4
        self.viewTwoView.addSubview(self.varthDader3kLikLabel)
        self.varthDader3kLikLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup commentsDisabledByLabel
        self.commentsDisabledByLabel = UILabel()
        self.commentsDisabledByLabel.numberOfLines = 0
        self.commentsDisabledByLabel.text = "Comments disabled by the force"
        self.commentsDisabledByLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.commentsDisabledByLabel.textAlignment = .right
        self.commentsDisabledByLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.commentsDisabledByLabel.backgroundColor = UIColor.clear
        self.commentsDisabledByLabel.alpha = 0.2
        self.viewTwoView.addSubview(self.commentsDisabledByLabel)
        self.commentsDisabledByLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        self.bgWhiteView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -1).isActive = true
        
        // Setup bgNewsTempImageView
        self.bgNewsTempImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.bgNewsTempImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.bgNewsTempImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 80).isActive = true
        
        // Setup viewView
        self.viewView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10).isActive = true
        self.viewView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        self.viewView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16).isActive = true
        self.viewView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        // Setup iconAvatarImageView
        self.iconAvatarImageView.leadingAnchor.constraint(equalTo: self.viewView.leadingAnchor, constant: 0).isActive = true
        self.iconAvatarImageView.topAnchor.constraint(equalTo: self.viewView.topAnchor, constant: 0).isActive = true
        
        // Setup theGoodOldTimesLabel
        self.theGoodOldTimesLabel.leadingAnchor.constraint(equalTo: self.iconAvatarImageView.trailingAnchor, constant: 9).isActive = true
        self.theGoodOldTimesLabel.topAnchor.constraint(equalTo: self.viewView.topAnchor, constant: 23).isActive = true
        
        // Setup today145PmLabel
        self.today145PmLabel.leadingAnchor.constraint(equalTo: self.iconAvatarImageView.trailingAnchor, constant: 9).isActive = true
        self.today145PmLabel.topAnchor.constraint(equalTo: self.theGoodOldTimesLabel.bottomAnchor, constant: 3).isActive = true
        
        // Setup raidersFromTheGemLabel
        self.raidersFromTheGemLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 20).isActive = true
        self.raidersFromTheGemLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -20).isActive = true
        self.raidersFromTheGemLabel.topAnchor.constraint(equalTo: self.bgNewsTempImageView.bottomAnchor, constant: 18).isActive = true
        self.raidersFromTheGemLabel.bottomAnchor.constraint(equalTo: self.viewTwoView.topAnchor, constant: -22).isActive = true
        
        // Setup viewTwoView
        self.viewTwoView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        self.viewTwoView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.viewTwoView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -1).isActive = true
        self.viewTwoView.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        // Setup iconLikeImageView
        self.iconLikeImageView.leadingAnchor.constraint(equalTo: self.viewTwoView.leadingAnchor, constant: 20).isActive = true
        self.iconLikeImageView.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup varthDader3kLikLabel
        self.varthDader3kLikLabel.leadingAnchor.constraint(equalTo: self.iconLikeImageView.trailingAnchor, constant: 5).isActive = true
        self.varthDader3kLikLabel.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup commentsDisabledByLabel
        self.commentsDisabledByLabel.trailingAnchor.constraint(equalTo: self.viewTwoView.trailingAnchor, constant: -20).isActive = true
        self.commentsDisabledByLabel.centerYAnchor.constraint(equalTo: self.viewTwoView.centerYAnchor, constant: 0).isActive = true
        
    }
}
