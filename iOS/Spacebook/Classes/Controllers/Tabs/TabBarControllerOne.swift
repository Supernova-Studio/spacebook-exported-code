//
//  TabBarControllerOne.swift
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

class TabBarControllerOne: UITabBarController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties




    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override func viewDidLoad() {

        super.viewDidLoad()
        self.setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
    }

    fileprivate func setupUI() {

        // Tab bar
        // Background color requires an empty background image
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
        if #available(iOS 10, *) {
            self.tabBar.unselectedItemTintColor = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1)
        }
        self.tabBar.tintColor = UIColor(red: 0.57, green: 0.14, blue: 0.54, alpha: 1)
        for item in self.tabBar.items! {
            item.setTitleTextAttributes([
                NSFontAttributeName : UIFont.systemFont(ofSize: 12),
                NSForegroundColorAttributeName : UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 1)
            ], for: .normal)
            item.setTitleTextAttributes([
                NSFontAttributeName : UIFont.systemFont(ofSize: 12),
                NSForegroundColorAttributeName : UIColor(red: 0.57, green: 0.14, blue: 0.54, alpha: 1)
            ], for: .selected)
        }
    }
}









