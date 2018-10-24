//
//  SupernovaButton.swift
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

extension UIButton.State: Hashable  {

    public var hashValue: Int  {
        return Int(self.rawValue)
    }
}
class SupernovaButton: UIButton {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Data types

    public enum ImagePosition {
        case top
        case left
        case right
        case bottom
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    public var snImagePosition: ImagePosition = .left {
        didSet {
            self.setNeedsLayout()
        }
    }
    public var snImageTextSpacing: CGFloat = 0 {
        didSet {
            self.setNeedsLayout()
        }
    }
    public var snContentEdgeInsets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) {
        didSet {
            self.setNeedsLayout()
        }
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    public var ignoreLayout: Bool = false

    override public func layoutSubviews()  {
        super.layoutSubviews()
        
        // Setting contentEdgeInsets causes another layout. We need to prevent the infinite loop
        guard self.ignoreLayout == false else {
            self.ignoreLayout = false
            return
        }
        self.ignoreLayout = true
        
        if self.image(for: .normal) == nil || self.title(for: .normal) == nil {
            // Reset the insets if we don't have both image and title
            
            self.contentEdgeInsets = self.snContentEdgeInsets
            self.imageEdgeInsets = UIEdgeInsets.zero
            self.titleEdgeInsets = UIEdgeInsets.zero
            
        } else {
            
            let imageSize = self.imageView?.bounds.integral.size ?? CGSize.zero
            let titleSize = self.titleLabel?.bounds.integral.size ?? CGSize.zero
            
            let spacing = self.snImageTextSpacing / 2
            
            switch self.snImagePosition {
            case .top:
                // Horizontal:
                // We need to center both the image and the title using the width of the other one as one inset and the same negative value on the other side
                // The content insets need to shrink the entire width by subtracting half the smaller width from each side
                //
                // Vertical:
                // We need to move the image up using the title height and the title down using the image height
                // If one of them is smaller than the other, we need to remove that extra space through the content insets
                
                let smallerWidth = min(imageSize.width, titleSize.width)
                
                var imageAdjustment: CGFloat = 0
                var titleAdjustment: CGFloat = 0
                let difference = (imageSize.height - titleSize.height) / 2
                if difference < 0 {
                    imageAdjustment = -difference
                } else {
                    titleAdjustment = difference
                }
                
                self.contentEdgeInsets = UIEdgeInsets(top: titleSize.height / 2 - imageAdjustment + spacing + self.snContentEdgeInsets.top,
                                                      left: -smallerWidth / 2 + self.snContentEdgeInsets.left,
                                                      bottom: imageSize.height / 2 - titleAdjustment + spacing + self.snContentEdgeInsets.bottom,
                                                      right: -smallerWidth / 2 + self.snContentEdgeInsets.right)
                
                self.imageEdgeInsets = UIEdgeInsets(top: -titleSize.height / 2 - spacing,
                                                    left: 0,
                                                    bottom: titleSize.height / 2 + spacing,
                                                    right: -titleSize.width)
                
                self.titleEdgeInsets = UIEdgeInsets(top: imageSize.height / 2 + spacing,
                                                    left: -imageSize.width,
                                                    bottom: -imageSize.height / 2 - spacing,
                                                    right: 0)
                
                
            case .left:
                // Left image is significantly easier than all the other options, because it is the system implementation.
                // We only care about the spacing and snContentEdgeInsets
                
                self.contentEdgeInsets = UIEdgeInsets(top: self.snContentEdgeInsets.top,
                                                      left: spacing + self.snContentEdgeInsets.left,
                                                      bottom: self.snContentEdgeInsets.bottom,
                                                      right: spacing + self.snContentEdgeInsets.right)
                
                self.imageEdgeInsets = UIEdgeInsets(top: 0,
                                                    left: -spacing,
                                                    bottom: 0,
                                                    right: spacing)
                
                self.titleEdgeInsets = UIEdgeInsets(top: 0,
                                                    left: spacing,
                                                    bottom: 0,
                                                    right: -spacing)
                
                
            case .right:
                // Right image requires adjusting insets so the image and title get swapped, but nothing on the vertical axis.
                
                self.contentEdgeInsets = UIEdgeInsets(top: self.snContentEdgeInsets.top,
                                                      left: spacing + self.snContentEdgeInsets.left,
                                                      bottom: self.snContentEdgeInsets.bottom,
                                                      right: spacing + self.snContentEdgeInsets.right)
                
                self.imageEdgeInsets = UIEdgeInsets(top: 0,
                                                    left: titleSize.width + spacing,
                                                    bottom: 0,
                                                    right: -titleSize.width - spacing)
                
                self.titleEdgeInsets = UIEdgeInsets(top: 0,
                                                    left: -imageSize.width - spacing,
                                                    bottom: 0,
                                                    right: imageSize.width + spacing)
                
                
            case .bottom:
                // Horizontal:
                // We need to center both the image and the title using the width of the other one as one inset and the same negative value on the other side
                // The content insets need to shrink the entire width by subtracting half the smaller width from each side
                //
                // Vertical:
                // We need to move the image down using the title height and the title up using the image height
                // If one of them is smaller than the other, we need to remove that extra space through the content insets
                
                let smallerWidth = min(imageSize.width, titleSize.width)
                
                var imageAdjustment: CGFloat = 0
                var titleAdjustment: CGFloat = 0
                let difference = (imageSize.height - titleSize.height) / 2
                if difference > 0 {
                    imageAdjustment = difference
                } else {
                    titleAdjustment = -difference
                }
                
                self.contentEdgeInsets = UIEdgeInsets(top: titleSize.height / 2 - titleAdjustment + spacing + self.snContentEdgeInsets.top,
                                                      left: -smallerWidth / 2 + self.snContentEdgeInsets.left,
                                                      bottom: imageSize.height / 2 - imageAdjustment + spacing + self.snContentEdgeInsets.bottom,
                                                      right: -smallerWidth / 2 + self.snContentEdgeInsets.right)
                
                self.imageEdgeInsets = UIEdgeInsets(top: titleSize.height / 2 + spacing,
                                                    left: 0,
                                                    bottom: -titleSize.height / 2 - spacing,
                                                    right: -titleSize.width)
                
                self.titleEdgeInsets = UIEdgeInsets(top: -imageSize.height / 2 - spacing,
                                                    left: -imageSize.width,
                                                    bottom: imageSize.height / 2 + spacing,
                                                    right: 0)
            }
        }
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - States

    override public var isHighlighted: Bool {
        didSet {
            self.updateBackgroundColor()
        }
    }
    override public var isSelected: Bool {
        didSet {
            self.updateBackgroundColor()
        }
    }
    override public var isEnabled: Bool {
        didSet {
            self.updateBackgroundColor()
        }
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Background color

    private var backgroundColors: [UIButton.State: UIColor] = [:]

    public func snSetBackgroundColor(_ color: UIColor?, for state: UIButton.State)  {
        self.backgroundColors[state] = color
    }
    
    private var ignoreBackgroundColorChange: Bool = false
    override public var backgroundColor: UIColor? {
        didSet {
            if !self.ignoreBackgroundColorChange {
                self.backgroundColors[.normal] = backgroundColor
            }
        }
    }

    private func updateBackgroundColor()  {
        self.ignoreBackgroundColorChange = true
        if self.isEnabled == false, let color = self.backgroundColors[.disabled] {
            self.backgroundColor = color
        } else if self.isSelected, let color = self.backgroundColors[.selected] {
            self.backgroundColor = color
        } else if self.isHighlighted, let color = self.backgroundColors[.highlighted] {
            self.backgroundColor = color
        } else {
            self.backgroundColor = self.backgroundColors[.normal]
        }
        self.ignoreBackgroundColorChange = false
    }
}
