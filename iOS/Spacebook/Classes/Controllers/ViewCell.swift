//
//  ViewCell.swift
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

class ViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var viewCell: ViewCell!


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

    }

    fileprivate func setupData() {

    }
}









