//
//  ViewController.swift
//  Where
//
//  Created by lanfeng on 16/11/15.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager: CLLocationManager!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBAction func myLocationButtonDidTouch(_ sender: AnyObject) {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
        
    }
   
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error) -> Void in
            if (error != nil) {
                self.locationLabel.text = "Reverse geocoder failed with error" + error!.localizedDescription
                return
            }
            
            if placemarks!.count > 0 {
                let pm = placemarks![0]
                self.displayLocationInfo(pm)
            } else {
                self.locationLabel.text = "Problem with the data received from geocoder"
            }
        })
    }
    
    func displayLocationInfo(_ placemark: CLPlacemark?) {
        if let containsPlacemark = placemark {
            locationManager.stopUpdatingLocation()
            let locality: String = (containsPlacemark.locality != nil) ? containsPlacemark.locality! : ""
            let postalCode: String = (containsPlacemark.postalCode != nil) ? containsPlacemark.postalCode! : ""
            let administrativeArea: String = (containsPlacemark.administrativeArea != nil) ? containsPlacemark.administrativeArea! : ""
            let country: String = (containsPlacemark.country != nil) ? containsPlacemark.country! : ""
            
            self.locationLabel.text = locality + postalCode + administrativeArea + country
            
            
            
        }
    }
    
}
