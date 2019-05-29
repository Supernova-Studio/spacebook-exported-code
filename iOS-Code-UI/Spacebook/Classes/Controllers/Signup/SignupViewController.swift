//
//  SignupViewController.swift
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

class SignupViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var signupView: UIView!
    var signUpLabel: UILabel!
    var itSFreeLabel: UILabel!
    var signUpFieldsView: UIView!
    var yourNicknameTextField: UITextField!
    var separatorView: UIView!
    var yourSpacemailTextField: UITextField!
    var separatorTwoView: UIView!
    var passwordTextField: UITextField!
    var tosView: UIView!
    var iAgreeWithIntergaLabel: UILabel!
    var switchSwitch: UISwitch!
    var signUpButton: SupernovaButton!
    var logInView: UIView!
    var alreadyGaveUpYourLabel: UILabel!
    var logInButton: SupernovaButton!
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
        // Setup signupView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.969, green: 0.518, blue: 0.384, alpha: 1).cgColor /* #F78462 */, UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1).cgColor /* #8B1B8C */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.endPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup signUpLabel
        self.signUpLabel = UILabel()
        self.signUpLabel.numberOfLines = 0
        let signUpLabelAttrString = NSMutableAttributedString(string: "Sign up", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.signUpLabel.attributedText = signUpLabelAttrString
        self.signUpLabel.backgroundColor = UIColor.clear
        self.view.addSubview(self.signUpLabel)
        self.signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup itSFreeLabel
        self.itSFreeLabel = UILabel()
        self.itSFreeLabel.numberOfLines = 0
        self.itSFreeLabel.text = "It’s free and always will be.\nBecause advertisement."
        self.itSFreeLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.itSFreeLabel.textAlignment = .center
        self.itSFreeLabel.font = UIFont(name: "Lato-Regular", size: 18)
        
        self.itSFreeLabel.backgroundColor = UIColor.clear
        self.view.addSubview(self.itSFreeLabel)
        self.itSFreeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup signUpFieldsView
        self.signUpFieldsView = UIView(frame: .zero)
        self.signUpFieldsView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.signUpFieldsView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.signUpFieldsView.layer.shadowRadius = 25
        self.signUpFieldsView.layer.shadowOpacity = 1
        
        self.signUpFieldsView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.signUpFieldsView.layer.cornerRadius = 2
        self.signUpFieldsView.layer.masksToBounds = true
        self.view.addSubview(self.signUpFieldsView)
        self.signUpFieldsView.translatesAutoresizingMaskIntoConstraints = false
        
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
        self.signUpFieldsView.addSubview(self.yourNicknameTextField)
        self.yourNicknameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup separatorView
        self.separatorView = UIView(frame: .zero)
        self.separatorView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.separatorView.alpha = 0.1
        self.signUpFieldsView.addSubview(self.separatorView)
        self.separatorView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup yourSpacemailTextField
        self.yourSpacemailTextField = UITextField()
        self.yourSpacemailTextField.backgroundColor = UIColor.clear
        self.yourSpacemailTextField.placeholder = "Your spacemail"
        self.yourSpacemailTextField.font = UIFont(name: "Lato-Regular", size: 15)
        self.yourSpacemailTextField.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.yourSpacemailTextField.textAlignment = .left
        self.yourSpacemailTextField.isSecureTextEntry = false
        self.yourSpacemailTextField.keyboardType = .default
        self.yourSpacemailTextField.returnKeyType = .default
        self.signUpFieldsView.addSubview(self.yourSpacemailTextField)
        self.yourSpacemailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup separatorTwoView
        self.separatorTwoView = UIView(frame: .zero)
        self.separatorTwoView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.separatorTwoView.alpha = 0.1
        self.signUpFieldsView.addSubview(self.separatorTwoView)
        self.separatorTwoView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup passwordTextField
        self.passwordTextField = UITextField()
        self.passwordTextField.backgroundColor = UIColor.clear
        self.passwordTextField.placeholder = "Password (40+ characters)"
        self.passwordTextField.font = UIFont(name: "Lato-Regular", size: 15)
        self.passwordTextField.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1) /* #000000 */
        self.passwordTextField.textAlignment = .left
        self.passwordTextField.isSecureTextEntry = true
        self.passwordTextField.keyboardType = .default
        self.passwordTextField.returnKeyType = .default
        self.signUpFieldsView.addSubview(self.passwordTextField)
        self.passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup tosView
        self.tosView = UIView(frame: .zero)
        self.tosView.backgroundColor = UIColor.clear
        self.view.addSubview(self.tosView)
        self.tosView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup iAgreeWithIntergaLabel
        self.iAgreeWithIntergaLabel = UILabel()
        self.iAgreeWithIntergaLabel.numberOfLines = 0
        self.iAgreeWithIntergaLabel.text = "I agree with intergalatic terms and conditions"
        self.iAgreeWithIntergaLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.iAgreeWithIntergaLabel.textAlignment = .left
        self.iAgreeWithIntergaLabel.font = UIFont(name: "Lato-Regular", size: 13)
        
        self.iAgreeWithIntergaLabel.backgroundColor = UIColor.clear
        self.tosView.addSubview(self.iAgreeWithIntergaLabel)
        self.iAgreeWithIntergaLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup switchSwitch
        self.switchSwitch = UISwitch()
        self.switchSwitch.isOn = true
        self.switchSwitch.tintColor = UIColor(red: 0.557, green: 0.11, blue: 0.541, alpha: 1) /* #8E1C8A */
        self.switchSwitch.onTintColor = UIColor(red: 0.557, green: 0.11, blue: 0.541, alpha: 1) /* #8E1C8A */
        self.switchSwitch.thumbTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.tosView.addSubview(self.switchSwitch)
        self.switchSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup signUpButton
        self.signUpButton = SupernovaButton(type: .custom)
        self.signUpButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.signUpButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.signUpButton.layer.shadowRadius = 25
        self.signUpButton.layer.shadowOpacity = 1
        
        self.signUpButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.signUpButton.layer.cornerRadius = 2
        self.signUpButton.layer.masksToBounds = true
        self.signUpButton.snImageTextSpacing = 10
        self.signUpButton.setImage(UIImage(named: "icon-sign-up"), for: .normal)
        self.signUpButton.titleLabel?.font = UIFont(name: "Lato-Bold", size: 15)
        self.signUpButton.setTitleColor(UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */, for: .normal)
        self.signUpButton.setTitle("SIGN UP", for: .normal)
        self.signUpButton.addTarget(self, action: #selector(onSignUpPressed(_:)), for: .touchUpInside)
        self.view.addSubview(self.signUpButton)
        self.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup logInView
        self.logInView = UIView(frame: .zero)
        self.logInView.backgroundColor = UIColor.clear
        self.view.addSubview(self.logInView)
        self.logInView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup alreadyGaveUpYourLabel
        self.alreadyGaveUpYourLabel = UILabel()
        self.alreadyGaveUpYourLabel.numberOfLines = 0
        self.alreadyGaveUpYourLabel.text = "Already gave up your soul? "
        self.alreadyGaveUpYourLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.alreadyGaveUpYourLabel.textAlignment = .center
        self.alreadyGaveUpYourLabel.font = UIFont(name: "Lato-Regular", size: 15)
        
        self.alreadyGaveUpYourLabel.backgroundColor = UIColor.clear
        self.logInView.addSubview(self.alreadyGaveUpYourLabel)
        self.alreadyGaveUpYourLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup logInButton
        self.logInButton = SupernovaButton(type: .custom)
        self.logInButton.backgroundColor = UIColor.clear
        self.logInButton.snImageTextSpacing = 10
        self.logInButton.titleLabel?.font = UIFont(name: "Lato-Bold", size: 15)
        self.logInButton.setTitleColor(UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */, for: .normal)
        self.logInButton.setTitle("Log In!", for: .normal)
        self.logInButton.addTarget(self, action: #selector(onLogInPressed(_:)), for: .touchUpInside)
        self.logInView.addSubview(self.logInButton)
        self.logInButton.translatesAutoresizingMaskIntoConstraints = false
        
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
        // Setup signupView
        
        // Setup signUpLabel
        self.signUpLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.signUpLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 89).isActive = true
        
        // Setup itSFreeLabel
        self.itSFreeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.itSFreeLabel.topAnchor.constraint(equalTo: self.signUpLabel.bottomAnchor, constant: 20).isActive = true
        
        // Setup signUpFieldsView
        self.signUpFieldsView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.signUpFieldsView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.signUpFieldsView.topAnchor.constraint(equalTo: self.itSFreeLabel.bottomAnchor, constant: 70).isActive = true
        self.signUpFieldsView.heightAnchor.constraint(equalToConstant: 152).isActive = true
        
        // Setup yourNicknameTextField
        self.yourNicknameTextField.leadingAnchor.constraint(equalTo: self.signUpFieldsView.leadingAnchor, constant: 15).isActive = true
        self.yourNicknameTextField.trailingAnchor.constraint(equalTo: self.signUpFieldsView.trailingAnchor, constant: -17).isActive = true
        self.yourNicknameTextField.topAnchor.constraint(equalTo: self.signUpFieldsView.topAnchor, constant: 14).isActive = true
        
        // Setup separatorView
        self.separatorView.leadingAnchor.constraint(equalTo: self.signUpFieldsView.leadingAnchor, constant: 0).isActive = true
        self.separatorView.trailingAnchor.constraint(equalTo: self.signUpFieldsView.trailingAnchor, constant: 0).isActive = true
        self.separatorView.topAnchor.constraint(equalTo: self.yourNicknameTextField.bottomAnchor, constant: 16).isActive = true
        self.separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // Setup yourSpacemailTextField
        self.yourSpacemailTextField.leadingAnchor.constraint(equalTo: self.signUpFieldsView.leadingAnchor, constant: 15).isActive = true
        self.yourSpacemailTextField.trailingAnchor.constraint(equalTo: self.signUpFieldsView.trailingAnchor, constant: -17).isActive = true
        self.yourSpacemailTextField.topAnchor.constraint(equalTo: self.separatorView.bottomAnchor, constant: 14).isActive = true
        
        // Setup separatorTwoView
        self.separatorTwoView.leadingAnchor.constraint(equalTo: self.signUpFieldsView.leadingAnchor, constant: 0).isActive = true
        self.separatorTwoView.trailingAnchor.constraint(equalTo: self.signUpFieldsView.trailingAnchor, constant: 0).isActive = true
        self.separatorTwoView.topAnchor.constraint(equalTo: self.yourSpacemailTextField.bottomAnchor, constant: 16).isActive = true
        self.separatorTwoView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // Setup passwordTextField
        self.passwordTextField.leadingAnchor.constraint(equalTo: self.signUpFieldsView.leadingAnchor, constant: 15).isActive = true
        self.passwordTextField.trailingAnchor.constraint(equalTo: self.signUpFieldsView.trailingAnchor, constant: -17).isActive = true
        self.passwordTextField.topAnchor.constraint(equalTo: self.separatorTwoView.bottomAnchor, constant: 14).isActive = true
        
        // Setup tosView
        self.tosView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        self.tosView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        self.tosView.topAnchor.constraint(equalTo: self.signUpFieldsView.bottomAnchor, constant: 15).isActive = true
        self.tosView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        // Setup iAgreeWithIntergaLabel
        self.iAgreeWithIntergaLabel.leadingAnchor.constraint(equalTo: self.tosView.leadingAnchor, constant: 0).isActive = true
        self.iAgreeWithIntergaLabel.centerYAnchor.constraint(equalTo: self.tosView.centerYAnchor, constant: 0).isActive = true
        
        // Setup switchSwitch
        self.switchSwitch.trailingAnchor.constraint(equalTo: self.tosView.trailingAnchor, constant: 0).isActive = true
        self.switchSwitch.centerYAnchor.constraint(equalTo: self.tosView.centerYAnchor, constant: 0).isActive = true
        
        // Setup signUpButton
        self.signUpButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        self.signUpButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        self.signUpButton.bottomAnchor.constraint(equalTo: self.logInView.topAnchor, constant: -10).isActive = true
        self.signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup logInView
        self.logInView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.logInView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true
        self.logInView.widthAnchor.constraint(equalToConstant: 232).isActive = true
        self.logInView.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
        // Setup alreadyGaveUpYourLabel
        self.alreadyGaveUpYourLabel.leadingAnchor.constraint(equalTo: self.logInView.leadingAnchor, constant: 4).isActive = true
        self.alreadyGaveUpYourLabel.centerYAnchor.constraint(equalTo: self.logInView.centerYAnchor, constant: 0).isActive = true
        
        // Setup logInButton
        self.logInButton.trailingAnchor.constraint(equalTo: self.logInView.trailingAnchor, constant: 0).isActive = true
        self.logInButton.centerYAnchor.constraint(equalTo: self.logInView.centerYAnchor, constant: 0).isActive = true
        self.logInButton.widthAnchor.constraint(equalToConstant: 47).isActive = true
        self.logInButton.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
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

    @IBAction public func onSwitchValueChanged(_ sender: UISwitch)  {
    
    }

    @IBAction public func onSignUpPressed(_ sender: UIButton)  {
        let destination = TabBarController()
        self.present(destination, animated: true, completion: nil)
    }

    @IBAction public func onLogInPressed(_ sender: UIButton)  {
        let destination = LoginViewController()
        self.navigationController?.pushViewController(destination, animated: true)
    }
}
