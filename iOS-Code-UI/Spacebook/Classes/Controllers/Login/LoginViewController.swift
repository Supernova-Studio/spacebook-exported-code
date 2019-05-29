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

    var loginView: UIView!
    var logInLabel: UILabel!
    var welcomeBackLabel: UILabel!
    var loginFieldsView: UIView!
    var yourNicknameTextField: UITextField!
    var separatorView: UIView!
    var yourPasswordTextField: UITextField!
    var loginButton: SupernovaButton!
    var forgotYourPasswordButton: SupernovaButton!
    var groupBarButtonItem: UIBarButtonItem!
    private var allGradientLayers: [CAGradientLayer] = []


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
        // Setup loginView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.969, green: 0.518, blue: 0.384, alpha: 1).cgColor /* #F78462 */, UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1).cgColor /* #8B1B8C */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.endPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup logInLabel
        self.logInLabel = UILabel()
        self.logInLabel.numberOfLines = 0
        let logInLabelAttrString = NSMutableAttributedString(string: "Log in", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.logInLabel.attributedText = logInLabelAttrString
        self.logInLabel.backgroundColor = UIColor.clear
        self.view.addSubview(self.logInLabel)
        self.logInLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup welcomeBackLabel
        self.welcomeBackLabel = UILabel()
        self.welcomeBackLabel.numberOfLines = 0
        self.welcomeBackLabel.text = "Welcome back.\nThe galaxy awaits you."
        self.welcomeBackLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.welcomeBackLabel.textAlignment = .center
        self.welcomeBackLabel.font = UIFont(name: "Lato-Regular", size: 18)
        
        self.welcomeBackLabel.backgroundColor = UIColor.clear
        self.view.addSubview(self.welcomeBackLabel)
        self.welcomeBackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup loginFieldsView
        self.loginFieldsView = UIView(frame: .zero)
        self.loginFieldsView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.loginFieldsView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.loginFieldsView.layer.shadowRadius = 25
        self.loginFieldsView.layer.shadowOpacity = 1
        
        self.loginFieldsView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.loginFieldsView.layer.cornerRadius = 2
        self.loginFieldsView.layer.masksToBounds = true
        self.view.addSubview(self.loginFieldsView)
        self.loginFieldsView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup yourNicknameTextField
        self.yourNicknameTextField = UITextField()
        self.yourNicknameTextField.backgroundColor = UIColor.clear
        self.yourNicknameTextField.placeholder = "Your nickname"
        self.yourNicknameTextField.font = UIFont(name: "Lato-Regular", size: 15)
        self.yourNicknameTextField.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.yourNicknameTextField.textAlignment = .left
        self.yourNicknameTextField.isSecureTextEntry = false
        self.yourNicknameTextField.keyboardType = .default
        self.yourNicknameTextField.returnKeyType = .default
        self.loginFieldsView.addSubview(self.yourNicknameTextField)
        self.yourNicknameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup separatorView
        self.separatorView = UIView(frame: .zero)
        self.separatorView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.separatorView.alpha = 0.1
        self.loginFieldsView.addSubview(self.separatorView)
        self.separatorView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup yourPasswordTextField
        self.yourPasswordTextField = UITextField()
        self.yourPasswordTextField.backgroundColor = UIColor.clear
        self.yourPasswordTextField.placeholder = "Your password"
        self.yourPasswordTextField.font = UIFont(name: "Lato-Regular", size: 15)
        self.yourPasswordTextField.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.yourPasswordTextField.textAlignment = .left
        self.yourPasswordTextField.isSecureTextEntry = true
        self.yourPasswordTextField.keyboardType = .default
        self.yourPasswordTextField.returnKeyType = .default
        self.loginFieldsView.addSubview(self.yourPasswordTextField)
        self.yourPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup loginButton
        self.loginButton = SupernovaButton(type: .custom)
        self.loginButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.loginButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.loginButton.layer.shadowRadius = 25
        self.loginButton.layer.shadowOpacity = 1
        
        self.loginButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.loginButton.layer.cornerRadius = 2
        self.loginButton.layer.masksToBounds = true
        self.loginButton.snImageTextSpacing = 10
        self.loginButton.setImage(UIImage(named: "icon-log-in"), for: .normal)
        self.loginButton.titleLabel?.font = UIFont(name: "Lato-Bold", size: 15)
        self.loginButton.setTitleColor(UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */, for: .normal)
        self.loginButton.setTitle("LOG IN", for: .normal)
        self.loginButton.addTarget(self, action: #selector(onLoginPressed(_:)), for: .touchUpInside)
        self.view.addSubview(self.loginButton)
        self.loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup forgotYourPasswordButton
        self.forgotYourPasswordButton = SupernovaButton(type: .custom)
        self.forgotYourPasswordButton.backgroundColor = UIColor.clear
        self.forgotYourPasswordButton.snImageTextSpacing = 10
        self.forgotYourPasswordButton.titleLabel?.font = UIFont(name: "Lato-Regular", size: 15)
        self.forgotYourPasswordButton.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */, for: .normal)
        self.forgotYourPasswordButton.setTitle("Forgot your password?", for: .normal)
        self.forgotYourPasswordButton.addTarget(self, action: #selector(onForgotYourPasswordPressed(_:)), for: .touchUpInside)
        self.view.addSubview(self.forgotYourPasswordButton)
        self.forgotYourPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
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

    private func setupLayout()  {
        // Setup layout for components
        // Setup loginView
        
        // Setup logInLabel
        self.logInLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.logInLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 114).isActive = true
        
        // Setup welcomeBackLabel
        self.welcomeBackLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.welcomeBackLabel.topAnchor.constraint(equalTo: self.logInLabel.bottomAnchor, constant: 20).isActive = true
        
        // Setup loginFieldsView
        self.loginFieldsView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.loginFieldsView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.loginFieldsView.topAnchor.constraint(equalTo: self.welcomeBackLabel.bottomAnchor, constant: 70).isActive = true
        self.loginFieldsView.heightAnchor.constraint(equalToConstant: 101).isActive = true
        
        // Setup yourNicknameTextField
        self.yourNicknameTextField.leadingAnchor.constraint(equalTo: self.loginFieldsView.leadingAnchor, constant: 15).isActive = true
        self.yourNicknameTextField.trailingAnchor.constraint(equalTo: self.loginFieldsView.trailingAnchor, constant: -14).isActive = true
        self.yourNicknameTextField.topAnchor.constraint(equalTo: self.loginFieldsView.topAnchor, constant: 14).isActive = true
        
        // Setup separatorView
        self.separatorView.leadingAnchor.constraint(equalTo: self.loginFieldsView.leadingAnchor, constant: 0).isActive = true
        self.separatorView.trailingAnchor.constraint(equalTo: self.loginFieldsView.trailingAnchor, constant: 0).isActive = true
        self.separatorView.topAnchor.constraint(equalTo: self.yourNicknameTextField.bottomAnchor, constant: 16).isActive = true
        self.separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // Setup yourPasswordTextField
        self.yourPasswordTextField.leadingAnchor.constraint(equalTo: self.loginFieldsView.leadingAnchor, constant: 15).isActive = true
        self.yourPasswordTextField.trailingAnchor.constraint(equalTo: self.loginFieldsView.trailingAnchor, constant: -14).isActive = true
        self.yourPasswordTextField.topAnchor.constraint(equalTo: self.separatorView.bottomAnchor, constant: 14).isActive = true
        
        // Setup loginButton
        self.loginButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.loginButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.loginButton.bottomAnchor.constraint(equalTo: self.forgotYourPasswordButton.topAnchor, constant: -11).isActive = true
        self.loginButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup forgotYourPasswordButton
        self.forgotYourPasswordButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.forgotYourPasswordButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -19).isActive = true
        self.forgotYourPasswordButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.forgotYourPasswordButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
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
