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

    var eventDetailView: UIView!
    var bgMapTempMapView: MKMapView!
    var iconEventAreaImageView: UIImageView!
    var footerView: UIView!
    var bgView: UIView!
    var avatarImageView: UIImageView!
    var guessWhoSBackLabel: UILabel!
    var happeningIn20hBaLabel: UILabel!
    var eventPostedByLaikLabel: UILabel!
    var comingView: UIView!
    var groupImageView: UIImageView!
    var comingLabel: UILabel!
    var groupBarButtonItem: UIBarButtonItem!
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
        // Setup eventDetailView
        self.view.backgroundColor = UIColor(red: 0.957, green: 0.949, blue: 0.957, alpha: 1) /* #F4F2F4 */
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup bgMapTempMapView
        self.bgMapTempMapView = MKMapView()
        self.bgMapTempMapView.isZoomEnabled = true
        self.bgMapTempMapView.isScrollEnabled = true
        self.bgMapTempMapView.isRotateEnabled = true
        self.bgMapTempMapView.isPitchEnabled = true
        self.bgMapTempMapView.showsBuildings = true
        self.bgMapTempMapView.showsCompass = true
        self.bgMapTempMapView.showsScale = false
        self.bgMapTempMapView.showsTraffic = false
        self.bgMapTempMapView.showsPointsOfInterest = true
        self.bgMapTempMapView.showsUserLocation = false
        self.bgMapTempMapView.backgroundColor = UIColor.clear
        self.bgMapTempMapView.camera = MKMapCamera(lookingAtCenter: CLLocationCoordinate2D(latitude: 37.79, longitude: -122.41), fromDistance: 10000, pitch: 0, heading: 0)
        self.view.addSubview(self.bgMapTempMapView)
        self.bgMapTempMapView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup iconEventAreaImageView
        self.iconEventAreaImageView = UIImageView()
        self.iconEventAreaImageView.backgroundColor = UIColor.clear
        self.iconEventAreaImageView.image = UIImage(named: "icon-event-area")
        self.iconEventAreaImageView.contentMode = .scaleToFill
        self.view.addSubview(self.iconEventAreaImageView)
        self.iconEventAreaImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup footerView
        self.footerView = UIView(frame: .zero)
        self.footerView.backgroundColor = UIColor.clear
        self.view.addSubview(self.footerView)
        self.footerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup bgView
        self.bgView = UIView(frame: .zero)
        self.bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.footerView.addSubview(self.bgView)
        self.bgView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup avatarImageView
        self.avatarImageView = UIImageView()
        self.avatarImageView.backgroundColor = UIColor.clear
        self.avatarImageView.image = UIImage(named: "avatar-2")
        self.avatarImageView.contentMode = .center
        self.footerView.addSubview(self.avatarImageView)
        self.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup guessWhoSBackLabel
        self.guessWhoSBackLabel = UILabel()
        self.guessWhoSBackLabel.numberOfLines = 0
        self.guessWhoSBackLabel.text = "Guess who’s back?"
        self.guessWhoSBackLabel.textColor = UIColor(red: 0.059, green: 0.059, blue: 0.059, alpha: 1) /* #0F0F0F */
        self.guessWhoSBackLabel.textAlignment = .left
        self.guessWhoSBackLabel.font = UIFont(name: "Lato-Bold", size: 14)
        
        self.guessWhoSBackLabel.backgroundColor = UIColor.clear
        self.footerView.addSubview(self.guessWhoSBackLabel)
        self.guessWhoSBackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup happeningIn20hBaLabel
        self.happeningIn20hBaLabel = UILabel()
        self.happeningIn20hBaLabel.numberOfLines = 0
        self.happeningIn20hBaLabel.text = "Happening in 20h, Bajkonur"
        self.happeningIn20hBaLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.happeningIn20hBaLabel.textAlignment = .left
        self.happeningIn20hBaLabel.font = UIFont(name: "Lato-Regular", size: 10)
        
        self.happeningIn20hBaLabel.backgroundColor = UIColor.clear
        self.footerView.addSubview(self.happeningIn20hBaLabel)
        self.happeningIn20hBaLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup eventPostedByLaikLabel
        self.eventPostedByLaikLabel = UILabel()
        self.eventPostedByLaikLabel.numberOfLines = 0
        self.eventPostedByLaikLabel.text = "Event posted by Laika"
        self.eventPostedByLaikLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.eventPostedByLaikLabel.textAlignment = .left
        self.eventPostedByLaikLabel.font = UIFont(name: "Lato-Regular", size: 10)
        
        self.eventPostedByLaikLabel.backgroundColor = UIColor.clear
        self.eventPostedByLaikLabel.alpha = 0.4
        self.footerView.addSubview(self.eventPostedByLaikLabel)
        self.eventPostedByLaikLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup comingView
        self.comingView = UIView(frame: .zero)
        self.comingView.backgroundColor = UIColor.clear
        self.footerView.addSubview(self.comingView)
        self.comingView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup groupImageView
        self.groupImageView = UIImageView()
        self.groupImageView.backgroundColor = UIColor.clear
        self.groupImageView.image = UIImage(named: "group")
        self.groupImageView.contentMode = .center
        self.comingView.addSubview(self.groupImageView)
        self.groupImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup comingLabel
        self.comingLabel = UILabel()
        self.comingLabel.numberOfLines = 0
        self.comingLabel.text = "Coming"
        self.comingLabel.textColor = UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1) /* #8B1B8C */
        self.comingLabel.textAlignment = .left
        self.comingLabel.font = UIFont(name: "Lato-Regular", size: 14)
        
        self.comingLabel.backgroundColor = UIColor.clear
        self.comingView.addSubview(self.comingLabel)
        self.comingLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup eventDetailView
        
        // Setup bgMapTempMapView
        self.bgMapTempMapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.bgMapTempMapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.bgMapTempMapView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        self.bgMapTempMapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        // Setup iconEventAreaImageView
        self.iconEventAreaImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.iconEventAreaImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
        
        // Setup footerView
        self.footerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.footerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.footerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        self.footerView.heightAnchor.constraint(equalToConstant: 95).isActive = true
        
        // Setup bgView
        self.bgView.leadingAnchor.constraint(equalTo: self.footerView.leadingAnchor, constant: 0).isActive = true
        self.bgView.trailingAnchor.constraint(equalTo: self.footerView.trailingAnchor, constant: 0).isActive = true
        self.bgView.topAnchor.constraint(equalTo: self.footerView.topAnchor, constant: 15).isActive = true
        self.bgView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        // Setup avatarImageView
        self.avatarImageView.leadingAnchor.constraint(equalTo: self.footerView.leadingAnchor, constant: 9).isActive = true
        self.avatarImageView.topAnchor.constraint(equalTo: self.footerView.topAnchor, constant: -1).isActive = true
        
        // Setup guessWhoSBackLabel
        self.guessWhoSBackLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 8).isActive = true
        self.guessWhoSBackLabel.topAnchor.constraint(equalTo: self.footerView.topAnchor, constant: 24).isActive = true
        
        // Setup happeningIn20hBaLabel
        self.happeningIn20hBaLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 8).isActive = true
        self.happeningIn20hBaLabel.topAnchor.constraint(equalTo: self.guessWhoSBackLabel.bottomAnchor, constant: 3).isActive = true
        
        // Setup eventPostedByLaikLabel
        self.eventPostedByLaikLabel.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 8).isActive = true
        self.eventPostedByLaikLabel.topAnchor.constraint(equalTo: self.happeningIn20hBaLabel.bottomAnchor, constant: 7).isActive = true
        
        // Setup comingView
        self.comingView.trailingAnchor.constraint(equalTo: self.footerView.trailingAnchor, constant: -20).isActive = true
        self.comingView.topAnchor.constraint(equalTo: self.footerView.topAnchor, constant: 27).isActive = true
        self.comingView.widthAnchor.constraint(equalToConstant: 48).isActive = true
        self.comingView.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        // Setup groupImageView
        self.groupImageView.leadingAnchor.constraint(equalTo: self.comingView.leadingAnchor, constant: 9).isActive = true
        self.groupImageView.trailingAnchor.constraint(equalTo: self.comingView.trailingAnchor, constant: -9).isActive = true
        self.groupImageView.topAnchor.constraint(equalTo: self.comingView.topAnchor, constant: 0).isActive = true
        
        // Setup comingLabel
        self.comingLabel.leadingAnchor.constraint(equalTo: self.comingView.leadingAnchor, constant: 0).isActive = true
        self.comingLabel.trailingAnchor.constraint(equalTo: self.comingView.trailingAnchor, constant: 0).isActive = true
        self.comingLabel.bottomAnchor.constraint(equalTo: self.comingView.bottomAnchor, constant: 0).isActive = true
        
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
