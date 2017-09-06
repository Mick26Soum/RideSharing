//
//  ContainerVC.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 7/27/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit
import  QuartzCore

enum SlideOutState {
    case collapsed
    case leftPanelExpanded
}

enum ShowWhichVC {
    case HomeVC
}

var showVC: ShowWhichVC = .HomeVC
var leftVC: LeftSidePanelVC!
var currentState: SlideOutState = .collapsed

class ContainerVC: UIViewController {
    
    var homeVC: HomeVC!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func initCenterVC(screen: ShowWhichVC) {
        var presentingViewController: UIViewController
        
        showVC = screen
        
        if homeVC == nil {
            homeVC = UIStoryboard.homeVC()
            homeVC.delegate = self
        }
    }
    
  
}

extension ContainerVC: CenterVCDelegate {
    func toggleLeftPanel() {
        let notAlreadyExpanded = (currentState != .leftPanelExpanded)
        
        if notAlreadyExpanded {
            addLeftPanelViewController()
        }
        animateLeftPanel(shouldExpand: notAlreadyExpanded)
    }
    
    func addLeftPanelViewController() {
        if leftVC == nil {
            leftVC = UIStoryboard.leftViewController()
            addChildSidePanelViewController(leftVC!)
        }
    }
    
    func addChildSidePanelViewController(_ sidePanelViewController: LeftSidePanelVC) {
        view.insertSubview(sidePanelViewController.view, at: 0)
        addChildViewController(sidePanelViewController)
        sidePanelViewController.didMove(toParentViewController: self)
    }
    
    func animateLeftPanel(shouldExpand: Bool) {
        <#code#>
    }
}

private extension UIStoryboard {
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard.init(name: "Main", bundle: Bundle.main)
    }
    
    class func leftViewController() -> LeftSidePanelVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: "LeftSidePanelVC") as? LeftSidePanelVC
    }
    
    class func homeVC() -> HomeVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
    }
    
}



