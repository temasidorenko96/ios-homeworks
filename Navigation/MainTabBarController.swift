//
//  MainTabBarController.swift
//  Navigation
//
//  Created by Artyom on 13.04.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }

    func setupTabBar() {
        let feedViewController = createNavController(vc: FeedViewController(), IteName: "Feed", ItemImage: "rectangle.and.pencil.and.ellipsis")
        let profileViewController = createNavController(vc: ProfileViewController(), IteName: "Profile", ItemImage: "pencil.circle")
        viewControllers = [feedViewController, profileViewController]
      
    }
    
  func  createNavController(vc:UIViewController, IteName:String, ItemImage: String) -> UINavigationController {
      let item = UITabBarItem(title: IteName, image: UIImage(systemName: ItemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
      item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
      let navController = UINavigationController(rootViewController: vc)
      navController.tabBarItem = item
        return navController
    }
}

