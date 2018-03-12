//
//  ProfileVC.swift
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

class ProfileVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    fileprivate var itemNavigationBarItem: UIBarButtonItem!
    @IBOutlet fileprivate weak var phoneBoothAndroLabel: UILabel!
    @IBOutlet fileprivate weak var drWhatLabel: UILabel!
    @IBOutlet fileprivate weak var travelerDreamerLabel: UILabel!
    @IBOutlet fileprivate weak var stalkingLabel: UILabel!
    @IBOutlet fileprivate weak var label: UILabel!
    @IBOutlet fileprivate weak var stalkersLabel: UILabel!
    @IBOutlet fileprivate weak var kLabel: UILabel!
    @IBOutlet fileprivate weak var photosLabel: UILabel!
    @IBOutlet fileprivate weak var labelTwo: UILabel!
    @IBOutlet fileprivate weak var latestPhotosLabel: UILabel!
    @IBOutlet fileprivate weak var collectionView: UICollectionView!


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
        
        // Right navigation items
        self.itemNavigationBarItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(self.onItemPressed(_:)))
        self.navigationItem.rightBarButtonItems = [ self.itemNavigationBarItem ]
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        // Tabbar
        self.hidesBottomBarWhenPushed = true
    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

        self.navigationItem.title = "Dr. What Profile"
    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("ProfileVC.navigationBarTitle", comment: "")
        
        self.itemNavigationBarItem.title = NSLocalizedString("ProfileVC.itemNavigationBarItem", comment: "")
        
        // Tabbar
        self.tabBarItem.title = NSLocalizedString("ProfileVC.tabBarTitle", comment: "")
        
        // Components
        self.phoneBoothAndroLabel.text = NSLocalizedString("ProfileVC.phoneBoothAndroLabel", comment: "")
        self.drWhatLabel.text = NSLocalizedString("ProfileVC.drWhatLabel", comment: "")
        self.travelerDreamerLabel.text = NSLocalizedString("ProfileVC.travelerDreamerLabel", comment: "")
        self.stalkingLabel.text = NSLocalizedString("ProfileVC.stalkingLabel", comment: "")
        self.label.text = NSLocalizedString("ProfileVC.label", comment: "")
        self.stalkersLabel.text = NSLocalizedString("ProfileVC.stalkersLabel", comment: "")
        self.kLabel.text = NSLocalizedString("ProfileVC.kLabel", comment: "")
        self.photosLabel.text = NSLocalizedString("ProfileVC.photosLabel", comment: "")
        self.labelTwo.text = NSLocalizedString("ProfileVC.labelTwo", comment: "")
        self.latestPhotosLabel.text = NSLocalizedString("ProfileVC.latestPhotosLabel", comment: "")
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


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction func onItemPressed(_ sender: UIBarButtonItem) {

        self.performSegue(withIdentifier: "Push Profile Settings", sender: nil)
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UICollectionViewDataSource

extension ProfileVC: UICollectionViewDataSource {


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

extension ProfileVC: UICollectionViewDelegate {


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        print("Item selected at index \(indexPath)")
        if indexPath.row % 1 == 0 {
            self.performSegue(withIdentifier: "Push Profile Photos", sender: nil)
        }
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UICollectionViewDelegateFlowLayout

extension ProfileVC: UICollectionViewDelegateFlowLayout {


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if indexPath.row % 1 == 0 {
            return CGSize(width: 123, height: 122)
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









