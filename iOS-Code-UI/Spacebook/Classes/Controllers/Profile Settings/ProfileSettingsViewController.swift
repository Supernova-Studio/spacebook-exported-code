//
//  ProfileSettingsViewController.swift
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

class ProfileSettingsViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var profileSettingsView: UIView!
    var avatarTempImageView: UIImageView!
    var informationView: UIView!
    var group7View: UIView!
    var detailsLabel: UILabel!
    var group6View: UIView!
    var uiSettingsCellView: UIView!
    var labelLabel: UILabel!
    var textLabel: UILabel!
    var path2ImageView: UIImageView!
    var group5View: UIView!
    var uiSettingsCellTwoView: UIView!
    var labelTwoLabel: UILabel!
    var textTwoLabel: UILabel!
    var path2TwoImageView: UIImageView!
    var group4View: UIView!
    var informationLabel: UILabel!
    var group3View: UIView!
    var labelThreeLabel: UILabel!
    var textThreeLabel: UILabel!
    var groupView: UIView!
    var labelFourLabel: UILabel!
    var labelFiveLabel: UILabel!
    var textFourLabel: UILabel!
    var group2View: UIView!
    var labelSixLabel: UILabel!
    var slideSwitch: UISwitch!
    var groupBarButtonItem: UIBarButtonItem!


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
        // Setup profileSettingsView
        self.view.backgroundColor = UIColor(red: 0.957, green: 0.949, blue: 0.957, alpha: 1) /* #F4F2F4 */
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        // Setup avatarTempImageView
        self.avatarTempImageView = UIImageView()
        self.avatarTempImageView.backgroundColor = UIColor.clear
        self.avatarTempImageView.image = UIImage(named: "avatar-temp")
        self.avatarTempImageView.contentMode = .scaleToFill
        self.view.addSubview(self.avatarTempImageView)
        self.avatarTempImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup informationView
        self.informationView = UIView(frame: .zero)
        self.informationView.backgroundColor = UIColor.clear
        self.view.addSubview(self.informationView)
        self.informationView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group7View
        self.group7View = UIView(frame: .zero)
        self.group7View.backgroundColor = UIColor.clear
        self.informationView.addSubview(self.group7View)
        self.group7View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup detailsLabel
        self.detailsLabel = UILabel()
        self.detailsLabel.numberOfLines = 0
        let detailsLabelAttrString = NSMutableAttributedString(string: "DETAILS", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 12)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.07,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.detailsLabel.attributedText = detailsLabelAttrString
        self.detailsLabel.backgroundColor = UIColor.clear
        self.detailsLabel.alpha = 0.4
        self.group7View.addSubview(self.detailsLabel)
        self.detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group6View
        self.group6View = UIView(frame: .zero)
        self.group6View.backgroundColor = UIColor.clear
        self.informationView.addSubview(self.group6View)
        self.group6View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup uiSettingsCellView
        self.uiSettingsCellView = UIView(frame: .zero)
        self.uiSettingsCellView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.group6View.addSubview(self.uiSettingsCellView)
        self.uiSettingsCellView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelLabel
        self.labelLabel = UILabel()
        self.labelLabel.numberOfLines = 0
        self.labelLabel.text = "Name"
        self.labelLabel.textColor = UIColor(red: 0.016, green: 0.047, blue: 0.086, alpha: 1) /* #040C16 */
        self.labelLabel.textAlignment = .left
        self.labelLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.labelLabel.backgroundColor = UIColor.clear
        self.uiSettingsCellView.addSubview(self.labelLabel)
        self.labelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup textLabel
        self.textLabel = UILabel()
        self.textLabel.numberOfLines = 0
        self.textLabel.text = "Dr. Where"
        self.textLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.textLabel.textAlignment = .right
        self.textLabel.font = UIFont(name: "Lato-Bold", size: 16)
        
        self.textLabel.backgroundColor = UIColor.clear
        self.uiSettingsCellView.addSubview(self.textLabel)
        self.textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup path2ImageView
        self.path2ImageView = UIImageView()
        self.path2ImageView.backgroundColor = UIColor.clear
        self.path2ImageView.image = UIImage(named: "path-2")
        self.path2ImageView.contentMode = .center
        self.uiSettingsCellView.addSubview(self.path2ImageView)
        self.path2ImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group5View
        self.group5View = UIView(frame: .zero)
        self.group5View.backgroundColor = UIColor.clear
        self.informationView.addSubview(self.group5View)
        self.group5View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup uiSettingsCellTwoView
        self.uiSettingsCellTwoView = UIView(frame: .zero)
        self.uiSettingsCellTwoView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.group5View.addSubview(self.uiSettingsCellTwoView)
        self.uiSettingsCellTwoView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelTwoLabel
        self.labelTwoLabel = UILabel()
        self.labelTwoLabel.numberOfLines = 0
        self.labelTwoLabel.text = "Spacemail"
        self.labelTwoLabel.textColor = UIColor(red: 0.016, green: 0.047, blue: 0.086, alpha: 1) /* #040C16 */
        self.labelTwoLabel.textAlignment = .left
        self.labelTwoLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.labelTwoLabel.backgroundColor = UIColor.clear
        self.uiSettingsCellTwoView.addSubview(self.labelTwoLabel)
        self.labelTwoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup textTwoLabel
        self.textTwoLabel = UILabel()
        self.textTwoLabel.numberOfLines = 0
        self.textTwoLabel.text = "tardis~spacemail.io"
        self.textTwoLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.textTwoLabel.textAlignment = .right
        self.textTwoLabel.font = UIFont(name: "Lato-Bold", size: 16)
        
        self.textTwoLabel.backgroundColor = UIColor.clear
        self.uiSettingsCellTwoView.addSubview(self.textTwoLabel)
        self.textTwoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup path2TwoImageView
        self.path2TwoImageView = UIImageView()
        self.path2TwoImageView.backgroundColor = UIColor.clear
        self.path2TwoImageView.image = UIImage(named: "path-2")
        self.path2TwoImageView.contentMode = .center
        self.uiSettingsCellTwoView.addSubview(self.path2TwoImageView)
        self.path2TwoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group4View
        self.group4View = UIView(frame: .zero)
        self.group4View.backgroundColor = UIColor.clear
        self.informationView.addSubview(self.group4View)
        self.group4View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup informationLabel
        self.informationLabel = UILabel()
        self.informationLabel.numberOfLines = 0
        let informationLabelAttrString = NSMutableAttributedString(string: "INFORMATION", attributes: [
            .font : UIFont(name: "Lato-Regular", size: 12)!,
            .foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 1),
            .kern : -0.07,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.informationLabel.attributedText = informationLabelAttrString
        self.informationLabel.backgroundColor = UIColor.clear
        self.informationLabel.alpha = 0.4
        self.group4View.addSubview(self.informationLabel)
        self.informationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group3View
        self.group3View = UIView(frame: .zero)
        self.group3View.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.informationView.addSubview(self.group3View)
        self.group3View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelThreeLabel
        self.labelThreeLabel = UILabel()
        self.labelThreeLabel.numberOfLines = 0
        self.labelThreeLabel.text = "Occasional advertisement"
        self.labelThreeLabel.textColor = UIColor(red: 0.016, green: 0.047, blue: 0.086, alpha: 1) /* #040C16 */
        self.labelThreeLabel.textAlignment = .left
        self.labelThreeLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.labelThreeLabel.backgroundColor = UIColor.clear
        self.group3View.addSubview(self.labelThreeLabel)
        self.labelThreeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup textThreeLabel
        self.textThreeLabel = UILabel()
        self.textThreeLabel.numberOfLines = 0
        self.textThreeLabel.text = "Yes"
        self.textThreeLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.textThreeLabel.textAlignment = .right
        self.textThreeLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.textThreeLabel.backgroundColor = UIColor.clear
        self.group3View.addSubview(self.textThreeLabel)
        self.textThreeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup groupView
        self.groupView = UIView(frame: .zero)
        self.groupView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.informationView.addSubview(self.groupView)
        self.groupView.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelFourLabel
        self.labelFourLabel = UILabel()
        self.labelFourLabel.numberOfLines = 0
        self.labelFourLabel.text = "Logged as"
        self.labelFourLabel.textColor = UIColor(red: 0.016, green: 0.047, blue: 0.086, alpha: 1) /* #040C16 */
        self.labelFourLabel.textAlignment = .left
        self.labelFourLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.labelFourLabel.backgroundColor = UIColor.clear
        self.labelFourLabel.alpha = 0.4
        self.groupView.addSubview(self.labelFourLabel)
        self.labelFourLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelFiveLabel
        self.labelFiveLabel = UILabel()
        self.labelFiveLabel.numberOfLines = 0
        self.labelFiveLabel.text = "Dr. Where"
        self.labelFiveLabel.textColor = UIColor(red: 0.016, green: 0.047, blue: 0.086, alpha: 1) /* #040C16 */
        self.labelFiveLabel.textAlignment = .left
        self.labelFiveLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.labelFiveLabel.backgroundColor = UIColor.clear
        self.groupView.addSubview(self.labelFiveLabel)
        self.labelFiveLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup textFourLabel
        self.textFourLabel = UILabel()
        self.textFourLabel.numberOfLines = 0
        self.textFourLabel.text = "Log out"
        self.textFourLabel.textColor = UIColor(red: 0.851, green: 0.404, blue: 0.431, alpha: 1) /* #D9676E */
        self.textFourLabel.textAlignment = .right
        self.textFourLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.textFourLabel.backgroundColor = UIColor.clear
        self.groupView.addSubview(self.textFourLabel)
        self.textFourLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup group2View
        self.group2View = UIView(frame: .zero)
        self.group2View.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.informationView.addSubview(self.group2View)
        self.group2View.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup labelSixLabel
        self.labelSixLabel = UILabel()
        self.labelSixLabel.numberOfLines = 0
        self.labelSixLabel.text = "Randomize timeline information"
        self.labelSixLabel.textColor = UIColor(red: 0.016, green: 0.047, blue: 0.086, alpha: 1) /* #040C16 */
        self.labelSixLabel.textAlignment = .left
        self.labelSixLabel.font = UIFont(name: "Lato-Regular", size: 16)
        
        self.labelSixLabel.backgroundColor = UIColor.clear
        self.group2View.addSubview(self.labelSixLabel)
        self.labelSixLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Setup slideSwitch
        self.slideSwitch = UISwitch()
        self.slideSwitch.isOn = true
        self.slideSwitch.tintColor = UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1) /* #8B1B8C */
        self.slideSwitch.onTintColor = UIColor(red: 0.545, green: 0.106, blue: 0.549, alpha: 1) /* #8B1B8C */
        self.slideSwitch.thumbTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1) /* #FFFFFF */
        self.group2View.addSubview(self.slideSwitch)
        self.slideSwitch.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupUI()  {
        self.extendedLayoutIncludesOpaqueBars = true
        
        // Left navigation items
        self.groupBarButtonItem = UIBarButtonItem(image: UIImage(named: "group-2"), style: .plain, target: self, action: #selector(self.onGroupPressed(_:)))
        self.navigationItem.leftBarButtonItems = [ self.groupBarButtonItem ]
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Dr. Where settings"
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup profileSettingsView
        
        // Setup avatarTempImageView
        self.avatarTempImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        self.avatarTempImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 88).isActive = true
        
        // Setup informationView
        self.informationView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        self.informationView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        self.informationView.topAnchor.constraint(equalTo: self.avatarTempImageView.bottomAnchor, constant: 19).isActive = true
        self.informationView.heightAnchor.constraint(equalToConstant: 380).isActive = true
        
        // Setup group7View
        self.group7View.leadingAnchor.constraint(equalTo: self.informationView.leadingAnchor, constant: 20).isActive = true
        self.group7View.topAnchor.constraint(equalTo: self.informationView.topAnchor, constant: 0).isActive = true
        self.group7View.widthAnchor.constraint(equalToConstant: 47).isActive = true
        self.group7View.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        // Setup detailsLabel
        self.detailsLabel.leadingAnchor.constraint(equalTo: self.group7View.leadingAnchor, constant: 0).isActive = true
        self.detailsLabel.trailingAnchor.constraint(equalTo: self.group7View.trailingAnchor, constant: 0).isActive = true
        self.detailsLabel.centerYAnchor.constraint(equalTo: self.group7View.centerYAnchor, constant: 0).isActive = true
        
        // Setup group6View
        self.group6View.leadingAnchor.constraint(equalTo: self.informationView.leadingAnchor, constant: 0).isActive = true
        self.group6View.trailingAnchor.constraint(equalTo: self.informationView.trailingAnchor, constant: 0).isActive = true
        self.group6View.topAnchor.constraint(equalTo: self.group7View.bottomAnchor, constant: 10).isActive = true
        self.group6View.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup uiSettingsCellView
        self.uiSettingsCellView.leadingAnchor.constraint(equalTo: self.group6View.leadingAnchor, constant: 0).isActive = true
        self.uiSettingsCellView.trailingAnchor.constraint(equalTo: self.group6View.trailingAnchor, constant: 0).isActive = true
        self.uiSettingsCellView.centerYAnchor.constraint(equalTo: self.group6View.centerYAnchor, constant: 0).isActive = true
        self.uiSettingsCellView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup labelLabel
        self.labelLabel.leadingAnchor.constraint(equalTo: self.uiSettingsCellView.leadingAnchor, constant: 20).isActive = true
        self.labelLabel.centerYAnchor.constraint(equalTo: self.uiSettingsCellView.centerYAnchor, constant: 0).isActive = true
        
        // Setup textLabel
        self.textLabel.trailingAnchor.constraint(equalTo: self.path2ImageView.leadingAnchor, constant: -14).isActive = true
        self.textLabel.centerYAnchor.constraint(equalTo: self.uiSettingsCellView.centerYAnchor, constant: 0).isActive = true
        
        // Setup path2ImageView
        self.path2ImageView.trailingAnchor.constraint(equalTo: self.uiSettingsCellView.trailingAnchor, constant: -19).isActive = true
        self.path2ImageView.centerYAnchor.constraint(equalTo: self.uiSettingsCellView.centerYAnchor, constant: 0).isActive = true
        
        // Setup group5View
        self.group5View.leadingAnchor.constraint(equalTo: self.informationView.leadingAnchor, constant: 0).isActive = true
        self.group5View.trailingAnchor.constraint(equalTo: self.informationView.trailingAnchor, constant: 0).isActive = true
        self.group5View.topAnchor.constraint(equalTo: self.group6View.bottomAnchor, constant: 0).isActive = true
        self.group5View.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup uiSettingsCellTwoView
        self.uiSettingsCellTwoView.leadingAnchor.constraint(equalTo: self.group5View.leadingAnchor, constant: 0).isActive = true
        self.uiSettingsCellTwoView.trailingAnchor.constraint(equalTo: self.group5View.trailingAnchor, constant: 0).isActive = true
        self.uiSettingsCellTwoView.centerYAnchor.constraint(equalTo: self.group5View.centerYAnchor, constant: 0).isActive = true
        self.uiSettingsCellTwoView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup labelTwoLabel
        self.labelTwoLabel.leadingAnchor.constraint(equalTo: self.uiSettingsCellTwoView.leadingAnchor, constant: 20).isActive = true
        self.labelTwoLabel.centerYAnchor.constraint(equalTo: self.uiSettingsCellTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup textTwoLabel
        self.textTwoLabel.trailingAnchor.constraint(equalTo: self.path2TwoImageView.leadingAnchor, constant: -14).isActive = true
        self.textTwoLabel.centerYAnchor.constraint(equalTo: self.uiSettingsCellTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup path2TwoImageView
        self.path2TwoImageView.trailingAnchor.constraint(equalTo: self.uiSettingsCellTwoView.trailingAnchor, constant: -19).isActive = true
        self.path2TwoImageView.centerYAnchor.constraint(equalTo: self.uiSettingsCellTwoView.centerYAnchor, constant: 0).isActive = true
        
        // Setup group4View
        self.group4View.leadingAnchor.constraint(equalTo: self.informationView.leadingAnchor, constant: 20).isActive = true
        self.group4View.topAnchor.constraint(equalTo: self.group5View.bottomAnchor, constant: 30).isActive = true
        self.group4View.widthAnchor.constraint(equalToConstant: 84).isActive = true
        self.group4View.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        // Setup informationLabel
        self.informationLabel.leadingAnchor.constraint(equalTo: self.group4View.leadingAnchor, constant: 0).isActive = true
        self.informationLabel.trailingAnchor.constraint(equalTo: self.group4View.trailingAnchor, constant: 0).isActive = true
        self.informationLabel.centerYAnchor.constraint(equalTo: self.group4View.centerYAnchor, constant: 0).isActive = true
        
        // Setup group3View
        self.group3View.leadingAnchor.constraint(equalTo: self.informationView.leadingAnchor, constant: 0).isActive = true
        self.group3View.trailingAnchor.constraint(equalTo: self.informationView.trailingAnchor, constant: 0).isActive = true
        self.group3View.topAnchor.constraint(equalTo: self.group4View.bottomAnchor, constant: 10).isActive = true
        self.group3View.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup labelThreeLabel
        self.labelThreeLabel.leadingAnchor.constraint(equalTo: self.group3View.leadingAnchor, constant: 20).isActive = true
        self.labelThreeLabel.centerYAnchor.constraint(equalTo: self.group3View.centerYAnchor, constant: 0).isActive = true
        
        // Setup textThreeLabel
        self.textThreeLabel.trailingAnchor.constraint(equalTo: self.group3View.trailingAnchor, constant: -20).isActive = true
        self.textThreeLabel.centerYAnchor.constraint(equalTo: self.group3View.centerYAnchor, constant: 0).isActive = true
        
        // Setup groupView
        self.groupView.leadingAnchor.constraint(equalTo: self.informationView.leadingAnchor, constant: 0).isActive = true
        self.groupView.trailingAnchor.constraint(equalTo: self.informationView.trailingAnchor, constant: 0).isActive = true
        self.groupView.topAnchor.constraint(equalTo: self.group2View.bottomAnchor, constant: 0).isActive = true
        self.groupView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup labelFourLabel
        self.labelFourLabel.leadingAnchor.constraint(equalTo: self.groupView.leadingAnchor, constant: 20).isActive = true
        self.labelFourLabel.centerYAnchor.constraint(equalTo: self.groupView.centerYAnchor, constant: 0).isActive = true
        
        // Setup labelFiveLabel
        self.labelFiveLabel.leadingAnchor.constraint(equalTo: self.labelFourLabel.trailingAnchor, constant: 10).isActive = true
        self.labelFiveLabel.centerYAnchor.constraint(equalTo: self.groupView.centerYAnchor, constant: 0).isActive = true
        
        // Setup textFourLabel
        self.textFourLabel.trailingAnchor.constraint(equalTo: self.groupView.trailingAnchor, constant: -20).isActive = true
        self.textFourLabel.centerYAnchor.constraint(equalTo: self.groupView.centerYAnchor, constant: 0).isActive = true
        
        // Setup group2View
        self.group2View.leadingAnchor.constraint(equalTo: self.informationView.leadingAnchor, constant: 0).isActive = true
        self.group2View.trailingAnchor.constraint(equalTo: self.informationView.trailingAnchor, constant: 0).isActive = true
        self.group2View.topAnchor.constraint(equalTo: self.group3View.bottomAnchor, constant: 0).isActive = true
        self.group2View.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        // Setup labelSixLabel
        self.labelSixLabel.leadingAnchor.constraint(equalTo: self.group2View.leadingAnchor, constant: 20).isActive = true
        self.labelSixLabel.centerYAnchor.constraint(equalTo: self.group2View.centerYAnchor, constant: 0).isActive = true
        
        // Setup slideSwitch
        self.slideSwitch.trailingAnchor.constraint(equalTo: self.group2View.trailingAnchor, constant: -20).isActive = true
        self.slideSwitch.centerYAnchor.constraint(equalTo: self.group2View.centerYAnchor, constant: 0).isActive = true
        
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

    @IBAction public func onSlideValueChanged(_ sender: UISwitch)  {
    
    }
}
