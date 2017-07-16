//
//  ViewController.swift
//  HitchARide
//
//  Created by MICK SOUMPHONPHAKDY on 6/10/17.
//  Copyright © 2017 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var actionBtn: RoundedShadowButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegate Set Up
        mapView.delegate = self
    }
    
    @IBAction func actionBtnWasPressed(_ sender: Any) {
        actionBtn.animateButton(shouldLoad: true, withMessage: nil)
    }


}


