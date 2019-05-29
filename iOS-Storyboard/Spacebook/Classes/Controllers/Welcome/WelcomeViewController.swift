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

    @IBOutlet weak var welcomeView: UIView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var spacebookLabel: UILabel!
    @IBOutlet weak var signUpButton: SupernovaButton!
    @IBOutlet weak var logInButton: SupernovaButton!
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
        
        
        // Setup logoImageView
        self.logoImageView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.logoImageView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.logoImageView.layer.shadowRadius = 25
        self.logoImageView.layer.shadowOpacity = 1
        
        
        // Setup spacebookLabel
        let spacebookLabelAttrString = NSMutableAttributedString(string: "Spacebook", attributes: [
            .font : UIFont(name: "Lato-Bold", size: 42)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : -1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.spacebookLabel.attributedText = spacebookLabelAttrString
        
        // Setup signUpButton
        self.signUpButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.signUpButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.signUpButton.layer.shadowRadius = 25
        self.signUpButton.layer.shadowOpacity = 1
        
        self.signUpButton.layer.cornerRadius = 2
        self.signUpButton.layer.masksToBounds = true
        self.signUpButton.snImageTextSpacing = 10
        
        // Setup logInButton
        self.logInButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.logInButton.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.logInButton.layer.shadowRadius = 25
        self.logInButton.layer.shadowOpacity = 1
        
        self.logInButton.layer.cornerRadius = 2
        self.logInButton.layer.masksToBounds = true
        self.logInButton.snImageTextSpacing = 10
        
    }

    private func setupUI()  {
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
        self.performSegue(withIdentifier: "Push Signup", sender: nil)
    }

    @IBAction public func onLogInPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Push Login", sender: nil)
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
