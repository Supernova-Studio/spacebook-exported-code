//
//  ProfileSettingsVC.swift
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

class ProfileSettingsVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    fileprivate var itemNavigationBarItem: UIBarButtonItem!
    @IBOutlet fileprivate weak var textLabel: UILabel!
    @IBOutlet fileprivate weak var label: UILabel!
    @IBOutlet fileprivate weak var textLabelTwo: UILabel!
    @IBOutlet fileprivate weak var labelTwo: UILabel!
    @IBOutlet fileprivate weak var textLabelThree: UILabel!
    @IBOutlet fileprivate weak var labelThree: UILabel!
    @IBOutlet fileprivate weak var labelFour: UILabel!
    @IBOutlet fileprivate weak var textLabelFour: UILabel!
    @IBOutlet fileprivate weak var labelFive: UILabel!
    @IBOutlet fileprivate weak var detailsLabel: UILabel!
    @IBOutlet fileprivate weak var informationLabel: UILabel!
    @IBOutlet fileprivate weak var labelSix: UILabel!


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

        self.navigationItem.title = "Dr. Where settings"
    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("ProfileSettingsVC.navigationBarTitle", comment: "")
        
        self.itemNavigationBarItem.title = NSLocalizedString("ProfileSettingsVC.itemNavigationBarItem", comment: "")
        
        // Components
        self.textLabel.text = NSLocalizedString("ProfileSettingsVC.textLabel", comment: "")
        self.label.text = NSLocalizedString("ProfileSettingsVC.label", comment: "")
        self.textLabelTwo.text = NSLocalizedString("ProfileSettingsVC.textLabelTwo", comment: "")
        self.labelTwo.text = NSLocalizedString("ProfileSettingsVC.labelTwo", comment: "")
        self.textLabelThree.text = NSLocalizedString("ProfileSettingsVC.textLabelThree", comment: "")
        self.labelThree.text = NSLocalizedString("ProfileSettingsVC.labelThree", comment: "")
        self.labelFour.text = NSLocalizedString("ProfileSettingsVC.labelFour", comment: "")
        self.textLabelFour.text = NSLocalizedString("ProfileSettingsVC.textLabelFour", comment: "")
        self.labelFive.text = NSLocalizedString("ProfileSettingsVC.labelFive", comment: "")
        self.detailsLabel.text = NSLocalizedString("ProfileSettingsVC.detailsLabel", comment: "")
        self.informationLabel.text = NSLocalizedString("ProfileSettingsVC.informationLabel", comment: "")
        self.labelSix.text = NSLocalizedString("ProfileSettingsVC.labelSix", comment: "")
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

    @IBAction func onSlideValueChanged(_ sender: UISwitch) {

    }
}









