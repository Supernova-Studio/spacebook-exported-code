//
//  SupernovaTextField.swift
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

class SupernovaTextField: UITextField {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties



    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Insets
    public var snContentInsets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) {
        didSet {
            self.setNeedsLayout()
        }
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect  {
        return super.textRect(forBounds: bounds).inset(by: self.snContentInsets)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect  {
        return super.textRect(forBounds: bounds).inset(by: self.snContentInsets)
    }

    override func clearButtonRect(forBounds bounds: CGRect) -> CGRect  {
        var rect = super.clearButtonRect(forBounds: bounds)
        rect.origin.x -= self.snContentInsets.right
        rect.origin.y += (self.snContentInsets.top - self.snContentInsets.bottom) / 2
        return rect
    }
}
