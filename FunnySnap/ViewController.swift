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
        self.setupCustomDashboardView()
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
    
    // MARK: Custom Dashboard
    func setupCustomDashboardView() {
        let superview = self.view
        let dashboardView = UIView()
        let miniView1 = UIView()
        let miniView2 = UIView()
        let bigView = UIView()
        let miniLabel = UILabel()
        let dashboarLabel = UILabel()
        
        superview.addSubview(dashboardView)
        dashboardView.addSubview(miniView1)
        dashboardView.addSubview(miniView2)
        dashboardView.addSubview(bigView)
        miniView1.addSubview(miniLabel)
        bigView.addSubview(dashboarLabel)
        
        dashboardView.backgroundColor = UIColor(red:0.38, green:0.85, blue:0.88, alpha:1)
        miniView1.backgroundColor = UIColor.whiteColor()
        miniView2.backgroundColor = UIColor.lightGrayColor()
        bigView.backgroundColor = UIColor.blackColor()
        
        miniLabel.textColor = UIColor.whiteColor()
        miniLabel.text = "MiniBox"
        miniLabel.backgroundColor = UIColor.blackColor()
        miniLabel.textAlignment = .Center
        
        dashboarLabel.textColor = UIColor.whiteColor()
        dashboarLabel.text = "Dashboard"
        
        dashboardView.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(superview).multipliedBy(0.9)
            make.height.equalTo(256)
            make.top.equalTo(superview).offset(84)
            make.centerX.equalTo(superview)
        }
        
        miniView1.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(dashboardView).offset(24)
            make.top.equalTo(dashboardView).offset(20)
            make.width.equalTo(dashboardView).dividedBy(2.5)
            make.height.equalTo(dashboardView).multipliedBy(0.4)
        }
        
        miniView2.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(miniView1.snp_right).offset(20)
            make.top.equalTo(dashboardView).offset(20)
            make.size.equalTo(miniView1)
        }
        
        bigView.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(dashboardView).offset(24)
            make.top.equalTo(miniView1.snp_bottom).offset(20)
            make.right.equalTo(dashboardView).offset(-24)
            make.bottom.equalTo(dashboardView).offset(-20)
        }
        
        miniLabel.snp_makeConstraints { (make) -> Void in
            make.edges.equalTo(miniView1).inset(UIEdgeInsetsMake(5, 5, 5, 5))
        }
        
        dashboarLabel.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(bigView)
        }
        
    }

}

