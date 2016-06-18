//
//  ViewController.swift
//  Where Am I
//
//  Created by George Gogarten on 6/18/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var manager: CLLocationManager!
    
    
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var altitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        manager = CLLocationManager()
        
        manager.delegate = self
        
        manager.desiredAccuracy - kCLLocationAccuracyBest
        
        manager.requestWhenInUseAuthorization()
        
        manager.startUpdatingLocation()
        
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print(locations)
        
        var userLocation:CLLocation = locations[0]
        
            self.latitudeLabel.text = "\(userLocation.coordinate.latitude)"
        
            self.longitudeLabel.text = "\(userLocation.coordinate.longitude)"
        
            self.courseLabel.text = "\(userLocation.course)"
        
            self.speedLabel.text = "\(userLocation.speed)"
        
            self.altitudeLabel.text = "\(userLocation.altitude)"
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

