//
//  UITestViewController.swift
//  Sort
//
//  Created by 李永杰 on 2019/3/23.
//  Copyright © 2019 Y了个J. All rights reserved.
//

import UIKit

class UITestViewController: UIViewController {

    lazy var inputTextField: UITextField = {
        let input = UITextField(frame: CGRect(x: 30, y: 100, width: self.view.frame.size.width - 60, height: 50))
        input.placeholder = "请输入小于6位的字符"
        input.textColor = .black
        return input
    }()
    
    lazy var vertifyButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 30, y: 300, width: self.view.frame.size.width - 60, height: 50))
        button.backgroundColor = .blue
        button.setTitle("验证", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(vertifyAction), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(inputTextField)
        view.addSubview(vertifyButton)
    }
    

    @objc func vertifyAction () {
        let count = inputTextField.text?.count
        if count! <= 6 {
            print("正确")
        } else {
            print("请输入0～6位的字符")
        }
    }
    

}
