//
//  WelcomeVC.swift
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

class WelcomeVC: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet fileprivate weak var welcome: UIView!
    @IBOutlet fileprivate weak var spacebookLabel: UILabel!
    @IBOutlet fileprivate weak var conquerTheStarsLabel: UILabel!
    @IBOutlet fileprivate weak var logoIV: UIImageView!
    @IBOutlet fileprivate weak var logIn: UIButton!
    @IBOutlet fileprivate weak var signUp: UIButton!
    @IBOutlet fileprivate weak var supernovaStuLabel: UILabel!


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
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        // Animations
        self.animationOne()
    }

    fileprivate func setupUI() {

        // Navigation bar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        // welcome
        let gradientOne = CAGradientLayer()
        gradientOne.frame = self.welcome.bounds
        gradientOne.colors = [UIColor(red: 0.97, green: 0.52, blue: 0.38, alpha: 1).cgColor, UIColor(red: 0.55, green: 0.11, blue: 0.55, alpha: 1).cgColor]
        gradientOne.locations = [0.000, 1.000]
        gradientOne.startPoint = CGPoint(x: 0.310892751009558, y: 1.09827011481677)
        gradientOne.endPoint = CGPoint(x: 0.689107248990442, y: -0.0982701148167725)
        self.welcome.layer.insertSublayer(gradientOne, at: 0)
        
        // logoIV
        self.logoIV.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.logoIV.layer.shadowRadius = 25.0
        self.logoIV.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.logoIV.layer.shadowOpacity = 1.0
        self.logoIV.layer.masksToBounds = false
        
        // logIn
        self.logIn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor
        self.logIn.layer.shadowRadius = 25.0
        self.logIn.layer.shadowOffset = CGSize(width: 0.0, height: 20.0)
        self.logIn.layer.shadowOpacity = 1.0
        self.logIn.layer.masksToBounds = false
        self.logIn.layer.cornerRadius = 2.0
        
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

        self.spacebookLabel.text = NSLocalizedString("WelcomeVC.spacebookLabel", comment: "")
        self.conquerTheStarsLabel.text = NSLocalizedString("WelcomeVC.conquerTheStarsLabel", comment: "")
        self.logIn.setTitle(NSLocalizedString("WelcomeVC.logIn", comment: ""), for: .normal)
        self.signUp.setTitle(NSLocalizedString("WelcomeVC.signUp", comment: ""), for: .normal)
        self.supernovaStuLabel.text = NSLocalizedString("WelcomeVC.supernovaStuLabel", comment: "")
    }

    fileprivate func setupData() {

    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status bar

    override var prefersStatusBarHidden: Bool {

        return true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {

        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction func onLogInPressed(_ sender: UIButton) {

        self.performSegue(withIdentifier: "Push Login", sender: nil)
        self.animationThree()
    }

    @IBAction func onSignUpPressed(_ sender: UIButton) {

        self.performSegue(withIdentifier: "Push Signup", sender: nil)
        self.animationTwo()
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Animations

    fileprivate func animationOne() {

        let groupOne = CAAnimationGroup()
        groupOne.beginTime = CACurrentMediaTime() + 0.0
        groupOne.repeatCount = Float(1)
        groupOne.duration = 1.0
        groupOne.autoreverses = false
        groupOne.isRemovedOnCompletion = false
        groupOne.fillMode = kCAFillModeRemoved
        groupOne.animations = []
        
        let animationOne = CABasicAnimation()
        animationOne.beginTime = 0.0
        animationOne.repeatCount = Float(1)
        animationOne.duration = 1.0
        animationOne.autoreverses = false
        animationOne.isRemovedOnCompletion = false
        animationOne.timingFunction = CAMediaTimingFunction(controlPoints: 0.12, 0.683078835227273, 0.58, 1.0)
        animationOne.keyPath = "transform.translation.y"
        animationOne.fromValue = 500
        animationOne.toValue = 0
        groupOne.animations?.append(animationOne)
        
        let animationTwo = CABasicAnimation()
        animationTwo.beginTime = 0.0
        animationTwo.repeatCount = Float(1)
        animationTwo.duration = 1.0
        animationTwo.autoreverses = false
        animationTwo.isRemovedOnCompletion = false
        animationTwo.timingFunction = CAMediaTimingFunction(controlPoints: 0.1, 0.644264914772727, 0.58, 1.0)
        animationTwo.keyPath = "opacity"
        animationTwo.fromValue = 0
        animationTwo.toValue = 1
        groupOne.animations?.append(animationTwo)
        
        let animationThree = CAKeyframeAnimation()
        animationThree.beginTime = 0.0
        animationThree.repeatCount = Float(1)
        animationThree.duration = 1.0
        animationThree.autoreverses = false
        animationThree.isRemovedOnCompletion = false
        animationThree.timingFunction = CAMediaTimingFunction(controlPoints: 0.1, 0.631640625, 0.58, 1.0)
        animationThree.keyPath = "transform.rotation"
        animationThree.keyTimes = [ 0.0, 0.8, 1.0 ]
        animationThree.values = [ -45.0 / 180 * Double.pi, -45.0 / 180 * Double.pi, 0.0 / 180 * Double.pi ]
        groupOne.animations?.append(animationThree)
        
        self.logoIV.layer.add(groupOne, forKey: nil)
    }

    fileprivate func animationTwo() {

        let groupOne = CAAnimationGroup()
        groupOne.beginTime = CACurrentMediaTime() + 0.0
        groupOne.repeatCount = Float(1)
        groupOne.duration = 1.0
        groupOne.autoreverses = false
        groupOne.isRemovedOnCompletion = false
        groupOne.fillMode = kCAFillModeRemoved
        groupOne.animations = []
        
        let animationOne = CAKeyframeAnimation()
        animationOne.beginTime = 0.0
        animationOne.repeatCount = Float(1)
        animationOne.duration = 1.0
        animationOne.autoreverses = false
        animationOne.isRemovedOnCompletion = false
        animationOne.timingFunction = CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1.0)
        animationOne.keyPath = "transform.scale"
        animationOne.keyTimes = [ 0.0, 0.2, 0.4, 0.6, 0.8, 1.0 ]
        animationOne.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1.0 ]
        groupOne.animations?.append(animationOne)
        
        let animationTwo = CAKeyframeAnimation()
        animationTwo.beginTime = 0.0
        animationTwo.repeatCount = Float(1)
        animationTwo.duration = 1.0
        animationTwo.autoreverses = false
        animationTwo.isRemovedOnCompletion = false
        animationTwo.timingFunction = CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1.0)
        animationTwo.keyPath = "opacity"
        animationTwo.keyTimes = [ 0.0, 0.6, 1.0 ]
        animationTwo.values = [ 0.0, 1.0, 1.0 ]
        groupOne.animations?.append(animationTwo)
        
        self.signUp.layer.add(groupOne, forKey: nil)
    }

    fileprivate func animationThree() {

        let groupOne = CAAnimationGroup()
        groupOne.beginTime = CACurrentMediaTime() + 0.0
        groupOne.repeatCount = Float(1)
        groupOne.duration = 1.0
        groupOne.autoreverses = false
        groupOne.isRemovedOnCompletion = false
        groupOne.fillMode = kCAFillModeRemoved
        groupOne.animations = []
        
        let animationOne = CAKeyframeAnimation()
        animationOne.beginTime = 0.0
        animationOne.repeatCount = Float(1)
        animationOne.duration = 1.0
        animationOne.autoreverses = false
        animationOne.isRemovedOnCompletion = false
        animationOne.timingFunction = CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1.0)
        animationOne.keyPath = "transform.scale"
        animationOne.keyTimes = [ 0.0, 0.2, 0.4, 0.6, 0.8, 1.0 ]
        animationOne.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1.0 ]
        groupOne.animations?.append(animationOne)
        
        let animationTwo = CAKeyframeAnimation()
        animationTwo.beginTime = 0.0
        animationTwo.repeatCount = Float(1)
        animationTwo.duration = 1.0
        animationTwo.autoreverses = false
        animationTwo.isRemovedOnCompletion = false
        animationTwo.timingFunction = CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1.0)
        animationTwo.keyPath = "opacity"
        animationTwo.keyTimes = [ 0.0, 0.6, 1.0 ]
        animationTwo.values = [ 0.0, 1.0, 1.0 ]
        groupOne.animations?.append(animationTwo)
        
        self.logIn.layer.add(groupOne, forKey: nil)
    }
}









