//
//  RoundedShadowButton.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 7/15/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class RoundedShadowButton: UIButton {
    
    var originalButtonSize: CGRect?
    
    override func awakeFromNib() {
        setUpRoundedShadowButtonView()
    }

    func setUpRoundedShadowButtonView() {
        originalButtonSize = self.frame
        self.layer.cornerRadius = 5.0
        self.layer.shadowRadius = 10.0
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.zero
    }
    
    func animateButton(shouldLoad: Bool, withMessage message: String?) {
        
        // Set up spinner
        let spinner = UIActivityIndicatorView()
        spinner.activityIndicatorViewStyle = .whiteLarge
        spinner.color = UIColor.darkGray
        spinner.alpha = 0.0
        spinner.hidesWhenStopped = true
        spinner.tag = 11
        
        // Animation starts when action btn is pressed and shouldLoad argument passed in
        if shouldLoad {
            self.addSubview(spinner)
    
            self.setTitle("", for: .normal)
            UIView.animate(withDuration: 0.2, animations: { 
                self.layer.cornerRadius = self.frame.height / 2
                self.frame = CGRect(x: self.frame.midX - (self.frame.height / 2), y: self.frame.origin.y, width: self.frame.height, height: self.frame.height)
            }, completion: { (finished) in
                if finished == true {
                    spinner.startAnimating()
                    spinner.center = CGPoint(x: self.frame.width / 2 + 1, y: self.frame.width / 2 + 1)
                    UIView.animate(withDuration: 0.2, animations: {
                    spinner.alpha = 1.0
                   })
                }
            })
            self.isUserInteractionEnabled = false
        }else {
            self.isUserInteractionEnabled = true
            
            for subview in self.subviews {
                if subview.tag == 11{
                     subview.removeFromSuperview()
                }
            }
            
            UIView.animate(withDuration: 0.2, animations: { 
                self.layer.cornerRadius = 5.0
                self.frame = self.originalButtonSize!
                self.setTitle(message, for: .normal)
            })
            
        }
      
    }
    

}
