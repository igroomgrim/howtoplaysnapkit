//
//  ViewController.swift
//  FunnySnap
//
//  Created by Anak Mirasing on 1/31/2559 BE.
//  Copyright © 2559 iGROOMGRiM. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.38, green:0.75, blue:0.88, alpha:1.0)
        
        self.setupBottomRightButton()
        self.setupCustomNavBar()
    }
    
    // MARK: Setup UI
    func setupBottomRightButton() {
        let superview = self.view
        let button = UIButton()
        button.layer.cornerRadius = 33
        button.setTitle("+", forState: .Normal)
        button.backgroundColor = UIColor.blackColor()
        superview.addSubview(button)
        
        button.snp_makeConstraints { (make) -> Void in
            
            make.width.equalTo(66)
            make.height.equalTo(66)
            make.bottom.equalTo(superview.snp_bottom).offset(-20)
            make.right.equalTo(superview.snp_right).offset(-20)
        }
    }

    // MARK: Navbar Example
    func setupCustomNavBar() {
        let superview = self.view
        let navbar = UIView()
        superview.addSubview(navbar)
        navbar.backgroundColor = UIColor(red:0.38, green:0.85, blue:0.88, alpha:1)
        navbar.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(64)
            make.width.equalTo(superview)
        }
        
        let titleLabel = UILabel()
        navbar.addSubview(titleLabel)
        titleLabel.text = "FunnySnap"
        titleLabel.textColor = UIColor.blackColor()
        titleLabel.sizeToFit()
        titleLabel.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(navbar)
        }
    }

}

