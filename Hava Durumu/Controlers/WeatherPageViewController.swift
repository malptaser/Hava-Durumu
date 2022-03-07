//
//  WeatherPageViewController.swift
//  Hava Durumu
//
//  Created by codeofday on 7.03.2022.
//
import UIKit
import CoreLocation

class WeatherPageViewController: UIPageViewController {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    
    // MARK: - Properties
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    
    // MARK: Actions
    @IBAction func segmentedControl(_ sender: Any) {
    }
}

