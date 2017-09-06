//
//  RoundedShadowView.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 7/15/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class RoundedShadowView: UIView {
    
    override func awakeFromNib() {
        setUpRoundedShadowView()
    }

    func setUpRoundedShadowView() {
        self.layer.cornerRadius = 5
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
    }

}
