//
//  LoginVC.swift
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

class LoginVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    fileprivate var itemNavigationBarItem: UIBarButtonItem!
    @IBOutlet fileprivate weak var login: UIView!
    @IBOutlet fileprivate weak var logInLabel: UILabel!
    @IBOutlet fileprivate weak var welcomeBackLabel: UILabel!
    @IBOutlet fileprivate weak var loginFields: UIView!
    @IBOutlet fileprivate weak var yourNicknameTF: UITextField!
    @IBOutlet fileprivate weak var yourPasswordTF: UITextField!
    @IBOutlet fileprivate weak var loginTwo: UIButton!
    @IBOutlet fileprivate weak var forgotYourPasswordButton: UIButton!


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
        
        // login
        let gradientOne = CAGradientLayer()
        gradientOne.frame = self.login.bounds
        gradientOne.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1).cgColor]
        gradientOne.locations = [0.000, 1.000]
        gradientOne.startPoint = CGPoint(x: 0.310892751009558, y: 1.09827011481677)
        gradientOne.endPoint = CGPoint(x: 0.689107248990442, y: -0.0982701148167725)
        self.login.layer.insertSublayer(gradientOne, at: 0)
        
        // loginFields
        self.loginFields.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.loginFields.layer.shadowRadius = 25.0
        self.loginFields.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.loginFields.layer.shadowOpacity = 1.0
        self.loginFields.layer.masksToBounds = false
        self.loginFields.layer.cornerRadius = 2.0
        
        // loginTwo
        self.loginTwo.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.loginTwo.layer.shadowRadius = 25.0
        self.loginTwo.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.loginTwo.layer.shadowOpacity = 1.0
        self.loginTwo.layer.masksToBounds = false
        self.loginTwo.layer.cornerRadius = 2.0
    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("LoginVC.navigationBarTitle", comment: "")
        
        self.itemNavigationBarItem.title = NSLocalizedString("LoginVC.itemNavigationBarItem", comment: "")
        
        // Components
        self.logInLabel.text = NSLocalizedString("LoginVC.logInLabel", comment: "")
        self.welcomeBackLabel.text = NSLocalizedString("LoginVC.welcomeBackLabel", comment: "")
        self.yourNicknameTF.placeholder = NSLocalizedString("LoginVC.yourNicknameTF", comment: "")
        self.yourPasswordTF.placeholder = NSLocalizedString("LoginVC.yourPasswordTF", comment: "")
        self.loginTwo.setTitle(NSLocalizedString("LoginVC.loginTwo", comment: ""), for: .normal)
        self.forgotYourPasswordButton.setTitle(NSLocalizedString("LoginVC.forgotYourPasswordButton", comment: ""), for: .normal)
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

    @IBAction func onLoginPressed(_ sender: UIButton) {

        self.performSegue(withIdentifier: "Modal Tab Group #1", sender: nil)
    }

    @IBAction func onForgotYourPasswordPressed(_ sender: UIButton) {

    }
}









