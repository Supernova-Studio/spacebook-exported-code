//
//  EventDetailViewController.swift
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit
import MapKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class EventDetailViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var bgMapTempMapView: MKMapView!
    var groupBarButtonItem: UIBarButtonItem!
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
        // Setup bgMapTempMapView
        self.bgMapTempMapView.camera = MKMapCamera(lookingAtCenter: CLLocationCoordinate2D(latitude: 37.79, longitude: -122.41), fromDistance: 10000, pitch: 0, heading: 0)
        
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
        
        // Left navigation items
        self.groupBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.groupBarButtonItem ]
        // Right navigation items
        self.leftItemBarButtonItem = UIBarButtonItem(title: "Events", style: .plain, target: self, action: #selector(self.onLeftItemPressed(_:)))
        self.navigationItem.rightBarButtonItems = [ self.leftItemBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Guess who's back?"
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

    @IBAction public func onLeftItemPressed(_ sender: UIView)  {
    
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension EventDetailViewController

extension EventDetailViewController: MKMapViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func mapViewWillStartLoadingMap(_ mapView: MKMapView)  {
    
    }

    public func mapViewDidFinishLoadingMap(_ mapView: MKMapView)  {
    
    }

    public func mapViewDidFailLoadingMap(_ mapView: MKMapView, withError error: Error)  {
    
    }

    public func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView)  {
    
    }
}
