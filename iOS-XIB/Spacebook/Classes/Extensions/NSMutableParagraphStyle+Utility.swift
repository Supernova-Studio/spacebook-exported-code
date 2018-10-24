//
//  NSMutableParagraphStyle+Utility.swift
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



// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Convenience init

extension NSMutableParagraphStyle {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Utility
    convenience init(alignment: NSTextAlignment?, lineHeight: CGFloat?, paragraphSpacing: CGFloat?) {
        self.init()
        if let alignment = alignment {
            self.alignment = alignment
        }
        if let height = lineHeight, height > 0 {
            self.minimumLineHeight = height
            self.maximumLineHeight = height
        }
        if let spacing = paragraphSpacing {
            self.paragraphSpacing = spacing
        }
    }
}
