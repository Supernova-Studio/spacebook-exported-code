//
//  MessagesVC.swift
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

class MessagesVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var collectionView: UICollectionView!
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

        self.navigationItem.title = "Messages"
    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("MessagesVC.navigationBarTitle", comment: "")
        
        // Tabbar
        self.tabBarItem.title = NSLocalizedString("MessagesVC.tabBarTitle", comment: "")
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
// MARK: - UICollectionViewDataSource

extension MessagesVC: UICollectionViewDataSource {


    enum CellIdentifiers : String {
        case CellPrototype1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 2
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if indexPath.row % 1 == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.CellPrototype1.rawValue, for: indexPath)
            self.configureCellPrototype1(cell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    func configureCellPrototype1(cell: UICollectionViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UICollectionViewDelegate

extension MessagesVC: UICollectionViewDelegate {


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        print("Item selected at index \(indexPath)")
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UICollectionViewDelegateFlowLayout

extension MessagesVC: UICollectionViewDelegateFlowLayout {


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if indexPath.row % 1 == 0 {
            return CGSize(width: 60, height: 75)
        }
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {

        return 0
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UITableViewDataSource

extension MessagesVC: UITableViewDataSource {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row % 1 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath)
            self.configureMessageCell(cell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UITableViewCell()
    }

    func configureMessageCell(cell: UITableViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UITableViewDelegate

extension MessagesVC: UITableViewDelegate {


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        print("Row selected at index \(indexPath)")
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.row % 1 == 0 {
            return 80
        }
        return 0
    }
}









