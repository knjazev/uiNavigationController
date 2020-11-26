//
//  RedViewController.swift
//  No_Storyboard_New-Project
//
//  Created by Князев Дмитрий on 11/26/20.
//  Copyright © 2020 Dmitry Kniazev. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed

//        let tabBar = createTabBarController()
//        navigationController?.pushViewController(tabBar, animated: true)
//
    }
    
    
    func createRedNavigationController() -> UINavigationController {
               
               let redViewController = RedViewController()
               redViewController.title = "Red"
               redViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 0)
        
    
               
               return UINavigationController(rootViewController: redViewController)
               
               
           }
           
        func createBlueNavigationController() -> UINavigationController {
                  
                  let blueViewController = BlueViewController()
                  blueViewController.title = "Blue"
           blueViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
                  
                  return UINavigationController(rootViewController: blueViewController)
                  
                  
              }
           
           func createTabBarController() -> UITabBarController {
               
               let tabBar = UITabBarController()
               UITabBar.appearance().tintColor = .systemBlue
               tabBar.viewControllers = [createRedNavigationController(), createBlueNavigationController()]
               return tabBar
               
           }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
