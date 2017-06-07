//
//  RMViewController.swift
//  SmartHomeI
//
//  Created by JianRongCao on 01/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit
import Alamofire
import DGElasticPullToRefresh
import FillableLoaders
import Kingfisher
import MBProgressHUD
import ReachabilitySwift
import SnapKit
import SQLite
import StarWars
import SwiftyJSON


class RMViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white;
        self.automaticallyAdjustsScrollViewInsets = false;
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent;
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
