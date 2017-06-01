//
//  RMNavigationController.swift
//  SmartHomeI
//
//  Created by JianRongCao on 01/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit

class RMNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let dic:[String:NSObject] = [NSFontAttributeName:UIFont.systemFont(ofSize: 20.0),NSForegroundColorAttributeName:UIColor.white];
//        NSDictionary.init(dictionary: [NSFontAttributeName:UIFont.systemFont(ofSize: 20.0),NSForegroundColorAttributeName:UIColor.red]);
//        NSDictionary.init(dictionary: dic);
        self.navigationBar.tintColor = UIColor.init(colorLiteralRed: 0.14, green: 0.71, blue: 0.97, alpha: 1.0);
        self.navigationBar.barTintColor = UIColor.init(colorLiteralRed: 0.14, green: 0.71, blue: 0.97, alpha: 1.0);
        self.navigationBar.titleTextAttributes = dic;
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
