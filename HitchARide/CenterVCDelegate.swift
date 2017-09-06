//
//  CenterVCDelegate.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 7/27/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    func animateLeftPanel(shouldExpand: Bool)
}
