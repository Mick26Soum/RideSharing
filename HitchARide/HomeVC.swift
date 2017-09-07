//
//  HomeVC.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 6/10/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit
import MapKit

class HomeVC: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var actionBtn: RoundedShadowButton!
    
    var delegate: CenterVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegate Set Up
        mapView.delegate = self
    }
    
    @IBAction func actionBtnWasPressed(_ sender: Any) {
        actionBtn.animateButton(shouldLoad: true, withMessage: nil)
    }

    @IBAction func menuButttonWasPressed(_ sender: Any) {
        delegate?.toggleLeftPanel()
    }

}


