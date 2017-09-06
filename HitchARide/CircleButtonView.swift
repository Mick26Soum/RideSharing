//
//  CircleButtonView.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 7/15/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class CircleButtonView: UIView {

    @IBInspectable var circleButtonBorderColor: UIColor? {
        didSet{
            // Expose Interface Builder border properties to be set at runtime
            setUpCircleButtonView()
        }
    }
    
    override func awakeFromNib() {
        setUpCircleButtonView()
    }
    
    func setUpCircleButtonView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = circleButtonBorderColor?.cgColor
    }

}
