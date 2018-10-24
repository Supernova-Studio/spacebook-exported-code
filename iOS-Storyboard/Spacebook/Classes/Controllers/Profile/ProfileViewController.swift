//
//  ProfileViewController.swift
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

class ProfileViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var drWhatLabel: UILabel!
    @IBOutlet weak var travelerDreamerLabel: UILabel!
    @IBOutlet weak var latestPhotosLabel: UILabel!
    @IBOutlet weak var photosCollectionView: UICollectionView!
    var leftItemBarButtonItem: UIBarButtonItem!


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
        // Setup drWhatLabel
        let drWhatLabelAttrString = NSMutableAttributedString(string: "Dr. What", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 26)!,
            .foregroundColor : UIColor(red: 0.02, green: 0.05, blue: 0.09, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 32, paragraphSpacing: 0)
        ])
        self.drWhatLabel.attributedText = drWhatLabelAttrString
        
        // Setup travelerDreamerLabel
        let travelerDreamerLabelAttrString = NSMutableAttributedString(string: "Traveler, dreamer, showman. Occasionally gets into fight, not always survives.", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 14)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.travelerDreamerLabel.attributedText = travelerDreamerLabelAttrString
        
        // Setup latestPhotosLabel
        let latestPhotosLabelAttrString = NSMutableAttributedString(string: "LATEST PHOTOS", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 12)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.07,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.latestPhotosLabel.attributedText = latestPhotosLabelAttrString
        
        // Setup photosCollectionView
        
    }

    private func setupUI()  {
        let navigationBar = self.navigationController!.navigationBar
        let navigationGradient = CAGradientLayer()
        navigationGradient.frame = navigationBar.bounds
        navigationGradient.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1).cgColor]
        navigationGradient.locations = [0.000, 1.000]
        navigationGradient.startPoint = CGPoint(x: -0.0141273757501576, y: 0.5149750451987369)
        navigationGradient.endPoint = CGPoint(x: 1.014127375750157, y: 0.4850249548012593)
        navigationBar.setBackgroundImage(UIImage.image(fromLayer: navigationGradient).resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch), for: .default)
        
        navigationBar.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font : UIFont(name: "Lato-Regular", size: 17)!,
            NSAttributedString.Key.foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
        ]
        
        // Right navigation items
        self.leftItemBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(self.onLeftItemPressed(_:)))
        self.navigationItem.rightBarButtonItems = [ self.leftItemBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Dr. What Profile"
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

    @IBAction public func onLeftItemPressed(_ sender: UIView)  {
        self.performSegue(withIdentifier: "Push Profile Settings", sender: nil)
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfileViewController

extension ProfileViewController: UICollectionViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int  {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  {
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        if indexPath.row % 3 == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCollectionViewCell", for: indexPath)
            self.configure(viewCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 3 == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewTwoCollectionViewCell", for: indexPath)
            self.configure(viewTwoCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 3 == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewThreeCollectionViewCell", for: indexPath)
            self.configure(viewThreeCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    public func configure(viewCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(viewTwoCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(viewThreeCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfileViewController

extension ProfileViewController: UICollectionViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        print("Item selected at index \(indexPath)")
        if indexPath.row % 3 == 0 {
            self.performSegue(withIdentifier: "Push Profile Photos", sender: nil)
        }
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension ProfileViewController

extension ProfileViewController: UICollectionViewDelegateFlowLayout  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize  {
        if indexPath.row % 3 == 0 {
            return CGSize(width: 123, height: 122)
        }
        else if indexPath.row % 3 == 1 {
            return CGSize(width: 122, height: 122)
        }
        else if indexPath.row % 3 == 2 {
            return CGSize(width: 122, height: 122)
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
