//
//  ViewController.swift
//  DisplayRideIOS
//
//  Created by Sumeet Jain on 23/08/17.
//  Copyright © 2017 Sumeet Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var connectNowButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var sepLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Connect Now Button SetUp
        self.setUpConnectNowButton()
        self.setUpBackgrndImage()
        self.setUpStaticView()
    }
    
    func setUpConnectNowButton()
    {
        self.connectNowButton.setTitle("Connect Now!", for: .normal)
        self.connectNowButton.setTitleColor(UIColor.white, for: .normal)
        self.connectNowButton.backgroundColor = UIColor(red: 0, green: 100/255, blue: 255/255, alpha: 1)
    }
    
    func setUpBackgrndImage()
    {
        self.backgroundImageView.image = UIImage(named: "backgroundImage")!
    }
    
    func setUpStaticView()
    {
        self.logoImageView.image = UIImage(named: "logoImage")!
        
        self.displayLabel.layer.borderWidth = 1.5
        self.displayLabel.layer.borderColor = UIColor.white.cgColor
        self.displayLabel.layer.cornerRadius = 2
        self.displayLabel.layer.masksToBounds = true
        
        self.displayLabel.text = "RIDEDISPLAY"
        self.displayLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.displayLabel.textColor = UIColor.white
        self.displayLabel.addTextSpacing(value: 2)
        
        self.firstLabel.text = "As a First step, you need \n to connect to a nearby \n  RideDisplay device"
        self.firstLabel.font = UIFont.systemFont(ofSize: 17)
        self.firstLabel.textColor = UIColor.black
        self.firstLabel.addTextSpacing(value: 1)
        
        self.secondLabel.text = "Please"
        self.secondLabel.font = UIFont.boldSystemFont(ofSize: 15)
        self.secondLabel.textColor = UIColor.black
        
        self.thirdLabel.text = "1. Turn-on RideDisplay"
        self.thirdLabel.textColor = UIColor.black
        self.thirdLabel.font = UIFont.systemFont(ofSize: 15)
        
        self.fourthLabel.text = "2. Enable bluetooth in your mobile \n    phone"
        self.fourthLabel.textColor = UIColor.black
        self.fourthLabel.font = UIFont.systemFont(ofSize: 15)
        
        self.bottomView.layer.cornerRadius = 2
        self.bottomView.layer.masksToBounds = true

    }
    
}

extension UILabel
{
    func addTextSpacing(value: Int) {
        if let textString = text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSKernAttributeName, value: value, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}
