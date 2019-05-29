//
//  ProfilePhotosViewController.swift
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

class ProfilePhotosViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var galleryCollectionView: UICollectionView!
    var groupBarButtonItem: UIBarButtonItem!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup galleryCollectionView
        
    }

    private func setupUI()  {
        self.extendedLayoutIncludesOpaqueBars = true
        
        // Hide the back button
        self.navigationItem.hidesBackButton = true
        // Left navigation items
        self.groupBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.groupBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Dr. When photos"
        self.galleryCollectionView.register(UINib(nibName: "TitleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TitleCollectionViewCell")
        self.galleryCollectionView.register(UINib(nibName: "ViewFourCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ViewFourCollectionViewCell")
        self.galleryCollectionView.register(UINib(nibName: "ViewFiveCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ViewFiveCollectionViewCell")
        self.galleryCollectionView.register(UINib(nibName: "TitleTwoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TitleTwoCollectionViewCell")
        self.galleryCollectionView.register(UINib(nibName: "ViewSixCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ViewSixCollectionViewCell")
        self.galleryCollectionView.register(UINib(nibName: "ViewSevenCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ViewSevenCollectionViewCell")
        self.galleryCollectionView.register(UINib(nibName: "ViewEightCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ViewEightCollectionViewCell")
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return false
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .lightContent
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onGroupPressed(_ sender: UIView)  {
        // Pop the navigation stack or dismiss the modal presentation
        if let navigationController = self.navigationController, navigationController.viewControllers.first != self {
            navigationController.popViewController(animated: true)
        } else if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: nil)
        }
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfilePhotosViewController

extension ProfilePhotosViewController: UICollectionViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int  {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  {
        return 14
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        if indexPath.row % 7 == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleCollectionViewCell", for: indexPath)
            self.configure(titleCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 7 == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewFourCollectionViewCell", for: indexPath)
            self.configure(viewFourCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 7 == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewFiveCollectionViewCell", for: indexPath)
            self.configure(viewFiveCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 7 == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleTwoCollectionViewCell", for: indexPath)
            self.configure(titleTwoCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 7 == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewSixCollectionViewCell", for: indexPath)
            self.configure(viewSixCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 7 == 5 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewSevenCollectionViewCell", for: indexPath)
            self.configure(viewSevenCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 7 == 6 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewEightCollectionViewCell", for: indexPath)
            self.configure(viewEightCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    public func configure(titleCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(viewFourCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(viewFiveCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(titleTwoCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(viewSixCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(viewSevenCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(viewEightCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfilePhotosViewController

extension ProfilePhotosViewController: UICollectionViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        print("Item selected at index \(indexPath)")
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfilePhotosViewController

extension ProfilePhotosViewController: UICollectionViewDelegateFlowLayout  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize  {
        if indexPath.row % 7 == 0 {
            return CGSize(width: 375, height: 37)
        }
        else if indexPath.row % 7 == 1 {
            return CGSize(width: 185, height: 184)
        }
        else if indexPath.row % 7 == 2 {
            return CGSize(width: 185, height: 184)
        }
        else if indexPath.row % 7 == 3 {
            return CGSize(width: 375, height: 37)
        }
        else if indexPath.row % 7 == 4 {
            return CGSize(width: 184, height: 184)
        }
        else if indexPath.row % 7 == 5 {
            return CGSize(width: 184, height: 184)
        }
        else if indexPath.row % 7 == 6 {
            return CGSize(width: 184, height: 184)
        }
        
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }
}
