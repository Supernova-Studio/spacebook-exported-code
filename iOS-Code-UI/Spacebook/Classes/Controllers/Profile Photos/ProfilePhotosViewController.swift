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

    var profilePhotosView: UIView!
    var galleryCollectionView: UICollectionView!
    var groupBarButtonItem: UIBarButtonItem!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupLayout()
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
        // Setup profilePhotosView
        self.view.backgroundColor = UIColor(red: 0.957, green: 0.949, blue: 0.957, alpha: 1) /* #F4F2F4 */
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup galleryCollectionView
        let galleryCollectionViewLayout = UICollectionViewFlowLayout()
        galleryCollectionViewLayout.scrollDirection = .vertical
        galleryCollectionViewLayout.minimumLineSpacing = 10
        galleryCollectionViewLayout.minimumInteritemSpacing = 10
        galleryCollectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.galleryCollectionView = UICollectionView(frame: .zero, collectionViewLayout: galleryCollectionViewLayout)
        self.galleryCollectionView.backgroundColor = UIColor.clear
        self.galleryCollectionView.dataSource = self
        self.galleryCollectionView.delegate = self
        self.view.addSubview(self.galleryCollectionView)
        self.galleryCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupUI()  {
        self.extendedLayoutIncludesOpaqueBars = true
        
        // Left navigation items
        self.groupBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.groupBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Dr. When photos"
        self.galleryCollectionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: "TitleCollectionViewCell")
        self.galleryCollectionView.register(ViewFourCollectionViewCell.self, forCellWithReuseIdentifier: "ViewFourCollectionViewCell")
        self.galleryCollectionView.register(ViewFiveCollectionViewCell.self, forCellWithReuseIdentifier: "ViewFiveCollectionViewCell")
        self.galleryCollectionView.register(TitleTwoCollectionViewCell.self, forCellWithReuseIdentifier: "TitleTwoCollectionViewCell")
        self.galleryCollectionView.register(ViewSixCollectionViewCell.self, forCellWithReuseIdentifier: "ViewSixCollectionViewCell")
        self.galleryCollectionView.register(ViewSevenCollectionViewCell.self, forCellWithReuseIdentifier: "ViewSevenCollectionViewCell")
        self.galleryCollectionView.register(ViewEightCollectionViewCell.self, forCellWithReuseIdentifier: "ViewEightCollectionViewCell")
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup profilePhotosView
        
        // Setup galleryCollectionView
        self.galleryCollectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.galleryCollectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.galleryCollectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 73).isActive = true
        self.galleryCollectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 1).isActive = true
        
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
