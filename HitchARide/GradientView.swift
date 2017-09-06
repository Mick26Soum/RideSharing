//
//  GradientView.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 7/9/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class GradientView: UIView {

    let gradient = CAGradientLayer()
    
    override func awakeFromNib() {
        setUpGradient()
    }
    
    override func layoutSubviews() {
        // Gradient frames is not automatically set for subviews explicitly
        // setting frames in layoutSubviews is required
        // Setting frames in the setUpGradient method will not work
        gradient.frame = self.bounds
    }

    func setUpGradient() {
//        gradient.frame = self.bounds  // not required here as this will not work
        gradient.colors = [UIColor.white.cgColor, UIColor.init(white: 1.0, alpha: 0.0).cgColor]
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 0.0, y: 1)
        gradient.locations = [0.8, 1.0]
        self.layer.addSublayer(gradient)
    }
    
}
