//
//  RMTabViewController.swift
//  RickAndMorty
//
//  Created by Tu Nguyen on 24/09/2024.
//

import UIKit

/// Controller to house tab and root tab controllers
class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
        let characterViewController = RMCharacterViewController()
        let locationViewController = RMLocationViewController()
        let episodeViewController = RMEpisodeViewController()
        let settingsViewController = RmSettingsViewController()
        
        let characterNavigationController = UINavigationController(rootViewController: characterViewController)
        characterNavigationController.navigationBar.prefersLargeTitles = true
        characterNavigationController.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        
        let locationNavigationController = UINavigationController(rootViewController: locationViewController)
        locationNavigationController.navigationBar.prefersLargeTitles = true
        locationNavigationController.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        
        let episodeNavigationController = UINavigationController(rootViewController: episodeViewController)
        episodeNavigationController.navigationBar.prefersLargeTitles = true
        episodeNavigationController.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        
        let settingsNavigationController = UINavigationController(rootViewController: settingsViewController)
        settingsNavigationController.navigationBar.prefersLargeTitles = true
        settingsNavigationController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        setViewControllers([
            characterNavigationController,
            locationNavigationController,
            episodeNavigationController,
            settingsNavigationController
        ], animated: true)
    }
}
