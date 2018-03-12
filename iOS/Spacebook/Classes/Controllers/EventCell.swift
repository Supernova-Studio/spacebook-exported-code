//
//  EventCell.swift
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

class EventCell: UITableViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var eventCell: EventCell!
    @IBOutlet fileprivate weak var johnJoeAndJackLabel: UILabel!
    @IBOutlet fileprivate weak var label: UILabel!
    @IBOutlet fileprivate weak var guessWhoSBackLabel: UILabel!
    @IBOutlet fileprivate weak var laikaCreatedANewLabel: UILabel!
    @IBOutlet fileprivate weak var backFromTheSpaceLabel: UILabel!


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

        self.johnJoeAndJackLabel.text = NSLocalizedString("EventCell.johnJoeAndJackLabel", comment: "")
        self.label.text = NSLocalizedString("EventCell.label", comment: "")
        self.guessWhoSBackLabel.text = NSLocalizedString("EventCell.guessWhoSBackLabel", comment: "")
        self.laikaCreatedANewLabel.text = NSLocalizedString("EventCell.laikaCreatedANewLabel", comment: "")
        self.backFromTheSpaceLabel.text = NSLocalizedString("EventCell.backFromTheSpaceLabel", comment: "")
    }

    fileprivate func setupData() {

    }
}









