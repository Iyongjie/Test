//
//  ViewController.swift
//  Sort
//
//  Created by 李永杰 on 2019/3/11.
//  Copyright © 2019 Y了个J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func jump(_ sender: UIButton) {
        let tag = sender.tag
        
        let unitVc = UnitViewController()
        let uiVc = UITestViewController()
        
        navigationController?.pushViewController(tag == 101 ? unitVc: uiVc, animated: true)
    }
    
}

