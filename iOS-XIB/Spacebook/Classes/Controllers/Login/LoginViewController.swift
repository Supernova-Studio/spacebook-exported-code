//
//  LoginViewController.swift
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

class LoginViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var logInLabel: UILabel!
    @IBOutlet weak var loginFieldsView: UIView!
    @IBOutlet weak var loginButton: SupernovaButton!
    @IBOutlet weak var forgotYourPasswordButton: SupernovaButton!
    var groupBarButtonItem: UIBarButtonItem!
    private var allGradientLayers: [CAGradientLayer] = []


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
        // Setup loginView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.969, green: 0.518, blue: 0.384, alpha: 1).cgColor /* #F78462 */, UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1).cgColor /* #8B1B8C */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.endPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        
        // Setup logInLabel
        let logInLabelAttrString = NSMutableAttributedString(string: "Log in", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.logInLabel.attributedText = logInLabelAttrString
        
        // Setup loginFieldsView
        self.loginFieldsView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.loginFieldsView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.loginFieldsView.layer.shadowRadius = 25
        self.loginFieldsView.layer.shadowOpacity = 1
        
        self.loginFieldsView.layer.cornerRadius = 2
        self.loginFieldsView.layer.masksToBounds = true
        
        // Setup loginButton
        self.loginButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.loginButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.loginButton.layer.shadowRadius = 25
        self.loginButton.layer.shadowOpacity = 1
        
        self.loginButton.layer.cornerRadius = 2
        self.loginButton.layer.masksToBounds = true
        self.loginButton.snImageTextSpacing = 10
        
        // Setup forgotYourPasswordButton
        self.forgotYourPasswordButton.snImageTextSpacing = 10
        
    }

    private func setupUI()  {
        self.extendedLayoutIncludesOpaqueBars = true
        
        // Hide the back button
        self.navigationItem.hidesBackButton = true
        // Left navigation items
        self.groupBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.groupBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    override public func viewDidLayoutSubviews()  {
        super.viewDidLayoutSubviews()
        for layer in self.allGradientLayers {
            layer.frame = layer.superlayer?.frame ?? CGRect.zero
        }
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

    @IBAction public func onLoginPressed(_ sender: UIButton)  {
        let destination = TabBarController()
        self.present(destination, animated: true, completion: nil)
    }

    @IBAction public func onForgotYourPasswordPressed(_ sender: UIButton)  {
    
    }
}
