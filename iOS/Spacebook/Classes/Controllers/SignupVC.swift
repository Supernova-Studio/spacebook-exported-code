//
//  SignupVC.swift
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

class SignupVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    fileprivate var itemNavigationBarItem: UIBarButtonItem!
    @IBOutlet fileprivate weak var signup: UIView!
    @IBOutlet fileprivate weak var signUpLabel: UILabel!
    @IBOutlet fileprivate weak var itSFreeLabel: UILabel!
    @IBOutlet fileprivate weak var signUpFields: UIView!
    @IBOutlet fileprivate weak var yourNicknameTF: UITextField!
    @IBOutlet fileprivate weak var yourSpacemailTF: UITextField!
    @IBOutlet fileprivate weak var passwordTF: UITextField!
    @IBOutlet fileprivate weak var signUp: UIButton!
    @IBOutlet fileprivate weak var alreadyGaveUpYourLabel: UILabel!
    @IBOutlet fileprivate weak var logInButton: UIButton!
    @IBOutlet fileprivate weak var iAgreeWithIntergaLabel: UILabel!


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
        
        // signup
        let gradientOne = CAGradientLayer()
        gradientOne.frame = self.signup.bounds
        gradientOne.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1).cgColor]
        gradientOne.locations = [0.000, 1.000]
        gradientOne.startPoint = CGPoint(x: 0.310892751009558, y: 1.09827011481677)
        gradientOne.endPoint = CGPoint(x: 0.689107248990442, y: -0.0982701148167725)
        self.signup.layer.insertSublayer(gradientOne, at: 0)
        
        // signUpFields
        self.signUpFields.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.signUpFields.layer.shadowRadius = 25.0
        self.signUpFields.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.signUpFields.layer.shadowOpacity = 1.0
        self.signUpFields.layer.masksToBounds = false
        self.signUpFields.layer.cornerRadius = 2.0
        
        // signUp
        self.signUp.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.signUp.layer.shadowRadius = 25.0
        self.signUp.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.signUp.layer.shadowOpacity = 1.0
        self.signUp.layer.masksToBounds = false
        self.signUp.layer.cornerRadius = 2.0
    }

    fileprivate func setupGestureRecognizers() {

    }

    fileprivate func setupText() {

    }

    fileprivate func setupLocalization() {

        // Navigation
        self.navigationItem.title = NSLocalizedString("SignupVC.navigationBarTitle", comment: "")
        
        self.itemNavigationBarItem.title = NSLocalizedString("SignupVC.itemNavigationBarItem", comment: "")
        
        // Components
        self.signUpLabel.text = NSLocalizedString("SignupVC.signUpLabel", comment: "")
        self.itSFreeLabel.text = NSLocalizedString("SignupVC.itSFreeLabel", comment: "")
        self.yourNicknameTF.placeholder = NSLocalizedString("SignupVC.yourNicknameTF", comment: "")
        self.yourSpacemailTF.placeholder = NSLocalizedString("SignupVC.yourSpacemailTF", comment: "")
        self.passwordTF.placeholder = NSLocalizedString("SignupVC.passwordTF", comment: "")
        self.signUp.setTitle(NSLocalizedString("SignupVC.signUp", comment: ""), for: .normal)
        self.alreadyGaveUpYourLabel.text = NSLocalizedString("SignupVC.alreadyGaveUpYourLabel", comment: "")
        self.logInButton.setTitle(NSLocalizedString("SignupVC.logInButton", comment: ""), for: .normal)
        self.iAgreeWithIntergaLabel.text = NSLocalizedString("SignupVC.iAgreeWithIntergaLabel", comment: "")
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

    @IBAction func onSignUpPressed(_ sender: UIButton) {

        self.performSegue(withIdentifier: "Modal Tab Group #1", sender: nil)
    }

    @IBAction func onLogInPressed(_ sender: UIButton) {

        self.performSegue(withIdentifier: "Push Login", sender: nil)
    }

    @IBAction func onSwitchValueChanged(_ sender: UISwitch) {

    }
}









