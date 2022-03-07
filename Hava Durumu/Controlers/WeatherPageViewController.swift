//
//  WeatherPageViewController.swift
//  Hava Durumu
//
//  Created by codeofday on 7.03.2022.
//
import UIKit
import CoreLocation

class WeatherPageViewController: UIPageViewController, CLLocationManagerDelegate {
    
    enum Appearance: Int {
        case daily
        case weekly
    }
    
    
    
    
    // MARK: - UI Elements
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    lazy var dailyViewController: DailyViewController = {
        return storyboard!.instantiateViewController(identifier: "DailyViewController")
    }()
    lazy var weeklyViewController: WeeklyViewController = {
        return storyboard!.instantiateViewController(identifier: "WeeklyViewController")
    }()
    var managedControllers: [UIViewController] {
        return [dailyViewController, weeklyViewController]
    }
    
    
    // MARK: - Properties
    
    let locationManager = CLLocationManager()
    var currentAppearance: Appearance = .daily
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager.delegate = self
        locationManager.requestLocation()
    
        updateCurrentController(animated: false)
    }
    
    // MARK: - Functions
    
    func updateCurrentController(animated: Bool) {
        switch currentAppearance {
        case .daily:
            setViewControllers([dailyViewController], direction: .reverse, animated: animated, completion: nil)
        case .weekly:
            setViewControllers([weeklyViewController], direction: .forward, animated: animated, completion: nil)
        }
    }
    
    // MARK: Actions
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        if let newAppearance = Appearance(rawValue: segmentedControl.selectedSegmentIndex) {
            currentAppearance = newAppearance
            updateCurrentController(animated: true)
        }
    }
    
}

