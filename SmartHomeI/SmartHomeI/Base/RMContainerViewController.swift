//
//  RMContainerViewController.swift
//  SmartHomeI
//
//  Created by JianRongCao on 01/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit

class RMContainerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let home = HomeViewController();
        let homeNavi = RMNavigationController.init(rootViewController: home);
        home.title = "首页";
        homeNavi.tabBarItem.title = "首页";
        homeNavi.tabBarItem.image = UIImage.init(named: "tab_icon_home");
        homeNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_icon_home_sel");
        
        let community = HomeViewController();
        let communityNavi = RMNavigationController.init(rootViewController: community);
        community.title = "社区";
        communityNavi.tabBarItem.title = "社区";
        communityNavi.tabBarItem.image = UIImage.init(named: "tab_icon_community");
        communityNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_icon_community_sel");
        
        let mall = HomeViewController();
        let mallNavi = RMNavigationController.init(rootViewController: mall);
        mall.title = "商城";
        mallNavi.tabBarItem.title = "商城";
        mallNavi.tabBarItem.image = UIImage.init(named: "tab_icon_mall");
        mallNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_icon_mall_sel");
        
        let me = HomeViewController();
        let meNavi = RMNavigationController.init(rootViewController: me);
        me.title = "我的";
        meNavi.tabBarItem.title = "我的";
        meNavi.tabBarItem.image = UIImage.init(named: "tab_icon_me");
        meNavi.tabBarItem.selectedImage = UIImage.init(named: "tab_icon_me_sel");
        
        self.tabBar.tintColor = UIColor.init(colorLiteralRed: 0.14, green: 0.71, blue: 0.97, alpha: 1.0);
        self.viewControllers = [homeNavi,communityNavi,mallNavi,meNavi];
        
        print(home.goHome(address: "江苏省"));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
