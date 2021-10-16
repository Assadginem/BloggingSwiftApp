//
//  TabBarViewController.swift
//  THOUGHTS
//
//  Created by Assad Ginem on 10/15/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewControllers()
    }
    

    private func setUpViewControllers() {
        let home = HomeViewController()
        home.title = "Home"
        let profile = ProfileViewController()
        profile.title = "Profile"
        
        home.navigationItem.largeTitleDisplayMode = .always
        profile.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: home)
        let nav2 = UINavigationController(rootViewController: profile)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag	: 1)
        nav1.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag    : 2)

        
        setViewControllers([nav1, nav2], animated: true)
    }

}
