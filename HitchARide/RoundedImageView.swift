//
//  RoundedImageView.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 7/13/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        roundedImageView()
    }
    
    func roundedImageView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }

}
