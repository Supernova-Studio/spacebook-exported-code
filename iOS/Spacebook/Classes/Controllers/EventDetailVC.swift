//
//  EventDetailVC.swift
//  Spacebook
//
//  Created by Artem.
//  Copyright © 2017 Supernova. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit
import MapKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Class

class EventDetailVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    fileprivate var itemNavigationBarItem: UIBarButtonItem!
    fileprivate var itemNavigationBarItemTwo: UIBarButtonItem!
    @IBOutlet fileprivate weak var mapView: MKMapView!
    @IBOutlet fileprivate weak var guessWhoSBackLabel: UILabel!
    @IBOutlet fileprivate weak var happeningIn20hBaLabel: UILabel!
    @IBOutlet fileprivate weak var eventPostedByLaikLabel: UILabel!
    @IBOutlet fileprivate weak var comingLabel: UILabel!


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
        
        // Left navigation items
        self.itemNavigationBarItem = UIBarButtonItem(image: UIImage(named: "group"), style: .plain, target: self, action: #selector(self.onItemPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.itemNavigationBarItem ]
        
        // Right navigation items
        self.itemNavigationBarItemTwo = UIBarButtonItem(title: "Events", style: .plain, target: self, action: #selector(self.onItemTwoPressed(_:)))
        self.navigationItem.rightBarButtonItems = [ self.itemNavigationBarItemTwo ]
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

        self.navigationItem.title = "Guess who's back?"
    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("EventDetailVC.navigationBarTitle", comment: "")
        
        self.itemNavigationBarItem.title = NSLocalizedString("EventDetailVC.itemNavigationBarItem", comment: "")
        self.itemNavigationBarItemTwo.title = NSLocalizedString("EventDetailVC.itemNavigationBarItemTwo", comment: "")
        
        // Components
        self.guessWhoSBackLabel.text = NSLocalizedString("EventDetailVC.guessWhoSBackLabel", comment: "")
        self.happeningIn20hBaLabel.text = NSLocalizedString("EventDetailVC.happeningIn20hBaLabel", comment: "")
        self.eventPostedByLaikLabel.text = NSLocalizedString("EventDetailVC.eventPostedByLaikLabel", comment: "")
        self.comingLabel.text = NSLocalizedString("EventDetailVC.comingLabel", comment: "")
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

    @IBAction func onItemTwoPressed(_ sender: UIBarButtonItem) {

    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - MKMapViewDelegate

extension EventDetailVC: MKMapViewDelegate {


    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {

    }
}









