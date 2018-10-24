//
//  TabBarController.swift
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

class TabBarController: UITabBarController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupConnections()
        self.setupUI()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    private func setupConnections()  {
        // Timeline
        let controller1 = TimelineViewController(nibName: "TimelineViewController", bundle: nil)
        let navigationController1 = UINavigationController(rootViewController: controller1)
        navigationController1.tabBarItem = UITabBarItem(title: "News", image: UIImage(named: "active-icon-7")?.withRenderingMode(.alwaysTemplate), selectedImage: nil)
        
        // Messages
        let controller2 = MessagesViewController(nibName: "MessagesViewController", bundle: nil)
        let navigationController2 = UINavigationController(rootViewController: controller2)
        navigationController2.tabBarItem = UITabBarItem(title: "Messages", image: UIImage(named: "active-icon-3")?.withRenderingMode(.alwaysTemplate), selectedImage: nil)
        
        // Profile
        let controller3 = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        let navigationController3 = UINavigationController(rootViewController: controller3)
        navigationController3.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "active-icon-6")?.withRenderingMode(.alwaysTemplate), selectedImage: nil)
        
        self.viewControllers = [navigationController1, navigationController2, navigationController3]
    }

    private func setupUI()  {
        // Tab Bar
        // Background color requires an empty background image
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
        if #available(iOS 10, *) {
            self.tabBar.unselectedItemTintColor = UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1)
        }
        self.tabBar.tintColor = UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1)
        for item in self.tabBar.items! {
            item.setTitleTextAttributes([
                NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
                NSAttributedString.Key.foregroundColor : UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1)
            ], for: .normal)
            item.setTitleTextAttributes([
                NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
                NSAttributedString.Key.foregroundColor : UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1)
            ], for: .selected)
        }
    }
}
