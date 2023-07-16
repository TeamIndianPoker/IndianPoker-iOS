//
//  TabBarController.swift
//  IndianPoker
//
//  Created by 장석우 on 2023/07/16.
//

import UIKit

final class TabBarController: UITabBarController {
    
    //MARK: - Properties
    
    //MARK: - UI Components
    
    let homeVC = HomeViewController()
    let pokerVC = PokerViewController()
    
    lazy var homeNVC = UINavigationController(rootViewController: homeVC)
    lazy var pokerNVC = UINavigationController(rootViewController: pokerVC)
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBar()
        setNavigationController()
        setTabViewController()
    }
    
    //MARK: - Custom Method
    
    private func setTabBar(){
        tabBar.isTranslucent = false
    }
    
    private func setNavigationController() {
        homeVC.title = "홈"
        pokerVC.title = "포커"
        
        homeNVC.navigationBar.prefersLargeTitles = true
        pokerNVC.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        homeNVC.navigationBar.standardAppearance = appearance
        homeNVC.navigationBar.scrollEdgeAppearance = appearance
        pokerNVC.navigationBar.standardAppearance = appearance
        pokerNVC.navigationBar.scrollEdgeAppearance = appearance
    }
    
    private func setTabViewController(){
        
        homeNVC.tabBarItem = UITabBarItem(title: "홈",
                                          image: UIImage(systemName: "house"),
                                          selectedImage: UIImage(systemName: "house.fill"))
        
        pokerNVC.tabBarItem = UITabBarItem(title: "포커",
                                           image: UIImage(systemName: "gamecontroller"),
                                           selectedImage: UIImage(systemName: "gamecontroller.fill"))
        
        viewControllers = [homeNVC, pokerNVC]
    }
}




