//
//  AdvertisementCell.swift
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

class AdvertisementCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var hullTattoosANewLabel: UILabel!
    @IBOutlet fileprivate weak var sponsoredContentLabel: UILabel!
    @IBOutlet fileprivate weak var sprayAndPrayLabel: UILabel!


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

        self.hullTattoosANewLabel.text = NSLocalizedString("AdvertisementCell.hullTattoosANewLabel", comment: "")
        self.sponsoredContentLabel.text = NSLocalizedString("AdvertisementCell.sponsoredContentLabel", comment: "")
        self.sprayAndPrayLabel.text = NSLocalizedString("AdvertisementCell.sprayAndPrayLabel", comment: "")
    }

    fileprivate func setupData() {

    }
}









