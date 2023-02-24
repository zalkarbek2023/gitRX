//
//  TabBarViewController.swift
//  CocktailsHW
//
//  Created by zalkarbek on 22/2/23.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let profileVC = ProfileViewController()
        let profileVCTabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person.circle"), selectedImage: UIImage(systemName: "person.circle"))
        
        profileVC.tabBarItem = profileVCTabBarItem
        
        let mainVC = MainViewController()
        let mainVCTabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "house.circle"), selectedImage: UIImage(systemName: "house.circle"))
        
        mainVC.tabBarItem = mainVCTabBarItem
        
        let korzinaVC = KorzinaViewController()
        let korzinaVCTabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "cart.circle"), selectedImage: UIImage(systemName: "cart.circle"))
        
        korzinaVC.tabBarItem = korzinaVCTabBarItem
        
        self.viewControllers = [profileVC, mainVC, korzinaVC]
    }
    

}

