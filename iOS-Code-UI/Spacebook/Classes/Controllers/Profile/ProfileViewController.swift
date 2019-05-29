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

    var profileView: UIView!
    var headerView: UIView!
    var avatarTempImageView: UIImageView!
    var drWhatLabel: UILabel!
    var phoneBoothAndroLabel: UILabel!
    var travelerDreamerLabel: UILabel!
    var infoBarView: UIView!
    var group5View: UIView!
    var labelLabel: UILabel!
    var photosLabel: UILabel!
    var group6View: UIView!
    var kLabel: UILabel!
    var stalkersLabel: UILabel!
    var group7View: UIView!
    var labelTwoLabel: UILabel!
    var stalkingLabel: UILabel!
    var galleryView: UIView!
    var latestPhotosLabel: UILabel!
    var photosCollectionView: UICollectionView!
    var leftItemBarButtonItem: UIBarButtonItem!


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
        // Setup profileView
        self.view.backgroundColor = UIColor(red: 0.957, green: 0.949, blue: 0.957, alpha: 1) /* #F4F2F4 */
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup headerView
        self.headerView = UIView(frame: .zero)
        self.headerView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.view.addSubview(self.headerView)
        self.headerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup avatarTempImageView
        self.avatarTempImageView = UIImageView()
        self.avatarTempImageView.backgroundColor = UIColor.clear
        self.avatarTempImageView.image = UIImage(named: "avatar-temp")
        self.avatarTempImageView.contentMode = .center
        self.headerView.addSubview(self.avatarTempImageView)
        self.avatarTempImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup drWhatLabel
        self.drWhatLabel = UILabel()
        self.drWhatLabel.numberOfLines = 0
        let drWhatLabelAttrString = NSMutableAttributedString(string: "Dr. What", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 26)!,
            .foregroundColor : UIColor(red: 0.02, green: 0.05, blue: 0.09, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 32, paragraphSpacing: 0)
        ])
        self.drWhatLabel.attributedText = drWhatLabelAttrString
        self.drWhatLabel.backgroundColor = UIColor.clear
        self.headerView.addSubview(self.drWhatLabel)
        self.drWhatLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup phoneBoothAndroLabel
        self.phoneBoothAndroLabel = UILabel()
        self.phoneBoothAndroLabel.numberOfLines = 0
        self.phoneBoothAndroLabel.text = "1 Phone Booth, Andromeda"
        self.phoneBoothAndroLabel.textColor = UIColor(red: 0.016, green: 0.047, blue: 0.086, alpha: 1) /* #040C16 */
        self.phoneBoothAndroLabel.textAlignment = .center
        self.phoneBoothAndroLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.phoneBoothAndroLabel.backgroundColor = UIColor.clear
        self.phoneBoothAndroLabel.alpha = 0.4
        self.headerView.addSubview(self.phoneBoothAndroLabel)
        self.phoneBoothAndroLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup travelerDreamerLabel
        self.travelerDreamerLabel = UILabel()
        self.travelerDreamerLabel.numberOfLines = 0
        let travelerDreamerLabelAttrString = NSMutableAttributedString(string: "Traveler, dreamer, showman. Occasionally gets into fight, not always survives.", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 14)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 20, paragraphSpacing: 0)
        ])
        self.travelerDreamerLabel.attributedText = travelerDreamerLabelAttrString
        self.travelerDreamerLabel.backgroundColor = UIColor.clear
        self.headerView.addSubview(self.travelerDreamerLabel)
        self.travelerDreamerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup infoBarView
        self.infoBarView = UIView(frame: .zero)
        self.infoBarView.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1) /* #FAFAFA */
        self.view.addSubview(self.infoBarView)
        self.infoBarView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group5View
        self.group5View = UIView(frame: .zero)
        self.group5View.backgroundColor = UIColor.clear
        self.infoBarView.addSubview(self.group5View)
        self.group5View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelLabel
        self.labelLabel = UILabel()
        self.labelLabel.numberOfLines = 0
        self.labelLabel.text = "365"
        self.labelLabel.textColor = UIColor(red: 0.969, green: 0.518, blue: 0.384, alpha: 1) /* #F78462 */
        self.labelLabel.textAlignment = .center
        self.labelLabel.font = UIFont(name: "Lato-Bold", size: 24)
        
        self.labelLabel.backgroundColor = UIColor.clear
        self.group5View.addSubview(self.labelLabel)
        self.labelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup photosLabel
        self.photosLabel = UILabel()
        self.photosLabel.numberOfLines = 0
        self.photosLabel.text = "Photos"
        self.photosLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.photosLabel.textAlignment = .center
        self.photosLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.photosLabel.backgroundColor = UIColor.clear
        self.photosLabel.alpha = 0.4
        self.group5View.addSubview(self.photosLabel)
        self.photosLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group6View
        self.group6View = UIView(frame: .zero)
        self.group6View.backgroundColor = UIColor.clear
        self.infoBarView.addSubview(self.group6View)
        self.group6View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup kLabel
        self.kLabel = UILabel()
        self.kLabel.numberOfLines = 0
        self.kLabel.text = "58k"
        self.kLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.kLabel.textAlignment = .center
        self.kLabel.font = UIFont(name: "Lato-Bold", size: 24)
        
        self.kLabel.backgroundColor = UIColor.clear
        self.group6View.addSubview(self.kLabel)
        self.kLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup stalkersLabel
        self.stalkersLabel = UILabel()
        self.stalkersLabel.numberOfLines = 0
        self.stalkersLabel.text = "Stalkers"
        self.stalkersLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.stalkersLabel.textAlignment = .center
        self.stalkersLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.stalkersLabel.backgroundColor = UIColor.clear
        self.stalkersLabel.alpha = 0.4
        self.group6View.addSubview(self.stalkersLabel)
        self.stalkersLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group7View
        self.group7View = UIView(frame: .zero)
        self.group7View.backgroundColor = UIColor.clear
        self.infoBarView.addSubview(self.group7View)
        self.group7View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelTwoLabel
        self.labelTwoLabel = UILabel()
        self.labelTwoLabel.numberOfLines = 0
        self.labelTwoLabel.text = "326"
        self.labelTwoLabel.textColor = UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1) /* #8B1B8C */
        self.labelTwoLabel.textAlignment = .center
        self.labelTwoLabel.font = UIFont(name: "Lato-Bold", size: 24)
        
        self.labelTwoLabel.backgroundColor = UIColor.clear
        self.group7View.addSubview(self.labelTwoLabel)
        self.labelTwoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup stalkingLabel
        self.stalkingLabel = UILabel()
        self.stalkingLabel.numberOfLines = 0
        self.stalkingLabel.text = "Stalking"
        self.stalkingLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.stalkingLabel.textAlignment = .center
        self.stalkingLabel.font = UIFont(name: "Lato-Regular", size: 12)
        
        self.stalkingLabel.backgroundColor = UIColor.clear
        self.stalkingLabel.alpha = 0.4
        self.group7View.addSubview(self.stalkingLabel)
        self.stalkingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup galleryView
        self.galleryView = UIView(frame: .zero)
        self.galleryView.backgroundColor = UIColor.clear
        self.view.addSubview(self.galleryView)
        self.galleryView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup latestPhotosLabel
        self.latestPhotosLabel = UILabel()
        self.latestPhotosLabel.numberOfLines = 0
        let latestPhotosLabelAttrString = NSMutableAttributedString(string: "LATEST PHOTOS", attributes: [
            .font : UIFont.systemFont(ofSize: 12),
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.07,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.latestPhotosLabel.attributedText = latestPhotosLabelAttrString
        self.latestPhotosLabel.backgroundColor = UIColor.clear
        self.latestPhotosLabel.alpha = 0.4
        self.galleryView.addSubview(self.latestPhotosLabel)
        self.latestPhotosLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup photosCollectionView
        let photosCollectionViewLayout = UICollectionViewFlowLayout()
        photosCollectionViewLayout.scrollDirection = .horizontal
        photosCollectionViewLayout.minimumLineSpacing = 10
        photosCollectionViewLayout.minimumInteritemSpacing = 10
        photosCollectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.photosCollectionView = UICollectionView(frame: .zero, collectionViewLayout: photosCollectionViewLayout)
        self.photosCollectionView.backgroundColor = UIColor.clear
        self.photosCollectionView.dataSource = self
        self.photosCollectionView.delegate = self
        self.galleryView.addSubview(self.photosCollectionView)
        self.photosCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupUI()  {
        self.extendedLayoutIncludesOpaqueBars = true
        
        let navigationBar = self.navigationController!.navigationBar
        let navigationGradient = CAGradientLayer()
        navigationGradient.frame = navigationBar.bounds
        navigationGradient.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1).cgColor]
        navigationGradient.locations = [0.000, 1.000]
        navigationGradient.startPoint = CGPoint(x: -0.014, y: 0.515)
        navigationGradient.endPoint = CGPoint(x: 1.014, y: 0.485)
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
        self.photosCollectionView.register(ViewCollectionViewCell.self, forCellWithReuseIdentifier: "ViewCollectionViewCell")
        self.photosCollectionView.register(ViewTwoCollectionViewCell.self, forCellWithReuseIdentifier: "ViewTwoCollectionViewCell")
        self.photosCollectionView.register(ViewThreeCollectionViewCell.self, forCellWithReuseIdentifier: "ViewThreeCollectionViewCell")
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup profileView
        
        // Setup headerView
        self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.headerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 64).isActive = true
        self.headerView.heightAnchor.constraint(equalToConstant: 297).isActive = true
        
        // Setup avatarTempImageView
        self.avatarTempImageView.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor, constant: 0).isActive = true
        self.avatarTempImageView.topAnchor.constraint(equalTo: self.headerView.topAnchor, constant: 25).isActive = true
        
        // Setup drWhatLabel
        self.drWhatLabel.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor, constant: 0).isActive = true
        self.drWhatLabel.topAnchor.constraint(equalTo: self.avatarTempImageView.bottomAnchor, constant: 11).isActive = true
        
        // Setup phoneBoothAndroLabel
        self.phoneBoothAndroLabel.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor, constant: 0).isActive = true
        self.phoneBoothAndroLabel.topAnchor.constraint(equalTo: self.drWhatLabel.bottomAnchor, constant: 5).isActive = true
        
        // Setup travelerDreamerLabel
        self.travelerDreamerLabel.centerXAnchor.constraint(equalTo: self.headerView.centerXAnchor, constant: 0).isActive = true
        self.travelerDreamerLabel.bottomAnchor.constraint(equalTo: self.headerView.bottomAnchor, constant: -27).isActive = true
        self.travelerDreamerLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        // Setup infoBarView
        self.infoBarView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.infoBarView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.infoBarView.topAnchor.constraint(equalTo: self.headerView.bottomAnchor, constant: 0).isActive = true
        self.infoBarView.heightAnchor.constraint(equalToConstant: 84).isActive = true
        
        // Setup group5View
        self.group5View.leadingAnchor.constraint(equalTo: self.infoBarView.leadingAnchor, constant: 42).isActive = true
        self.group5View.centerYAnchor.constraint(equalTo: self.infoBarView.centerYAnchor, constant: 0).isActive = true
        self.group5View.widthAnchor.constraint(equalToConstant: 42).isActive = true
        self.group5View.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        // Setup labelLabel
        self.labelLabel.leadingAnchor.constraint(equalTo: self.group5View.leadingAnchor, constant: 0).isActive = true
        self.labelLabel.trailingAnchor.constraint(equalTo: self.group5View.trailingAnchor, constant: 0).isActive = true
        self.labelLabel.topAnchor.constraint(equalTo: self.group5View.topAnchor, constant: 0).isActive = true
        
        // Setup photosLabel
        self.photosLabel.leadingAnchor.constraint(equalTo: self.group5View.leadingAnchor, constant: 2).isActive = true
        self.photosLabel.trailingAnchor.constraint(equalTo: self.group5View.trailingAnchor, constant: -2).isActive = true
        self.photosLabel.bottomAnchor.constraint(equalTo: self.group5View.bottomAnchor, constant: 0).isActive = true
        
        // Setup group6View
        self.group6View.centerXAnchor.constraint(equalTo: self.infoBarView.centerXAnchor, constant: 0).isActive = true
        self.group6View.centerYAnchor.constraint(equalTo: self.infoBarView.centerYAnchor, constant: 0).isActive = true
        self.group6View.widthAnchor.constraint(equalToConstant: 43).isActive = true
        self.group6View.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        // Setup kLabel
        self.kLabel.leadingAnchor.constraint(equalTo: self.group6View.leadingAnchor, constant: 1).isActive = true
        self.kLabel.trailingAnchor.constraint(equalTo: self.group6View.trailingAnchor, constant: 0).isActive = true
        self.kLabel.topAnchor.constraint(equalTo: self.group6View.topAnchor, constant: 0).isActive = true
        
        // Setup stalkersLabel
        self.stalkersLabel.leadingAnchor.constraint(equalTo: self.group6View.leadingAnchor, constant: 0).isActive = true
        self.stalkersLabel.trailingAnchor.constraint(equalTo: self.group6View.trailingAnchor, constant: 0).isActive = true
        self.stalkersLabel.bottomAnchor.constraint(equalTo: self.group6View.bottomAnchor, constant: 0).isActive = true
        
        // Setup group7View
        self.group7View.trailingAnchor.constraint(equalTo: self.infoBarView.trailingAnchor, constant: -41).isActive = true
        self.group7View.centerYAnchor.constraint(equalTo: self.infoBarView.centerYAnchor, constant: 0).isActive = true
        self.group7View.widthAnchor.constraint(equalToConstant: 43).isActive = true
        self.group7View.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        // Setup labelTwoLabel
        self.labelTwoLabel.leadingAnchor.constraint(equalTo: self.group7View.leadingAnchor, constant: 1).isActive = true
        self.labelTwoLabel.trailingAnchor.constraint(equalTo: self.group7View.trailingAnchor, constant: 0).isActive = true
        self.labelTwoLabel.topAnchor.constraint(equalTo: self.group7View.topAnchor, constant: 0).isActive = true
        
        // Setup stalkingLabel
        self.stalkingLabel.leadingAnchor.constraint(equalTo: self.group7View.leadingAnchor, constant: 0).isActive = true
        self.stalkingLabel.trailingAnchor.constraint(equalTo: self.group7View.trailingAnchor, constant: 0).isActive = true
        self.stalkingLabel.bottomAnchor.constraint(equalTo: self.group7View.bottomAnchor, constant: 0).isActive = true
        
        // Setup galleryView
        self.galleryView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 2).isActive = true
        self.galleryView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -2).isActive = true
        self.galleryView.topAnchor.constraint(equalTo: self.infoBarView.bottomAnchor, constant: 20).isActive = true
        self.galleryView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -52).isActive = true
        
        // Setup latestPhotosLabel
        self.latestPhotosLabel.centerXAnchor.constraint(equalTo: self.galleryView.centerXAnchor, constant: 0).isActive = true
        self.latestPhotosLabel.topAnchor.constraint(equalTo: self.galleryView.topAnchor, constant: 0).isActive = true
        
        // Setup photosCollectionView
        self.photosCollectionView.leadingAnchor.constraint(equalTo: self.galleryView.leadingAnchor, constant: 0).isActive = true
        self.photosCollectionView.trailingAnchor.constraint(equalTo: self.galleryView.trailingAnchor, constant: 0).isActive = true
        self.photosCollectionView.topAnchor.constraint(equalTo: self.latestPhotosLabel.bottomAnchor, constant: 13).isActive = true
        self.photosCollectionView.heightAnchor.constraint(equalToConstant: 122).isActive = true
        
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
        let destination = ProfileSettingsViewController()
        self.navigationController?.pushViewController(destination, animated: true)
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
            let destination = ProfilePhotosViewController()
            self.navigationController?.pushViewController(destination, animated: true)
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
