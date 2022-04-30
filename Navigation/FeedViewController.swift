//
//  FeedViewController.swift
//  Navigation
//
//  Created by Artyom on 13.04.2022.
//

import UIKit

class FeedViewController: UIViewController {

    let post = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Feed"
        button()
    }
    
    func button() {
        
        let button = UIButton(frame: CGRect(x: 100, y: 50, width: 200, height: 50))
        view.addSubview(button)
        button.setTitle("Post", for: .normal)
        button.backgroundColor = .systemRed
        button.center = view.center
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(onClick), for:.touchUpInside)
    }

   @objc func onClick() {
       let postViewControoler = PostViewController()
       navigationController?.pushViewController(postViewControoler, animated: true)
    }
 
}
