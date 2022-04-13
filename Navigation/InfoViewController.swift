//
//  InfoViewController.swift
//  Navigation
//
//  Created by Artyom on 13.04.2022.
//

import UIKit
class InfoViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
      self.view.backgroundColor = .darkGray
      buttonTap()
  }
    func buttonTap () {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
            button.setTitle("Matrix", for: .normal)
        button.center = view.center
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
            button.addTarget(self, action: #selector(tap), for: .touchUpInside)
            view.addSubview(button)
        
    }
  
    
    
  @objc func tap() {
    let alertVC = UIAlertController(title: "Матрица", message: "Какую таблетку ты выберешь?", preferredStyle: .alert)
    let leftAction = UIAlertAction(title: "Красную", style: .cancel, handler: {(action:UIAlertAction!) in print("Red Pill")})
    let rightAction = UIAlertAction(title: "Синюю", style: .default, handler: {(action:UIAlertAction!) in print("Blue Pill")})
    alertVC.addAction(leftAction)
    alertVC.addAction(rightAction)
    self.present(alertVC, animated: true, completion: nil)
  }
    
}
