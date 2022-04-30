//
//  PostViewController.swift
//  Navigation
//
//  Created by Artyom on 13.04.2022.
//

import UIKit

class PostViewController: UIViewController {
  var titlePost: String = "Hello world!"
    
  override func viewDidLoad() {
    super.viewDidLoad()
      self.view.backgroundColor = .cyan
      self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tap))
    self.navigationItem.title = titlePost
  }
    
    
      @objc func tap() {
        let vcContr = InfoViewController()
        vcContr.modalPresentationStyle = .automatic
        self.present(vcContr, animated: true)
  }
    
}
