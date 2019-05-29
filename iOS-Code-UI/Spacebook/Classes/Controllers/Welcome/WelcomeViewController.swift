//
//  WelcomeViewController.swift
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

class WelcomeViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var welcomeView: UIView!
    var logoImageView: UIImageView!
    var spacebookLabel: UILabel!
    var conquerTheStarsLabel: UILabel!
    var viewView: UIView!
    var signUpButton: SupernovaButton!
    var logInButton: SupernovaButton!
    var supernovaStudioLabel: UILabel!
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
        // Animations
        self.animationOne()
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup welcomeView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.969, green: 0.518, blue: 0.384, alpha: 1).cgColor /* #F78462 */, UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1).cgColor /* #8B1B8C */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.endPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup logoImageView
        self.logoImageView = UIImageView()
        self.logoImageView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.logoImageView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.logoImageView.layer.shadowRadius = 25
        self.logoImageView.layer.shadowOpacity = 1
        
        self.logoImageView.backgroundColor = UIColor.clear
        self.logoImageView.image = UIImage(named: "logo")
        self.logoImageView.contentMode = .center
        self.view.addSubview(self.logoImageView)
        self.logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup spacebookLabel
        self.spacebookLabel = UILabel()
        self.spacebookLabel.numberOfLines = 0
        let spacebookLabelAttrString = NSMutableAttributedString(string: "Spacebook", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.spacebookLabel.attributedText = spacebookLabelAttrString
        self.spacebookLabel.backgroundColor = UIColor.clear
        self.view.addSubview(self.spacebookLabel)
        self.spacebookLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup conquerTheStarsLabel
        self.conquerTheStarsLabel = UILabel()
        self.conquerTheStarsLabel.numberOfLines = 0
        self.conquerTheStarsLabel.text = "Conquer the stars\nfrom behind the screen."
        self.conquerTheStarsLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.conquerTheStarsLabel.textAlignment = .center
        self.conquerTheStarsLabel.font = UIFont(name: "Lato-Regular", size: 18)
        
        self.conquerTheStarsLabel.backgroundColor = UIColor.clear
        self.view.addSubview(self.conquerTheStarsLabel)
        self.conquerTheStarsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup viewView
        self.viewView = UIView(frame: .zero)
        self.viewView.backgroundColor = UIColor.clear
        self.view.addSubview(self.viewView)
        self.viewView.translatesAutoresizingMaskIntoConstraints = false
        
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
        self.viewView.addSubview(self.signUpButton)
        self.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup logInButton
        self.logInButton = SupernovaButton(type: .custom)
        self.logInButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.logInButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.logInButton.layer.shadowRadius = 25
        self.logInButton.layer.shadowOpacity = 1
        
        self.logInButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.logInButton.layer.cornerRadius = 2
        self.logInButton.layer.masksToBounds = true
        self.logInButton.snImageTextSpacing = 10
        self.logInButton.setImage(UIImage(named: "icon-log-in"), for: .normal)
        self.logInButton.titleLabel?.font = UIFont(name: "Lato-Bold", size: 15)
        self.logInButton.setTitleColor(UIColor(red: 0.855, green: 0.408, blue: 0.427, alpha: 1) /* #DA686D */, for: .normal)
        self.logInButton.setTitle("LOG IN", for: .normal)
        self.logInButton.addTarget(self, action: #selector(onLogInPressed(_:)), for: .touchUpInside)
        self.viewView.addSubview(self.logInButton)
        self.logInButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup supernovaStudioLabel
        self.supernovaStudioLabel = UILabel()
        self.supernovaStudioLabel.numberOfLines = 0
        self.supernovaStudioLabel.text = "© 2050 Supernova Studio"
        self.supernovaStudioLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.supernovaStudioLabel.textAlignment = .center
        self.supernovaStudioLabel.font = UIFont(name: "Lato-Regular", size: 15)
        
        self.supernovaStudioLabel.backgroundColor = UIColor.clear
        self.view.addSubview(self.supernovaStudioLabel)
        self.supernovaStudioLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupUI()  {
        self.extendedLayoutIncludesOpaqueBars = true
        
        let navigationBar = self.navigationController!.navigationBar
        
        navigationBar.barTintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        navigationBar.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12),
            NSAttributedString.Key.foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
        ]
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
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
        // Setup welcomeView
        
        // Setup logoImageView
        self.logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.logoImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        
        // Setup spacebookLabel
        self.spacebookLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.spacebookLabel.topAnchor.constraint(equalTo: self.logoImageView.bottomAnchor, constant: 60).isActive = true
        
        // Setup conquerTheStarsLabel
        self.conquerTheStarsLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.conquerTheStarsLabel.topAnchor.constraint(equalTo: self.spacebookLabel.bottomAnchor, constant: 20).isActive = true
        
        // Setup viewView
        self.viewView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        self.viewView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
        self.viewView.bottomAnchor.constraint(equalTo: self.supernovaStudioLabel.topAnchor, constant: -85).isActive = true
        self.viewView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup signUpButton
        self.signUpButton.leadingAnchor.constraint(equalTo: self.viewView.leadingAnchor, constant: 0).isActive = true
        self.signUpButton.widthAnchor.constraint(equalTo: self.logInButton.widthAnchor, multiplier: 1.0).isActive = true
        self.signUpButton.bottomAnchor.constraint(equalTo: self.viewView.bottomAnchor, constant: 0).isActive = true
        self.signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup logInButton
        self.logInButton.leadingAnchor.constraint(equalTo: self.signUpButton.trailingAnchor, constant: 19).isActive = true
        self.logInButton.trailingAnchor.constraint(equalTo: self.viewView.trailingAnchor, constant: 0).isActive = true
        self.logInButton.bottomAnchor.constraint(equalTo: self.viewView.bottomAnchor, constant: 0).isActive = true
        self.logInButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup supernovaStudioLabel
        self.supernovaStudioLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.supernovaStudioLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true
        
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return true
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onSignUpPressed(_ sender: UIButton)  {
        let destination = SignupViewController()
        self.navigationController?.pushViewController(destination, animated: true)
    }

    @IBAction public func onLogInPressed(_ sender: UIButton)  {
        let destination = LoginViewController()
        self.navigationController?.pushViewController(destination, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Animations

    private func animationOne()  {
        let groupOne = CAAnimationGroup()
        groupOne.beginTime = CACurrentMediaTime() + 0.0
        groupOne.repeatCount = Float(1)
        groupOne.duration = 1.0
        groupOne.autoreverses = false
        groupOne.isRemovedOnCompletion = false
        groupOne.fillMode = .removed
        groupOne.animations = []
        
        let animationOne = CABasicAnimation()
        animationOne.beginTime = 0
        animationOne.repeatCount = Float(1)
        animationOne.duration = 0.85
        animationOne.autoreverses = false
        animationOne.isRemovedOnCompletion = false
        animationOne.timingFunction = CAMediaTimingFunction(controlPoints: 0.29, 0.87, 1, 1)
        animationOne.keyPath = "transform.translation.y"
        animationOne.fromValue = 300
        animationOne.toValue = 0
        groupOne.animations?.append(animationOne)
        
        let animationTwo = CABasicAnimation()
        animationTwo.beginTime = 0
        animationTwo.repeatCount = Float(1)
        animationTwo.duration = 0.35
        animationTwo.autoreverses = false
        animationTwo.isRemovedOnCompletion = false
        animationTwo.timingFunction = CAMediaTimingFunction(controlPoints: 0.42, 0, 0.58, 1)
        animationTwo.keyPath = "opacity"
        animationTwo.fromValue = 0
        animationTwo.toValue = 1
        groupOne.animations?.append(animationTwo)
        
        let animationThree = CAKeyframeAnimation()
        animationThree.beginTime = 0
        animationThree.repeatCount = Float(1)
        animationThree.duration = 1
        animationThree.autoreverses = false
        animationThree.isRemovedOnCompletion = false
        animationThree.timingFunction = CAMediaTimingFunction(controlPoints: 0.42, 0, 0.58, 1)
        animationThree.keyPath = "transform.rotation"
        animationThree.keyTimes = [ 0.0, 0.7, 1.0 ]
        animationThree.values = [ -45.0 / 180 * Double.pi, -45.0 / 180 * Double.pi, 0.0 / 180 * Double.pi ]
        groupOne.animations?.append(animationThree)
        
        self.logoImageView.layer.add(groupOne, forKey: nil)
    }
}
