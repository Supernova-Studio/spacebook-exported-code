//
//  ProfilePhotosVC.swift
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

class ProfilePhotosVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    fileprivate var itemNavigationBarItem: UIBarButtonItem!
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
        // Left navigation items
        self.itemNavigationBarItem = UIBarButtonItem(image: UIImage(named: "group"), style: .plain, target: self, action: #selector(self.onItemPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.itemNavigationBarItem ]
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

        self.navigationItem.title = "Dr. When photos"
    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("ProfilePhotosVC.navigationBarTitle", comment: "")
        
        self.itemNavigationBarItem.title = NSLocalizedString("ProfilePhotosVC.itemNavigationBarItem", comment: "")
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

        // Pop the navigation stack or dismiss the modal presentation
        if let navigationController = self.navigationController, navigationController.viewControllers.first != self {
            navigationController.popViewController(animated: true)
        } else if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: {
            })
        }
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UICollectionViewDataSource

extension ProfilePhotosVC: UICollectionViewDataSource {


    enum CellIdentifiers : String {
        case CellPrototype1
        case CellPrototype2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if indexPath.row % 2 == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.CellPrototype1.rawValue, for: indexPath)
            self.configureCellPrototype1(cell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 2 == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.CellPrototype2.rawValue, for: indexPath)
            self.configureCellPrototype2(cell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    func configureCellPrototype1(cell: UICollectionViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }

    func configureCellPrototype2(cell: UICollectionViewCell, atIndexPath: IndexPath) {

        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UICollectionViewDelegate

extension ProfilePhotosVC: UICollectionViewDelegate {


    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        print("Item selected at index \(indexPath)")
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - UICollectionViewDelegateFlowLayout

extension ProfilePhotosVC: UICollectionViewDelegateFlowLayout {


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if indexPath.row % 2 == 0 {
            return CGSize(width: 375, height: 37)
        }
        else if indexPath.row % 2 == 1 {
            return CGSize(width: 185, height: 184)
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









