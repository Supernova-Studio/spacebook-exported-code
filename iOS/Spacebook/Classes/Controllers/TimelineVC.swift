//
//  TimelineVC.swift
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

class TimelineVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var tableView: UITableView!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override func viewDidLoad() {

        super.viewDidLoad()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupText()
        self.setupData()
        self.setupLocalization()
    }

    override func viewWillAppear(_ animated: Bool) {

        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    fileprivate func setupUI() {

        // Navigation bar
        let navigationBar = self.navigationController!.navigationBar
        navigationBar.setBackgroundImage(UIImage(named: "background"), for: .default)
        navigationBar.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        navigationBar.titleTextAttributes = [
            NSFontAttributeName : UIFont(name: "Lato-Regular", size: 17)!,
            NSForegroundColorAttributeName : UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        ]
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        // Tabbar
        self.hidesBottomBarWhenPushed = true
    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

        self.navigationItem.title = "What's up?"
    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("TimelineVC.navigationBarTitle", comment: "")
        
        // Tabbar
        self.tabBarItem.title = NSLocalizedString("TimelineVC.tabBarTitle", comment: "")
    }

    fileprivate func setupData() {

    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status bar

    override var prefersStatusBarHidden: Bool {

        return false
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {

        return .lightContent
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UITableViewDataSource

extension TimelineVC: UITableViewDataSource {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row % 4 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)
            self.configureNewsCell(cell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 4 == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LifetimeEventCell", for: indexPath)
            self.configureLifetimeEventCell(cell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 4 == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath)
            self.configureEventCell(cell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 4 == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementCell", for: indexPath)
            self.configureAdvertisementCell(cell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UITableViewCell()
    }

    func configureNewsCell(cell: UITableViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }

    func configureLifetimeEventCell(cell: UITableViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }

    func configureEventCell(cell: UITableViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }

    func configureAdvertisementCell(cell: UITableViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UITableViewDelegate

extension TimelineVC: UITableViewDelegate {


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        print("Row selected at index \(indexPath)")
        if indexPath.row % 4 == 2 {
            self.performSegue(withIdentifier: "Modal Event detail", sender: nil)
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.row % 4 == 0 {
            return 419
        }
        else if indexPath.row % 4 == 1 {
            return 196
        }
        else if indexPath.row % 4 == 2 {
            return 336
        }
        else if indexPath.row % 4 == 3 {
            return 123
        }
        return 0
    }
}









