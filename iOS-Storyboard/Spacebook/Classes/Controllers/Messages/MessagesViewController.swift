//
//  MessagesViewController.swift
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

class MessagesViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var onlineCollectionView: UICollectionView!
    @IBOutlet weak var messagesTableView: UITableView!


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
        // Setup onlineCollectionView
        
        // Setup messagesTableView
        self.messagesTableView.separatorStyle = .none
        
    }

    private func setupUI()  {
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
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Messages"
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
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension MessagesViewController

extension MessagesViewController: UICollectionViewDataSource  {


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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnlinePersonCollectionViewCell", for: indexPath)
            self.configure(onlinePersonCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 3 == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnlinePersonTwoCollectionViewCell", for: indexPath)
            self.configure(onlinePersonTwoCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 3 == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnlinePersonThreeCollectionViewCell", for: indexPath)
            self.configure(onlinePersonThreeCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    public func configure(onlinePersonCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(onlinePersonTwoCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(onlinePersonThreeCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension MessagesViewController

extension MessagesViewController: UICollectionViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        print("Item selected at index \(indexPath)")
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension MessagesViewController

extension MessagesViewController: UICollectionViewDelegateFlowLayout  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize  {
        if indexPath.row % 3 == 0 {
            return CGSize(width: 60, height: 75)
        }
        else if indexPath.row % 3 == 1 {
            return CGSize(width: 60, height: 75)
        }
        else if indexPath.row % 3 == 2 {
            return CGSize(width: 60, height: 75)
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


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension MessagesViewController

extension MessagesViewController: UITableViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in tableView: UITableView) -> Int  {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 12
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        if indexPath.row % 6 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath)
            self.configure(messageTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 6 == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTwoTableViewCell", for: indexPath)
            self.configure(messageTwoTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 6 == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageThreeTableViewCell", for: indexPath)
            self.configure(messageThreeTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 6 == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageFourTableViewCell", for: indexPath)
            self.configure(messageFourTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 6 == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageFiveTableViewCell", for: indexPath)
            self.configure(messageFiveTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 6 == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageSixTableViewCell", for: indexPath)
            self.configure(messageSixTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UITableViewCell()
    }

    public func configure(messageTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(messageTwoTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(messageThreeTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(messageFourTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(messageFiveTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(messageSixTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension MessagesViewController

extension MessagesViewController: UITableViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        print("Row selected at index \(indexPath)")
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat  {
        if indexPath.row % 6 == 0 {
            return 80
        }
        else if indexPath.row % 6 == 1 {
            return 80
        }
        else if indexPath.row % 6 == 2 {
            return 80
        }
        else if indexPath.row % 6 == 3 {
            return 80
        }
        else if indexPath.row % 6 == 4 {
            return 80
        }
        else if indexPath.row % 6 == 5 {
            return 80
        }
        
        return 0
    }
}
