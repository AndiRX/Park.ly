//
//  ViewController.swift
//  Park.ly
//
//  Created by Petr on 02.11.17.
//  Copyright © 2017 Andi. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var parkBtn: RoundButton!
    
    var parkedCarAnnotation: ParkingSpot?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationAuthorizationStatus()

    }

    @IBAction func parkBtnWasPressed(_ sender: Any) {
   
    }
    
    func checkLocationAuthorizationStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
            LocationService.instance.locationManager.delegate = self
            LocationService.instance.locationManager.desiredAccuracy = kCLLocationAccuracyBest
            LocationService.instance.locationManager.startUpdatingLocation()
        } else {
            
            LocationService.instance.locationManager.requestWhenInUseAuthorization()
        }
    }

    
}

