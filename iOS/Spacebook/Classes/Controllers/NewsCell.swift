//
//  NewsCell.swift
//  Spacebook
//
//  Created by Artem.
//  Copyright © 2017 Supernova. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Class

class NewsCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var spacewoman185kLiLabel: UILabel!
    @IBOutlet fileprivate weak var kCommentsLabel: UILabel!
    @IBOutlet fileprivate weak var spacecrunchLabel: UILabel!
    @IBOutlet fileprivate weak var today145PmLabel: UILabel!
    @IBOutlet fileprivate weak var melonHuskLaunchesLabel: UILabel!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override func awakeFromNib() {

        super.awakeFromNib()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupText()
        self.setupLocalization()
        self.setupData()
    }

    fileprivate func setupUI() {

    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

    }

    fileprivate func setupLocalization() {

        self.spacewoman185kLiLabel.text = NSLocalizedString("NewsCell.spacewoman185kLiLabel", comment: "")
        self.kCommentsLabel.text = NSLocalizedString("NewsCell.kCommentsLabel", comment: "")
        self.spacecrunchLabel.text = NSLocalizedString("NewsCell.spacecrunchLabel", comment: "")
        self.today145PmLabel.text = NSLocalizedString("NewsCell.today145PmLabel", comment: "")
        self.melonHuskLaunchesLabel.text = NSLocalizedString("NewsCell.melonHuskLaunchesLabel", comment: "")
    }

    fileprivate func setupData() {

    }
}









