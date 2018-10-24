//
//  TimelineViewController.swift
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

class TimelineViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var timelineView: UIView!
    var timelineTableView: UITableView!


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
        // Setup timelineView
        self.view.backgroundColor = UIColor(red: 0.957, green: 0.949, blue: 0.957, alpha: 1) /* #F4F2F4 */
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup timelineTableView
        self.timelineTableView = UITableView(frame: .zero, style: .plain)
        self.timelineTableView.separatorStyle = .none
        self.timelineTableView.dataSource = self
        self.timelineTableView.delegate = self
        self.view.addSubview(self.timelineTableView)
        self.timelineTableView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupUI()  {
        self.extendedLayoutIncludesOpaqueBars = true
        
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
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "What's up?"
        self.timelineTableView.register(NewsTableViewCell.self, forCellReuseIdentifier: "NewsTableViewCell")
        self.timelineTableView.register(LifetimeEventTableViewCell.self, forCellReuseIdentifier: "LifetimeEventTableViewCell")
        self.timelineTableView.register(NewsTwoTableViewCell.self, forCellReuseIdentifier: "NewsTwoTableViewCell")
        self.timelineTableView.register(EventTableViewCell.self, forCellReuseIdentifier: "EventTableViewCell")
        self.timelineTableView.register(AdvertisementTableViewCell.self, forCellReuseIdentifier: "AdvertisementTableViewCell")
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup timelineView
        
        // Setup timelineTableView
        self.timelineTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.timelineTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.timelineTableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 64).isActive = true
        self.timelineTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
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
// MARK: - Extension TimelineViewController

extension TimelineViewController: UITableViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in tableView: UITableView) -> Int  {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        if indexPath.row % 5 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath)
            self.configure(newsTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 5 == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LifetimeEventTableViewCell", for: indexPath)
            self.configure(lifetimeEventTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 5 == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTwoTableViewCell", for: indexPath)
            self.configure(newsTwoTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 5 == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell", for: indexPath)
            self.configure(eventTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if indexPath.row % 5 == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementTableViewCell", for: indexPath)
            self.configure(advertisementTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UITableViewCell()
    }

    public func configure(newsTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(lifetimeEventTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(newsTwoTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(eventTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(advertisementTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension TimelineViewController

extension TimelineViewController: UITableViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        print("Row selected at index \(indexPath)")
        if indexPath.row % 5 == 3 {
            let destination = EventDetailViewController()
            let navigationController = UINavigationController(rootViewController: destination)
            self.present(navigationController, animated: true, completion: nil)
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat  {
        if indexPath.row % 5 == 0 {
            return 419
        }
        else if indexPath.row % 5 == 1 {
            return 196
        }
        else if indexPath.row % 5 == 2 {
            return 470
        }
        else if indexPath.row % 5 == 3 {
            return 336
        }
        else if indexPath.row % 5 == 4 {
            return 123
        }
        
        return 0
    }
}
